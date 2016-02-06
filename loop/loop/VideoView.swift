//
//  videoView.swift
//  loop
//
//  Created by Ahmed Elkady on 2016-02-06.
//  Copyright © 2016 LoopNow. All rights reserved.
//

import UIKit

class VideoView: UIView {

    init() {
        super.init(frame: CGRect(x: 100, y: 200, width: 200, height: 200))
        self.backgroundColor = UIColor.blueColor()
        self.opaque = false
        self.layer.borderWidth=2
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
