import Bool_ "mo:core/Bool";
import {fail} "./utils";

module {
	public class ExpectBool(a : Bool) {
		public func isTrue() {
			if (a != true) {
				fail(a.toText(), "", true.toText());
			};
		};
		public func isFalse() {
			if (a != false) {
				fail(a.toText(), "", false.toText());
			};
		};
		public func equal(b : Bool) {
			if (a != b) {
				fail(a.toText(), "", b.toText());
			};
		};
		public func notEqual(b : Bool) {
			if (a == b) {
				fail(a.toText(), "to be !=", b.toText());
			};
		};
	};
};