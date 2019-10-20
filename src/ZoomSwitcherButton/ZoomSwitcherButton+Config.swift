import Foundation
import With

extension ZoomSwitcherButton {
   /**
    * Config the button
    * - Fixme: ⚠️️ store props in typealias and add to setter
    */
   @objc open func configButton() {
      with(self) {
         $0.backgroundColor = .white
         $0.setTitleColor(.black, for: .normal)
         $0.titleLabel?.font =  .systemFont(ofSize: 14)
         $0.setTitle("1x", for: .normal)
         $0.layer.cornerRadius = frame.height / 2
      }
   }
}
