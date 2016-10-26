import UIKit

class ViewControllerA: UIViewController {

        override func loadView() {
            super.loadView()
            title = "A"
            view.backgroundColor = .white
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "NEXT", style: .plain, target: self, action: #selector(self.showController))
            setColors()
        }

        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            animate()
        }

        func showController() {
            navigationController?.pushViewController(ViewControllerB(), animated: true)
        }

        private func animate() {
            guard let coordinator = self.transitionCoordinator else {
                return
            }

            coordinator.animate(alongsideTransition: {
                [weak self] context in
                self?.setColors()
            }, completion: nil)
        }

        private func setColors() {
            navigationController?.navigationBar.tintColor = .black
            navigationController?.navigationBar.barTintColor = .red
        }
}
