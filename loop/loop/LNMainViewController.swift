//
//  LNMainViewController.swift
//  loop
//
//  Created by Rajul Arora on 2016-01-30.
//  Copyright © 2016 Rajul Arora. All rights reserved.
//

import UIKit

class LNMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        let viewController = LNLoginViewController()
        self.presentViewController(viewController, animated: true, completion: nil)
    }
}
