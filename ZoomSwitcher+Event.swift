import Foundation
/**
 * Event
 */
extension ZoomSwitcher {
	/**
    * When user taps any of the togglebuttons (makes it active and the others inactive)
    */
	func onButtonTouched(toggleButton: ToggleButton) {
		ToggleButton.toggleGroup(toggleButton: toggleButton, parent: self)
	}
}
