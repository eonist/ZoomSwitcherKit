import Foundation
import With

open class ZoomSwitcherButton: ToggleButton {
   open override var toggle: Bool { didSet { setToggle(toggle: toggle) } }
   public override init(frame: CGRect) {
		super.init(frame: frame)
      configButton(style: ZoomSwitcherButton.off)
	}
   /**
    * Boilerplate
    */
   required public init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
