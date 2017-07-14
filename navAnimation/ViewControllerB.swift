import Foundation
import UIKit

class ViewControllerB: UIViewController {

    override func loadView() {
        super.loadView()
        title = "B"
        view.backgroundColor = .red
    }

    override func viewWillAppear(_ animated: Bool) {
        self.transitionCoordinator?.animate(alongsideTransition: {
            context in
            self.navigationController?.navigationBar.applyHeight(100)
        })
        super.viewWillAppear(animated)
    }

    override func willMove(toParentViewController parent: UIViewController?) {
        if parent == nil {
            UIView.animate(withDuration: 0.1) {
                self.navigationController?.navigationBar.applyHeight(44)
            }
        }
        super.willMove(toParentViewController: parent)
    }


}

