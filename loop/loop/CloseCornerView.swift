//
//  Created by Ahmed Elkady on 2016-02-01.
//  Copyright © 2016 LoopNow. All rights reserved.
//

import UIKit

class CloseCornerView: UIButton {

    init() {
        super.init(frame: .zero)
        setTitle("x", forState: .Normal)
        setTitleColor(UIColor.blackColor(), forState:  .Normal)
        setTitleColor(UIColor.grayColor(), forState:  .Highlighted)
        titleLabel?.font =  UIFont(name: "HelveticaNeue-Thin", size: 30)
        opaque = false

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
