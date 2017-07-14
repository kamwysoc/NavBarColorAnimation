import UIKit

class ViewControllerA: UIViewController {

    override func loadView() {
        super.loadView()
        title = "A"
        view.backgroundColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "NEXT", style: .plain, target: self, action: #selector(self.showController))
    }

    override func viewWillAppear(_ animated: Bool) {
        setColors()
        applyNavigationBarHeight(44)
        super.viewWillAppear(animated)
    }

    func showController() {
        navigationController?.pushViewController(ViewControllerB(), animated: true)
    }

    private func setColors() {
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.barTintColor = .red
        navigationController?.navigationBar.isTranslucent = false
    }
}

//extension UINavigationBar {
//    open override func sizeThatFits(_ size: CGSize) -> CGSize {
//        let screenRect = UIScreen.main.bounds
//        return CGSize(width: screenRect.size.width, height: 44)
//    }
//}