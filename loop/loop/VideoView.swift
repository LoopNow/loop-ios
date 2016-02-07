//
//  Created by Ahmed Elkady on 2016-02-06.
//  Copyright © 2016 LoopNow. All rights reserved.
//

import UIKit

class VideoView: UIView {

    init() {
        super.init(frame: .zero)
        backgroundColor = UIColor.blueColor()
        opaque = false
        layer.borderWidth = 2
        layer.cornerRadius = 20
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
