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
        super.viewWillAppear(animated)
        animateNavBar()
    }

    func showController() {
        navigationController?.pushViewController(ViewControllerB(), animated: true)
    }

    private func animateNavBar() {
        let navLayer = navigationController?.navigationBar.layer
        self.transitionCoordinator?.animate(alongsideTransition: {
            context in
            navLayer!.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        })
    }
}
