import Blob "mo:core/Blob";
import {bindCompare; fail} "./utils";

module {
	public class ExpectBlob(blob : Blob) {
		func show(v : Blob) : Text = "blob \"" # debug_show(v) # "\"";

		public let equal = bindCompare(blob, Blob.equal, show, "");
		public let notEqual = bindCompare(blob, Blob.notEqual, show, "!=");
		public let less = bindCompare(blob, Blob.less, show, "<");
		public let lessOrEqual = bindCompare(blob, Blob.lessOrEqual, show, "<=");
		public let greater = bindCompare(blob, Blob.greater, show, ">");
		public let greaterOrEqual = bindCompare(blob, Blob.greaterOrEqual, show, ">=");

		public func size(n : Nat) {
			if (blob.size() != n) {
				fail(
					"blob size " # debug_show(blob.size()),
					"blob size",
					debug_show(n)
				);
			};
		};
	};
};