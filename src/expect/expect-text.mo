import Text "mo:core/Text";
import {bindCompare} "./utils";

module {
	public class ExpectText(val : Text) {
		func show(t : Text) : Text = "\"" # t # "\"";

		public let equal = bindCompare(val, Text.equal, show, "");
		public let notEqual = bindCompare(val, Text.notEqual, show, "!=");
		public let less = bindCompare(val, Text.less, show, "<");
		public let lessOrEqual = bindCompare(val, Text.lessOrEqual, show, "<=");
		public let greater = bindCompare(val, Text.greater, show, ">");
		public let greaterOrEqual = bindCompare(val, Text.greaterOrEqual, show, ">=");
		public let contains = bindCompare(val, func(a : Text, b) = Text.contains(a, #text b), show, "to contain");
		public let startsWith = bindCompare(val, func(a : Text, b) = Text.startsWith(a, #text b), show, "to start with");
		public let endsWith = bindCompare(val, func(a : Text, b) = Text.endsWith(a, #text b), show, "to end with");
	};
};