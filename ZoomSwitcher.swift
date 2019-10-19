import Foundation
/**
 * ZoomSwitcher
 */
class ZoomSwitcher {
   public let backCameraType: BackCameraType
	/**
    * ## Example
	 * let zoomSwitcher: ZoomSwitcher = .init(backCameraType: .backCameraType)
	 * addSubview(zoomSwitcher)
	 * zoomSwitcher.anchorAndSize(to: self, width: zoomSwitcher.backCameraType, height: ZoomSwitcher.height)
    */
   init(backCameraType: BackCameraType) {
      self.backCameraType = backCameraType
		let componentSize: CGSize = .init(width: backCameraType.componentWidth, buttonWidth)
      let frame: CGRect = .init(origin: .zero, size: componentSize)
      super.init(frame: frame)
   }
   // if single camera
      // only make 1 button
   // if dual camera
      // make two buttons
   // if triple camera
      // make three buttons
}
