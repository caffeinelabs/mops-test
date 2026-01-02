import Nat64 "mo:core/Nat64";
import {bindCompare} "./utils";

module {
	public class ExpectNat64(val : Nat64) {
		public let equal = bindCompare(val, Nat64.equal, Nat64.toText, "");
		public let notEqual = bindCompare(val, Nat64.notEqual, Nat64.toText, "!=");
		public let less = bindCompare(val, Nat64.less, Nat64.toText, "<");
		public let lessOrEqual = bindCompare(val, Nat64.lessOrEqual, Nat64.toText, "<=");
		public let greater = bindCompare(val, Nat64.greater, Nat64.toText, ">");
		public let greaterOrEqual = bindCompare(val, Nat64.greaterOrEqual, Nat64.toText, ">=");
	};
};