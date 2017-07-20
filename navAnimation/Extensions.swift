import Foundation
import UIKit

extension UINavigationBar {
    func applyHeight(_ height: CGFloat, animated: Bool = true) {
        var navFrame = self.frame
        navFrame.size.height = height
        if animated {
            UIView.beginAnimations(nil, context: nil)
            self.frame = navFrame
            UIView.commitAnimations()
        } else {
            self.frame = navFrame
        }
    }
}