import Int32 "mo:core/Int32";
import {bindCompare} "./utils";

module {
	public class ExpectInt32(val : Int32) {
		public let equal = bindCompare(val, Int32.equal, Int32.toText, "");
		public let notEqual = bindCompare(val, Int32.notEqual, Int32.toText, "!=");
		public let less = bindCompare(val, Int32.less, Int32.toText, "<");
		public let lessOrEqual = bindCompare(val, Int32.lessOrEqual, Int32.toText, "<=");
		public let greater = bindCompare(val, Int32.greater, Int32.toText, ">");
		public let greaterOrEqual = bindCompare(val, Int32.greaterOrEqual, Int32.toText, ">=");
	};
};