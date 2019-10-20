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
   open func createButtons(backCameraType: BackCameraType) -> [ZoomSwitcherButton] {
      return backCameraType.focalTypes.enumerated().map { i, focalType in 
         return with(.init(frame: ZoomSwitcherButton.rect)) { btn in
            btn.setTitle("\(focalType.zoomFraction)x", for: .normal) // The zoom fraction for the text in the button
            btn.onToggle = self.onButtonToggle // Assigns callback
            btn.frame.origin.x = (CGFloat(i) * ZoomSwitcherButton.buttonWidth) + ZoomSwitcherButton.spaceBetween
            self.addSubview(btn)
         }
      }
   }
}
