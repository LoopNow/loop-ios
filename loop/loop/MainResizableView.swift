//
//  Created by Ahmed Elkady on 2016-02-01.
//  Copyright © 2016 LoopNow. All rights reserved.
//

import UIKit
import SnapKit

class MainResizableView: UIView {

    var videoView: VideoView
    var closeCornerView: CloseCornerView

    init() {
        videoView = VideoView()
        closeCornerView = CloseCornerView()
        super.init(frame: .zero)
        addSubview(videoView)
        addSubview(closeCornerView)
        videoView.snp_makeConstraints { make in
            make.center.equalTo(self.snp_center)
            make.width.equalTo(self.snp_width).multipliedBy(0.9)
            make.height.equalTo(self.snp_height).multipliedBy(0.9)
        }
        closeCornerView.snp_makeConstraints { make in
            make.left.equalTo(videoView.snp_left)
            make.top.equalTo(videoView.snp_top)
            make.width.equalTo(self.snp_width).multipliedBy(0.2)
            make.height.equalTo(self.snp_height).multipliedBy(0.2)
        }
        let pan = UIPanGestureRecognizer(target:self, action:"pan:")
        pan.maximumNumberOfTouches = 1
        pan.minimumNumberOfTouches = 1
        let pinch = UIPinchGestureRecognizer(target:self, action:"scale:")
        addGestureRecognizer(pan)
        addGestureRecognizer(pinch)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func pan(recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .Began || recognizer.state == .Changed {
            let translation = recognizer.translationInView(self.superview)
            if let view = recognizer.view {
                let newX = view.center.x + translation.x
                let newY = view.center.y + translation.y
                let lowX = self.frame.width/2
                let lowY = self.frame.height/2
                let highX = UIScreen.mainScreen().bounds.width - lowX
                let highY = UIScreen.mainScreen().bounds.height - lowY
                if newX > lowX && newY > lowY && newX < highX && newY < highY {
                    view.center = CGPoint(x: newX, y: newY)
                    recognizer.setTranslation(CGPoint(x: 0, y: 0), inView: self.superview)
                }
            }
        }
    }

    func scale(sender: UIPinchGestureRecognizer) {
        self.transform = CGAffineTransformScale(self.transform, sender.scale, sender.scale)
        sender.scale = 1
    }

    override func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {
        let subview = super.hitTest(point, withEvent: event)
        if subview == self {
            return nil
        }

        return subview
    }
}
