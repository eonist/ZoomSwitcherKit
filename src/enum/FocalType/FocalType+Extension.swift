import Foundation

extension ZoomSwitcher.FocalType {
   /**
    * The zoomFraction is used as text in the different zoombuttons
    */
   var zoomFraction: CGFloat {
      switch self {
         case .ultraWide: return 0.5
         case .wide: return 1
         case .tele: return 2
      }
   }
}
