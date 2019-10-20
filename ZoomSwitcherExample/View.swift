import UIKit
import ZoomSwitcherKit

class View: UIView {
   lazy var zoomSwitcher: ZoomSwitcher = createZoomSwitcher()
   override init(frame: CGRect) {
      super.init(frame: frame)
      Swift.print("View.init()")
      _ zoomSwitcher
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
/**
 * Create
 */
extension View {
   /**
    * Creates ZoomSwitcher
    */
   func createZoomSwitcher() {
      let size = ZoomSwitcher.getSize(backCamType: .backCameraType)
      let zoomSwitcher: ZoomSwitcher = .init(frame: .init(origin: .zero, size: size), backCameraType: .backCameraType)
      addSubview(zoomSwitcher)
      zoomSwitcher.anchorAndSize(to: self, size: size)
   }
}
