import Int "mo:core/Int";
import {bindCompare} "./utils";

module {
	public class ExpectInt(val : Int) {
		public let equal = bindCompare(val, Int.equal, Int.toText, "");
		public let notEqual = bindCompare(val, Int.notEqual, Int.toText, "!=");
		public let less = bindCompare(val, Int.less, Int.toText, "<");
		public let lessOrEqual = bindCompare(val, Int.lessOrEqual, Int.toText, "<=");
		public let greater = bindCompare(val, Int.greater, Int.toText, ">");
		public let greaterOrEqual = bindCompare(val, Int.greaterOrEqual, Int.toText, ">=");
	};
};