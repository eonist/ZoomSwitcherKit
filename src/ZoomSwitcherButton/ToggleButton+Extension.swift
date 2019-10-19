import Foundation

extension ToggleButton {
	/*
    * Turns of other buttons than target
    */
	static func toggleGroup(toggleButton: ToggleButton, parent: UIView) {
		parent.subviews.filter { $0 != sender }.forEach { $0.toggle = false }
		toggleButton.toggle = true
	}
}