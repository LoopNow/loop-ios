//
//  LNLoginViewController.swift
//  loop
//
//  Created by Rajul Arora on 2016-01-30.
//  Copyright © 2016 Rajul Arora. All rights reserved.
//

import UIKit
import TwitterKit
import SnapKit

class LNLoginViewController: UIViewController {
    struct Constants {
        static let buttonHeight: CGFloat = 44.0
        static let buttonWidth: CGFloat = 200.0
    }

    private let twitterLogin: TWTRLogInCompletion = { (session, error) -> Void in

    }

    private lazy var twitterLoginButton: TWTRLogInButton = { [unowned self] in
        let button = TWTRLogInButton(logInCompletion: self.twitterLogin)
        button.layer.cornerRadius = Constants.buttonHeight / 2.0
        return button
    }()
}

// MARK: - UIViewController

extension LNLoginViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.twitterLoginButton)
    }
}

// MARK: - SnapKit Layout

extension LNLoginViewController {
    func setTwitterLoginButtonConstraints() {
        twitterLoginButton.snp_makeConstraints() { (make) -> Void in
            make.bottom.equalTo(self.view).offset(-20.0)
            make.width.equalTo(Constants.buttonWidth)
            make.height.equalTo(Constants.buttonHeight)
            make.centerX.equalTo(self.view.snp_centerX)
        }
    }
}
