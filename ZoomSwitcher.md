```swift
/**
 * - Fixme: Add the code from slider, and grow / shrink buttons along the track
 */
class ZoomSwitcher {
   let backCameraType: BackCameraType
   init(backCameraType: BackCameraType) {
      self.backCameraType = backCameraType
      let componentWidth: CGFloat = backCameraType.componentWidth
      let componentHeight: CGFloat = buttonWidth
      let frame: CGRect = .init(origin: .init(x: 0, y: 0), size: .init(width: componentWidth, height: componentHeight))
      super.init(frame: frame)
   }
   // if single camera
      // only make 1 button
   // if dual camera
      // make two buttons
   // if triple camera
      // make three buttons
}
extension ZoomSwitcher {
   func createButtons(backCameraType: BackCameraType) {
      // the width of the component
      // the count of needed buttons
      let focalTypes: [FocalType] = backCameraType.focalTypes
      // the zoom fraction for the text in the button
      focalTypes.forEach {
         let btn: ZoomSwitcherButton = .init()
         btn.text = "\($0.zoomFraction)"
      }
   }
}
/**
 *
 */
extension ZoomSwitcher {
   enum BackCameraType { case singleWide, dualUltraWideAndWide, dualWideAndTele, triple }
	enum FocalType { case ultraWide, wide, tele }
}
extension ZoomSwitcher.FocalType {
   var zoomFraction: CGFloat {
   switch self {
      case .ultraWide: return 0.5
      case .wide: return 1
      case .tele: return 2
   }
   }
}
/**
 *
 */
 extension ZoomSwitcher.BackCameraType {
    var width: CGFloat {
      return (self.rawValue() + 1) * buttonWidth
    }
    /**
     * ## Example:
     * print(BackCameraType.triple.description) // "Ultra wide, wide angle, tele"
     */
    var description: String {
      return focalTypes.map { $0.rawValue }.joined(separator: ", ")
    }
    /**
     * The various back cameras on the various iPhones
     */
    var focalTypes: [FocalType] {
      switch self {
      case .singleWide: return [.wide] // iPhone 6, 7, 8 etc
      case .dualUltraWideAndWide: return [.ultraWide, .wide] // iPhone X
      case .dualWideAndTele: return [.wide, .tele] // iPhone 11
      case .triple: return [.ultraWide, .wide, .tele] // iPhone 11 pro
      }
    }

 }
 
 /**
  *
  */
 class ZoomSwitcherButton {
    // grow
    // shrink
 }

```
