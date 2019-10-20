import Foundation

extension ToggleButton {
	/*
    * Turns of other buttons than target
    */
	static func toggleGroup(toggleButton: ToggleButton, parent: UIView) {
		parent.subviews.filter { $0 != toggleButton }.forEach { ($0 as? ToggleButton)?.toggle = false }
		toggleButton.toggle = true
	}
}
