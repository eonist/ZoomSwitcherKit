import Foundation
import With
/**
 * Setter
 */
extension ZoomSwitcherButton {
   /**
    * Toggle beteen on and off state
    */
   @objc open func setToggle(toggle: Bool) {
      self.toggle = toggle
      setStyle(style: toggle ? ZoomSwitcherButton.on : ZoomSwitcherButton.off)
   }
   /**
    * Styles the button
    */
   open func setStyle(style: Style) {
      with(self) {
         $0.backgroundColor = style.backgroundColor
         $0.setTitleColor(style.textColor, for: .normal)
      }
   }
}
