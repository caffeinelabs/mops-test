import Char "mo:core/Char";
import {bindCompare} "./utils";

module {
	public class ExpectChar(val : Char) {
		func show(c : Char) : Text = "'" # Char.toText(c) # "'";

		public let equal = bindCompare(val, Char.equal, show, "");
		public let notEqual = bindCompare(val, Char.notEqual, show, "!=");
		public let less = bindCompare(val, Char.less, show, "<");
		public let lessOrEqual = bindCompare(val, Char.lessOrEqual, show, "<=");
		public let greater = bindCompare(val, Char.greater, show, ">");
		public let greaterOrEqual = bindCompare(val, Char.greaterOrEqual, show, ">=");
	};
};