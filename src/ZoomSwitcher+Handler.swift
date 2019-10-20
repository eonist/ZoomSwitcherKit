import Foundation
/**
 * Event
 */
extension ZoomSwitcher {
	/**
    * When user taps any of the togglebuttons (makes it active and the others inactive)
    */
   @objc open func onButtonToggle(_ sender: ToggleButtonKind, _ toggle: Bool) {
//      Swift.print("onButtonToggle")
      guard let toggleButton = sender as? ToggleButton else { return }
		ToggleButton.toggleGroup(toggleButton: toggleButton, parent: self)
      let focalTypes = self.backCameraType.focalTypes
      guard let idx: Int = self.subviews.firstIndex(of: toggleButton) else { fatalError("Index not found") }
      let focalType = focalTypes[idx]
      onSwitch(focalType)
	}
}
