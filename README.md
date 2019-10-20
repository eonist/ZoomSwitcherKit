# ZoomSwitcherKit
ZoomSwitcher for different iPhones

### Examples:
```swift
let backCamType: BackCameraType = .backCameraType
let size = ZoomSwitcher.getSize(backCamType: backCamType)
let zoomSwitcher: ZoomSwitcher = .init(frame: .init(origin: .zero, size: size), backCameraType: backCamType) // zoomSwitcher.anchorAndSize(to: self, size: size)
zoomSwitcher.buttons[backCamType.defaultLenseIndex].toggle = true // for tripple cam this needs to be .second,
addSubview(zoomSwitcher)
zoomSwitcher.onSwitch = { focalType in
   Swift.print("Switched to focalType:  \(focalType)")
}
```
