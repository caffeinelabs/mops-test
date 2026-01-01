import Char_ "mo:core/Char";
import Text_ "mo:core/Text";

module {
	public func formatTestName(text : Text) : Text {
		text.flatMap(func(c : Char) : Text {
			if (c == '\n') {
				"\\n"
			}
			else {
				c.toText();
			}
		});
	};
};