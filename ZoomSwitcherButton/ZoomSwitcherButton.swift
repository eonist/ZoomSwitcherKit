import Foundation

class ZoomSwitcherButton: ToggleButton {
	init(frame: CGRect) {
		super.init(frame: frame)
	}
}
extension ZoomSwitcherButton {

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
	typealias Style = (textColor: UIColor, backgroundColor: UIColor)
	static let on: Style = (.white, .gray)
	static let off: Style = (.gray, .white)
}
