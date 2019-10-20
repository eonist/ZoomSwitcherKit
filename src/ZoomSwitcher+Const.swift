import Foundation
/**
 * Const
 */
extension ZoomSwitcher {
   public static var defaultOnSwitch: OnSwitch = { focalType in print("FocalType: \(focalType)") }
   public static let style: Style = (backgroundColor: .lightGray, buttonStyle: ZoomSwitcherButton.off)
}
