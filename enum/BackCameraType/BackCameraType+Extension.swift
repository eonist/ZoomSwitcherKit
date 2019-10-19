import Foundation
/**
 * BackCameraType - extensions
 */
 extension BackCameraType {
	 /**
     * Returns the needed width for the entire ZoomSwitcher
     */
    var width: CGFloat {
		 let numOfLenses = self.numberOfLenses
       return  (numberOfLenses * buttonWidth) + abs(numOfLenses - 1) * ZoomSwitcher.spaceBetween
    }
    /**
     * Returns a string with all focalTypes in a backCameraType
	  * ## Example:
     * print(BackCameraType.triple.description) // "Ultra wide, wide angle, tele"
     */
    var description: String {
      return focalTypes.map { $0.rawValue }.joined(separator: ", ")
    }
    /**
     * The various back cameras on the various iPhones
     */
    var focalTypes: [FocalType] {
      switch self {
      case .singleWide: return [.wide] // iPhone 6, 7, 8 etc
      case .dualUltraWideAndWide: return [.ultraWide, .wide] // iPhone X
      case .dualWideAndTele: return [.wide, .tele] // iPhone 11
      case .triple: return [.ultraWide, .wide, .tele] // iPhone 11 pro
      }
    }
	 /**
     * Returns the backCameraType for the device
     */
	  static var backCameraType: BackCameraType {
		  switch UIDevice().type { // let deviceModel = DeviceInfo.model()
		  	 case .iPhone11pro, .iPhone11promax:
				 return .triple
		 	 case .iPhone11:
				 return .dualUltraWideAndWide
		    case .iPhoneX, .iPhoneXS, .iPhoneXSmax, .iPhoneXmax, .iPhone7plus, .iPhone8plus:
				 return .dualWideAndTele
		    default:
		       return .singleWide
		    }
	  }
	  /**
      * Returns the amount of lenses for the backCameraType
      */
	  var numberOfLenses: Int { backCameraType.focalTypes.count }
 }
