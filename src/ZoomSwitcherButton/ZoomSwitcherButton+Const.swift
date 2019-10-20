import Foundation
/**
 * Const
 */
extension ZoomSwitcherButton {
   public static let spaceBetween: CGFloat = 12
   public static let margin: CGFloat = 8
   public static let buttonWidth: CGFloat = 42
   public typealias Style = (textColor: UIColor, backgroundColor: UIColor)
   public static let on: Style = (backgroundColor: .white, textColor: .darkGray)
   public static let off: Style = (backgroundColor: .gray, textColor: .white)
   public static let rect: CGRect = {
      let size: CGSize = .init(width: ZoomSwitcherButton.buttonWidth, height: ZoomSwitcherButton.buttonWidth)
      return .init(origin: .zero, size: size)
   }()
}
