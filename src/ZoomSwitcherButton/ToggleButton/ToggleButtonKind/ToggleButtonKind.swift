import UIKit

@objc public protocol ToggleButtonKind: AnyObject {
   var toggle: Bool { get set }
   var onToggle: OnToggle { get set }
}
