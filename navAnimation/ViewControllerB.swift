import Foundation
import UIKit

class ViewControllerB: UIViewController {

    override func loadView() {
        super.loadView()
        title = "B"
        view.backgroundColor = .white
    }

    override func viewWillAppear(_ animated: Bool) {
        setColors()
        applyNavigationBarHeight(100)
        super.viewWillAppear(animated)
    }

    override func willMove(toParentViewController parent: UIViewController?) {
        if parent == nil {
            navigationController?.navigationBar.barTintColor = .red
            applyNavigationBarHeight(44)
        }
        super.willMove(toParentViewController: parent)
    }

    private func setColors() {
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.barTintColor = .blue
        navigationController?.navigationBar.isTranslucent = false
    }
}

extension UIViewController {
    func applyNavigationBarHeight(_ height: CGFloat) {
        guard let coordinator = self.transitionCoordinator else {
            return
        }
        coordinator.animate(alongsideTransition: {
            [weak self] context in

            context.view(forKey: .from)
            self?.navigationController?.navigationBar.apply(height: height)
        }, completion: nil)
    }
}


extension UINavigationBar {
    func apply(height: CGFloat) {
        var navFrame = frame
        navFrame.size.height = height
        frame = navFrame
    }
}

