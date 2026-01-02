import Nat "mo:core/Nat";
import {bindCompare} "./utils";

module {
	public class ExpectNat(val : Nat) {
		public let equal = bindCompare(val, Nat.equal, Nat.toText, "");
		public let notEqual = bindCompare(val, Nat.notEqual, Nat.toText, "!=");
		public let less = bindCompare(val, Nat.less, Nat.toText, "<");
		public let lessOrEqual = bindCompare(val, Nat.lessOrEqual, Nat.toText, "<=");
		public let greater = bindCompare(val, Nat.greater, Nat.toText, ">");
		public let greaterOrEqual = bindCompare(val, Nat.greaterOrEqual, Nat.toText, ">=");
	};
};