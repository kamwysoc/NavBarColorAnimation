import Foundation
import UIKit
import CoreGraphics


class ViewControllerB: UIViewController {

    override func loadView() {
        super.loadView()
        title = "B"
        view.backgroundColor = .red
    }

    override func viewWillAppear(_ animated: Bool) {
        animateNavBar()
        super.viewWillAppear(animated)
    }

    private func animateNavBar() {
        let navLayer = navigationController?.navigationBar.layer
        self.transitionCoordinator?.animate(alongsideTransition: {
            context in
            navLayer!.anchorPoint = CGPoint(x: 0.5, y: -0.5)
        })
    }
}

