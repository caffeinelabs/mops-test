import Nat8 "mo:core/Nat8";
import {bindCompare} "./utils";

module {
	public class ExpectNat8(val : Nat8) {
		public let equal = bindCompare(val, Nat8.equal, Nat8.toText, "");
		public let notEqual = bindCompare(val, Nat8.notEqual, Nat8.toText, "!=");
		public let less = bindCompare(val, Nat8.less, Nat8.toText, "<");
		public let lessOrEqual = bindCompare(val, Nat8.lessOrEqual, Nat8.toText, "<=");
		public let greater = bindCompare(val, Nat8.greater, Nat8.toText, ">");
		public let greaterOrEqual = bindCompare(val, Nat8.greaterOrEqual, Nat8.toText, ">=");
	};
};