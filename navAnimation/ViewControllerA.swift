import UIKit

class ViewControllerA: UIViewController, UIViewControllerTransitioningDelegate {

    override func loadView() {
        super.loadView()
        title = "A"
        view.backgroundColor = .blue
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "NEXT", style: .plain, target: self, action: #selector(self.showController))
        navigationController?.navigationBar.isTranslucent = false
    }

    override func viewWillAppear(_ animated: Bool) {
        animateHeight()
        super.viewWillAppear(animated)
    }

    func showController() {
        navigationController?.pushViewController(ViewControllerB(), animated: true)
    }

    private func animateHeight() {
        self.transitionCoordinator?.animate(alongsideTransition: {
            context in
            self.navigationController?.navigationBar.applyHeight(44)
        })
    }
}