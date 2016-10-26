import UIKit

class ViewControllerA : UIViewController{
    
    override func loadView() {
        super.loadView()
        self.title = "A"
        self.view.backgroundColor = .white
    
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "NEXT", style: .plain, target: self, action: #selector(self.showController))
        
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationController?.navigationBar.barTintColor = UIColor.red
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animate()
    }
    
    func showController(){
        self.navigationController?.pushViewController(ViewControllerB(), animated: true)
    }
    
    private func animate() {
        guard let coordinator = self.transitionCoordinator else {
            return
        }
    
        coordinator.animate(alongsideTransition: {
            context in
            self.navigationController?.navigationBar.tintColor = .black
            self.navigationController?.navigationBar.barTintColor = .red
            }, completion: nil)
    }
}

class ViewControllerB : UIViewController {
    
    override func loadView() {
        super.loadView()
        self.title = "B"
        self.view.backgroundColor = .white
        self.view.backgroundColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animate()
    }
    
    override func willMove(toParentViewController parent: UIViewController?) {
        self.navigationController?.navigationBar.barTintColor = .red
        super.willMove(toParentViewController: parent)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.barTintColor = .blue
    }
    
    private func animate() {
        guard let coordinator = self.transitionCoordinator else {
            return
        }
        coordinator.animate(alongsideTransition: {
            context in
            self.navigationController?.navigationBar.tintColor = .black
            self.navigationController?.navigationBar.barTintColor = .blue
            }, completion: nil)
    }
    
}
