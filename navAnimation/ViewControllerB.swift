import Foundation
import UIKit

class ViewControllerB: UIViewController {

    override func loadView() {
        super.loadView()
        title = "B"
        view.backgroundColor = .red
    }

    override func viewWillAppear(_ animated: Bool) {
        animateHeight()
        super.viewWillAppear(animated)
    }

    override func willMove(toParentViewController parent: UIViewController?) {
        if parent == nil {
            navigationController?.navigationBar.applyHeight(44)
        }
        super.willMove(toParentViewController: parent)
    }

    private func animateHeight() {
        self.transitionCoordinator?.animate(alongsideTransition: {
            context in
            self.navigationController?.navigationBar.applyHeight(100)
        })
    }

}

