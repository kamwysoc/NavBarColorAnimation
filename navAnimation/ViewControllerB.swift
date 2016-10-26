//
// Created by Kamil Wysocki on 26/10/16.
// Copyright (c) 2016 k8mil. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerB: UIViewController {

    override func loadView() {
        super.loadView()
        title = "B"
        view.backgroundColor = .white
        setColors()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animate()
    }

    override func willMove(toParentViewController parent: UIViewController?) {
        // tricky part in iOS 10
        navigationController?.navigationBar.barTintColor = .red //previous color
        super.willMove(toParentViewController: parent)
    }

    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barTintColor = .blue
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
        navigationController?.navigationBar.barTintColor = .blue
    }

}