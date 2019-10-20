import Foundation
/**
 * CallBack related
 */
extension ToggleButtonKind {
   public static var defaultOnToggle: OnToggle {
      return { sender, toggle in Swift.print("Default onToggle: for sender: \(sender) value: \(toggle) ") }
   }
}
