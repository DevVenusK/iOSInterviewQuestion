//
//  ExplainWhatYouCanAndCannotDoInADevelopmentEnvironmentIfYouDon'tHaveARealDevice..swift
//  iOSInterView
//
//  Created by Ppop on 2021/12/29.
//

import UIKit

/*
 Use Simulator to rapidly prototype and test builds of your app during the development process. Installed as part of the Xcode tools, Simulator runs on your Mac and behaves like a standard Mac app while simulating iPhone, iPad, Apple Watch, or Apple TV environments. Each combination of a simulated device and software version is considered its own simulation environment, independent of the others, with its own settings and files. These settings and files exist on every device you test within a simulation environment. Open multiple simulated devices for interactions such as an iPhone and a paired Apple watch.
 
 Use Simulator to:
 
 Interact with your apps on iOS, watchOS, and tvOS using your pointer and keyboard.
 
 Prototype and debug your apps.
 
 Optimize your graphics.
 
 Test your apps.
 
 Was this help page useful? Send feedback.
 
 https://help.apple.com/simulator/mac/11.0/index.html?localePath=en.lproj#/deve44b57b2a
 */

final class ExplainWhatYouCanAndCannotDoInADevelopmentEnvironmentIfYouDontHaveARealDevice: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildTextView()
    }
}

extension ExplainWhatYouCanAndCannotDoInADevelopmentEnvironmentIfYouDontHaveARealDevice {
    private func buildTextView() {
        let textView: UITextView = {
            let textView = UITextView()
            textView.translatesAutoresizingMaskIntoConstraints = false
            textView.isEditable = false
            textView.textColor = .black
            textView.dataDetectorTypes = .link
            textView.text = """
                        Use Simulator to rapidly prototype and test builds of your app during the development process. Installed as part of the Xcode tools, Simulator runs on your Mac and behaves like a standard Mac app while simulating iPhone, iPad, Apple Watch, or Apple TV environments. Each combination of a simulated device and software version is considered its own simulation environment, independent of the others, with its own settings and files. These settings and files exist on every device you test within a simulation environment. Open multiple simulated devices for interactions such as an iPhone and a paired Apple watch.
                        
                        Use Simulator to:
                        
                        Interact with your apps on iOS, watchOS, and tvOS using your pointer and keyboard.
                        
                        Prototype and debug your apps.
                        
                        Optimize your graphics.
                        
                        Test your apps.
                        
                        Was this help page useful? Send feedback.
                        
                        https://help.apple.com/simulator/mac/11.0/index.html?localePath=en.lproj#/deve44b57b2a
                        """
            return textView
        }()
        
        view.addSubview(textView)
        
        [textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
         textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
         textView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
         textView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)]
            .forEach { $0.isActive = true }
    }
}
