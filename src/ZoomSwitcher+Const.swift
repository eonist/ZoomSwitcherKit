import Foundation
/**
 * Const
 */
extension ZoomSwitcher {
   public static var defaultOnSwitch: OnSwitch = { focalType in print("FocalType: \(focalType)")}
   public static let margin: CGFloat = 6
   public static let style: Style = (backgroundColor: .lightGray, buttonStyle: ZoomSwitcherButton.style)
   /**
    * Returns size of zoomswitcher
    */
   public static func getSize(backCamType: BackCameraType) -> CGSize {
      let width = BackCameraType.backCameraType.width + margin + margin
      let height = ZoomSwitcherButton.buttonWidth + margin + margin
      return .init(width: width, height: height)
   }
}
