import Foundation

open class ZoomSwitcherButton: ToggleButton {
	init(frame: CGRect) {
		super.init(frame: frame)
	}
}
/**
 * Setter
 */
extension ZoomSwitcherButton {
	func setToggle(toggle: Toggle) {
		self.toggle = toggle
		setStyle(toggle ? .on : .off)
	}
	func setStyle(style: Style) {
		backgroundColor = style.backgroundColor
		textColor = backgroundColor = style.textColor
	}
}
/*
 * Const
 */
extension ZoomSwitcherButton {
	static let spaceBetween: CGFloat = 12
	static let buttonWidth: CGFloat = 42
	typealias Style = (textColor: UIColor, backgroundColor: UIColor)
	static let style: Style = (backgroundColor: .gray, textColor: .white)
	static let on: Style = (.white, .gray)
	static let off: Style = (.gray, .white)
	static let rect: CGRect = {
		return .init(origin: .zero, size: .init(width: ZoomSwitcherButton.buttonWidth, height: ZoomSwitcherButton.buttonWidth))
	}()
}
