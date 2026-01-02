import Principal "mo:core/Principal";
import {bindCompare; fail} "./utils";

module {
	public class ExpectPrincipal(val : Principal) {
		func show(v : Principal) : Text = "principal \"" # Principal.toText(v) # "\"";

		public let equal = bindCompare(val, Principal.equal, show, "");
		public let notEqual = bindCompare(val, Principal.notEqual, show, "!=");
		public let less = bindCompare(val, Principal.less, show, "<");
		public let lessOrEqual = bindCompare(val, Principal.lessOrEqual, show, "<=");
		public let greater = bindCompare(val, Principal.greater, show, ">");
		public let greaterOrEqual = bindCompare(val, Principal.greaterOrEqual, show, ">=");
		public func isAnonymous() {
			if (not Principal.isAnonymous(val)) {
				fail(show(val), "", show(Principal.fromBlob("\04")));
			};
		};
		public func notAnonymous() {
			if (Principal.isAnonymous(val)) {
				fail(show(val), "!=", show(Principal.fromBlob("\04")));
			};
		};
	};
};