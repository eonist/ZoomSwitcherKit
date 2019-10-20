import Foundation
/**
 * Const
 */
extension ZoomSwitcher {
   public static var defaultOnSwitch: OnSwitch = { focalType in print("FocalType: \(focalType)")}
   public static let style: Style = (backgroundColor: .lightGray, buttonStyle: ZoomSwitcherButton.off)
   /**
    * Returns size of zoomswitcher
    */
   public static func getSize(backCamType: BackCameraType) -> CGSize {
      let width = backCamType.width + ZoomSwitcherButton.margin + ZoomSwitcherButton.margin
      let height = ZoomSwitcherButton.buttonWidth + ZoomSwitcherButton.margin + ZoomSwitcherButton.margin
      return .init(width: width, height: height)
   }
}
