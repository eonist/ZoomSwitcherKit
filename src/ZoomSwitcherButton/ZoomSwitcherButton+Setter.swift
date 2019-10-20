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
//      Swift.print("setToggle")
      super.toggle = toggle
      setStyle(style: toggle ? ZoomSwitcherButton.on : ZoomSwitcherButton.off)
   }
   /**
    * Styles the button
    */
   open func setStyle(style: Style) {
//      Swift.print("setStyle")
      with(self) {
         $0.backgroundColor = style.backgroundColor
         $0.setTitleColor(style.textColor, for: .normal)
      }
   }
}
