//
//  ViewController.swift
//  loop
//
//  Created by Rajul Arora on 2016-01-18.
//  Copyright © 2016 LoopNow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let plus = UIButton()
        view.addSubview(plus)
        plus.snp_makeConstraints { make in
            make.top.equalTo(view.snp_top).offset(20)
            make.right.equalTo(view.snp_right).offset(-20)
            make.width.equalTo(view.snp_width).multipliedBy(0.1)
            make.height.equalTo(view.snp_height).multipliedBy(0.1)
        }
        plus.setTitle("+", forState: .Normal)
        plus.setTitleColor(UIColor.blackColor(), forState:  .Normal)
        plus.setTitleColor(UIColor.grayColor(), forState:  .Highlighted)
        plus.titleLabel?.font =  UIFont(name: "HelveticaNeue-Thin", size: 70)
        plus.addTarget(self, action: "addResizableViewController:", forControlEvents: .TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addResizableViewController(sender: UIButton) {
        NSLog("Yo","Yo")
        let resizableView = MainResizableView()
        view.addSubview(resizableView)
        resizableView.snp_makeConstraints { make in
            make.top.equalTo(view.snp_top).offset(50)
            make.left.equalTo(view.snp_left).offset(50)
            make.width.equalTo(view.snp_width).multipliedBy(0.4)
            make.height.equalTo(view.snp_width).multipliedBy(0.4)
        }
    }
}
