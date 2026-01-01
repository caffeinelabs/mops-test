import Int8 "mo:core/Int8";
import {bindCompare} "./utils";

module {
	public class ExpectInt8(val : Int8) {
		public let equal = bindCompare(val, Int8.equal, Int8.toText, "");
		public let notEqual = bindCompare(val, Int8.notEqual, Int8.toText, "!=");
		public let less = bindCompare(val, Int8.less, Int8.toText, "<");
		public let lessOrEqual = bindCompare(val, Int8.lessOrEqual, Int8.toText, "<=");
		public let greater = bindCompare(val, Int8.greater, Int8.toText, ">");
		public let greaterOrEqual = bindCompare(val, Int8.greaterOrEqual, Int8.toText, ">=");
	};
};