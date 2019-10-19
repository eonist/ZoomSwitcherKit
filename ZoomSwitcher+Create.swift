import Foundation

extension ZoomSwitcher {
	/**
    *
    */
   func createButtons(backCameraType: BackCameraType) {
      // the width of the component
      // the count of needed buttons
      let focalTypes: [FocalType] = backCameraType.focalTypes

		//Continue here: 🏀
			// figure out the amount of buttons needed

      // the zoom fraction for the text in the button
      focalTypes.forEach {
         let btn: ZoomSwitcherButton = .init()
         btn.text = "\($0.zoomFraction)"
			btn.onButtonTouched = onButtonTouched // assigns callback
			//align and size
      }
   }
}
// if single camera
	// only make 1 button
// if dual camera
	// make two buttons
// if triple camera
	// make three buttons
