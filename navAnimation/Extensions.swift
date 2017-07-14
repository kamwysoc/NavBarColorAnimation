import Foundation
import UIKit

extension UINavigationBar {
    func applyHeight(_ height: CGFloat) {
        var navFrame = self.frame
        navFrame.size.height = height
        self.frame = navFrame
    }
}