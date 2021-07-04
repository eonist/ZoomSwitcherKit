[![codebeat badge](https://codebeat.co/badges/f5171a1b-f24e-4dab-9f6b-346d28be9a0d)](https://codebeat.co/projects/github-com-eonist-zoomswitcherkit-master)

# ZoomSwitcherKit
ZoomSwitcher for different iPhone back-camera types (single, dual, triple)

### Installation:
- SPM: `.package(url: "https://github.com/eonist/ZoomSwitcherKit.git", .branch("master"))`

### Examples:
```swift
let backCamType: BackCameraType = .backCameraType
let size = ZoomSwitcher.getSize(backCamType: backCamType)
let zoomSwitcher: ZoomSwitcher = .init(frame: .init(origin: .zero, size: size), backCameraType: backCamType) zoomSwitcher.anchorAndSize(to: self, size: size)
zoomSwitcher.buttons[backCamType.defaultLenseIndex].toggle = true
addSubview(zoomSwitcher)
zoomSwitcher.onSwitch = { focalType in
   Swift.print("Switched to focalType:  \(focalType)")
}
```
### Todo
- add spm and github actions
