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
            super.viewWillAppear(animated)
        }

        override func willMove(toParentViewController parent: UIViewController?) {
            if parent == nil {
                navigationController?.navigationBar.barTintColor = .red
            }
            super.willMove(toParentViewController: parent)
        }


        private func setColors() {
            navigationController?.navigationBar.tintColor = .black
            navigationController?.navigationBar.barTintColor = .blue
            navigationController?.navigationBar.isTranslucent = false
        }
    }