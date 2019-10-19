import Foundation
/**
 * ZoomSwitcher
 */
class ZoomSwitcher {
   public let backCameraType: BackCameraType
	public var onSwitch: OnSwitch
	/**
    * ## Examples:
	 * let size = ZoomSwitcher.getSize(backCamType: BackCameraType.backCameraType)
	 * let zoomSwitcher: ZoomSwitcher = .init(frame: .init(origin: .zero, size: size), backCameraType: .backCameraType)
	 * addSubview(zoomSwitcher)
	 * zoomSwitcher.anchorAndSize(to: self, size: size)
    */
   init(frame: CGRect, backCameraType: BackCameraType, onSwitch: OnSwitch = defaultOnSwitch) {
      self.backCameraType = backCameraType
		self onSwitch = onSwitch
      super.init(frame: frame)
		styleBackground()
   }
}
extension ZoomSwitcher {
	/**
    * Style the background
    */
	func styleBackground() {
		with(self) {
			$0.backgroundColor = .gray
			$0.layer.cornerRadius = frame.height / 2
		}
	}
}

// also make a callback on switch, and a way to set current toggle from external source
// open the classes etc.
// add it to a project
// test it
// add it to hybridcam
