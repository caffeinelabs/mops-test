import Nat16 "mo:core/Nat16";
import {bindCompare} "./utils";

module {
	public class ExpectNat16(val : Nat16) {
		public let equal = bindCompare(val, Nat16.equal, Nat16.toText, "");
		public let notEqual = bindCompare(val, Nat16.notEqual, Nat16.toText, "!=");
		public let less = bindCompare(val, Nat16.less, Nat16.toText, "<");
		public let lessOrEqual = bindCompare(val, Nat16.lessOrEqual, Nat16.toText, "<=");
		public let greater = bindCompare(val, Nat16.greater, Nat16.toText, ">");
		public let greaterOrEqual = bindCompare(val, Nat16.greaterOrEqual, Nat16.toText, ">=");
	};
};