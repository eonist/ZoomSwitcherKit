import Foundation

extension ToggleButton {
	/*
    * Turns of other buttons than target
    */
	static func toggleGroup(toggleButton: ToggleButton, parent: UIView) {
//      Swift.print("toggleGroup")
      parent.subviews.filter { $0 != toggleButton }.forEach { /*Swift.print("unToggle: \($0)"); */($0 as? ToggleButton)?.toggle = false }
		toggleButton.toggle = true
	}
}
