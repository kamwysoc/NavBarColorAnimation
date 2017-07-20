import Foundation
import UIKit
import CoreGraphics


class ViewControllerB: UIViewController, UINavigationBarDelegate {

    override func loadView() {
        super.loadView()
        title = "B"
        view.backgroundColor = .red
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.applyHeight(100)
        super.viewWillAppear(animated)
    }

    override func willMove(toParentViewController parent: UIViewController?) {
        if parent == nil { // here you know that back button was tapped
            navigationController?.navigationBar.applyHeight(44)
        }
        super.willMove(toParentViewController: parent)
    }
}

