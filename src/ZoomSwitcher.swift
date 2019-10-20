import Foundation
/**
 * ZoomSwitcher
 */
open class ZoomSwitcher: UIView {
   public let backCameraType: BackCameraType
   public var onSwitch: OnSwitch
   /**
    * ## Examples:
    * let size = ZoomSwitcher.getSize(backCamType: BackCameraType.backCameraType)
    * let zoomSwitcher: ZoomSwitcher = .init(frame: .init(origin: .zero, size: size), backCameraType: .backCameraType)
    * addSubview(zoomSwitcher)
    * zoomSwitcher.anchorAndSize(to: self, size: size)
    */
   public init(frame: CGRect, backCameraType: BackCameraType, onSwitch: @escaping OnSwitch = defaultOnSwitch) {
      self.backCameraType = backCameraType
      self.onSwitch = onSwitch
      super.init(frame: frame)
      styleBackground()
   }
   /**
    * Boilerplate
    */
   required public init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
