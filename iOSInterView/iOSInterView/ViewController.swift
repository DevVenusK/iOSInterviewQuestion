//
//  ViewController.swift
//  iOSInterView
//
//  Created by Ppop on 2021/12/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapBounds와Frame의차이점을설명하시오(_ sender: Any) {
     let explainTheDifferenceBetweenBoundsAndFrames = ExplainTheDifferenceBetweenBoundsAndFrames()
        present(explainTheDifferenceBetweenBoundsAndFrames, animated: true)
    }
    @IBAction func 실제디바이스가없을경우개발환경에서할수있는것과없는것을설명하시오(_ sender: Any) {
        let explainWhatYouCanAndCannotDoInADevelopmentEnvironmentIfYouDontHaveARealDevice = ExplainWhatYouCanAndCannotDoInADevelopmentEnvironmentIfYouDontHaveARealDevice()
        present(explainWhatYouCanAndCannotDoInADevelopmentEnvironmentIfYouDontHaveARealDevice, animated: true)
    }
    @IBAction func 앱의콘텐츠나데이터자체를저장및보관하는특별한객체를무엇이라고하는가(_ sender: Any) {
        let what_is_a_special_object_that_stores_and_holds_the_app_s_content_or_data_itself_ = What_is_a_special_object_that_stores_and_holds_the_app_s_content_or_data_itself_()
        present(what_is_a_special_object_that_stores_and_holds_the_app_s_content_or_data_itself_, animated: true)
    }
    
}

