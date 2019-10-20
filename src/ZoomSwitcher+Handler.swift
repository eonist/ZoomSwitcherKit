import Foundation
/**
 * Event
 */
extension ZoomSwitcher {
	/**
    * When user taps any of the togglebuttons (makes it active and the others inactive)
    */
   @objc open func onButtonToggle(_ sender: ToggleButtonKind, _ toggle: Bool) {
      guard let toggleButton = sender as? ToggleButton else { return }
		ToggleButton.toggleGroup(toggleButton: toggleButton, parent: self)
	}
}
