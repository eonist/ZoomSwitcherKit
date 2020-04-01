import Foundation
/**
 * CallBack related
 */
extension ToggleBtnKind {
   public static var defaultOnToggle: OnToggle {
      let defaultOnToggle: OnToggle = { sender, toggle in
         Swift.print("Default onToggle: for sender: \(sender) value: \(toggle) ")
      }
      return defaultOnToggle
   }
}
