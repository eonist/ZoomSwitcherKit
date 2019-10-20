import Foundation
import With

extension ZoomSwitcherButton {
   /**
    * Config the button
    * - Fixme: ⚠️️ store props in typealias and add to setter
    */
   open func configButton(style: Style) {
//      Swift.print("configButton")
      with(self) {
         $0.backgroundColor = style.backgroundColor
         $0.layer.borderColor = UIColor.clear.cgColor
         $0.layer.borderWidth = 0
         $0.setTitleColor(style.textColor, for: .normal)
         $0.titleLabel?.font =  .systemFont(ofSize: 14)
         $0.setTitle("1x", for: .normal)
         $0.layer.cornerRadius = frame.height / 2
      }
   }
}
