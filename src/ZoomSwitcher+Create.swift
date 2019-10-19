import Foundation
import With
/*
 * - Description:
 * 1. if single camera: only make 1 button
 * 2. if dual camera: make two buttons
 * 3. if triple camera: make three buttons
 */
extension ZoomSwitcher {
   /**
    * Creates the buttons
    */
   @objc open func createButtons(backCameraType: BackCameraType) -> [ZoomSwitcherButton] {
      return backCameraType.focalTypes.enumerated().map { i, focalType in 
         return with(.init(frame: ZoomSwitcherButton.rect)) { btn in
            btn.text = "\(focalType.zoomFraction)" // The zoom fraction for the text in the button
            btn.onButtonTouched = onButtonTouched // Assigns callback
            btn.frame.origin = (i * ZoomSwitcherButton.buttonWidth) + ZoomSwitcher.spaceBetween
            self.addSubview(btn)
         }
      }
}
