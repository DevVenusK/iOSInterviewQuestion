//
//  ExplainTheDifferenceBetweenBoundsAndFrames.swift
//  iOSInterView
//
//  Created by Ppop on 2021/12/29.
//


/*
 Frame
 The frame rectangle, which describes the view’s location and size in its superview’s coordinate system.
 https://developer.apple.com/documentation/uikit/uiview/1622621-frame
 
 Bounds
 The bounds rectangle, which describes the view’s location and size in its own coordinate system.
 https://developer.apple.com/documentation/uikit/uiview/1622580-bounds
 */

import UIKit

final class ExplainTheDifferenceBetweenBoundsAndFrames: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let customView = buildCustomView()
        buildFrameView(customView)
        buildBoundsView(customView)
    }
}

extension ExplainTheDifferenceBetweenBoundsAndFrames {
    private func buildCustomView() -> UIView {
        let customView: UIView = {
            let customView = UIView()
            customView.translatesAutoresizingMaskIntoConstraints = false
            customView.backgroundColor = .orange
            return customView
        }()
        
        view.addSubview(customView)
        
        [customView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
         customView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
         customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
         customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)]
            .forEach { $0.isActive = true }
        
        return customView
    }
    
    private func buildFrameView(_ customView: UIView) {
        let frameView: UIView = {
            let frameView = UIView()
            frameView.backgroundColor = .red
            return frameView
        }()
        
        frameView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        
        customView.addSubview(frameView)
        
        print("FrameView Frame: ", frameView.frame)
        print("FrameView Bounds: ", frameView.bounds)
    }
    
    private func buildBoundsView(_ customView: UIView) {
        let boundsView: UIView = {
            let boundsView = UIView()
            boundsView.backgroundColor = .blue
            return boundsView
        }()
        
        boundsView.bounds = CGRect(x: 0, y: 0, width: 50, height: 50)
        
        customView.addSubview(boundsView)
        
        print("BoundsView Frame: ", boundsView.frame)
        print("BoundsView Bounds: ", boundsView.bounds)
    }
}
