import Text "mo:core/Text";

module {
	public func formatTestName(text : Text) : Text {
		Text.flatMap(text, func(c : Char) : Text {
			if (c == '\n') {
				"\\n"
			}
			else {
				Text.fromChar(c);
			}
		});
	};
};