//
//  What is a special object that stores and holds the app's content or data itself?.swift
//  iOSInterView
//
//  Created by Ppop on 2021/12/29.
//

import UIKit

/*
 UserDefaults
 An interface to the user’s defaults database, where you store key-value pairs persistently across launches of your app.

 https://developer.apple.com/documentation/foundation/userdefaults
 */

/*
 UserDefaults 클래스는 기본 시스템과 상호 작용하기 위한 프로그래밍 방식 인터페이스를 제공합니다. 기본 시스템을 사용하면 앱이 사용자의 기본 설정에 맞게 동작을 사용자 지정할 수 있습니다. 예를 들어 사용자가 선호하는 측정 단위 또는 미디어 재생 속도를 지정하도록 할 수 있습니다. 앱은 사용자의 기본 데이터베이스에 있는 매개변수 집합에 값을 할당하여 이러한 기본 설정을 저장합니다. 매개변수는 일반적으로 시작 시 앱의 기본 상태 또는 기본적으로 작동하는 방식을 결정하는 데 사용되기 때문에 기본값이라고 합니다.

 런타임 시 UserDefaults 개체를 사용하여 앱이 사용자의 기본 데이터베이스에서 사용하는 기본값을 읽습니다. UserDefaults는 기본값이 필요할 때마다 사용자의 기본 데이터베이스를 열 필요가 없도록 정보를 캐시합니다. 기본값을 설정하면 프로세스 내에서 동기적으로 변경되고 영구 저장소 및 기타 프로세스에 비동기적으로 변경됩니다.
 
 ** 중요 **
 기본 설정 하위 시스템에 직접 액세스하지 마십시오. 환경 설정 속성 목록 파일을 수정하면 변경 사항이 손실되고 변경 사항 반영이 지연되고 앱이 충돌할 수 있습니다. 기본 설정을 구성하려면 대신 macOS의 기본 명령줄 유틸리티를 사용하십시오.
 
 교육 기관의 관리 장치를 제외하고 사용자의 기본값은 단일 장치에 로컬로 저장되며 백업 및 복원을 위해 유지됩니다. 사용자의 연결된 장치에서 기본 설정 및 기타 데이터를 동기화하려면 대신 NSUbiquitousKeyValueStore를 사용하십시오.
 */

final class What_is_a_special_object_that_stores_and_holds_the_app_s_content_or_data_itself_: UIViewController {
    
    private var inputTextField: UITextField?
    private var outputTextField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let textFieldStackView = buildTextFieldStackView()
        buildButtonStackView(textFieldStackView)
    }
    
    deinit {
        UserDefaults.standard.removeObject(forKey: "Text")
    }
}

extension What_is_a_special_object_that_stores_and_holds_the_app_s_content_or_data_itself_ {
    private func buildTextFieldStackView() -> UIStackView {
        let inputTextField: UITextField = {
            let inputTextField = UITextField()
            inputTextField.placeholder = "입력값"
            inputTextField.textColor = .black
            inputTextField.backgroundColor = .lightGray
            return inputTextField
        }()
        
        self.inputTextField = inputTextField
        
        let outputTextField: UITextField = {
            let outputTextField = UITextField()
            outputTextField.placeholder = "출력값"
            outputTextField.textColor = .black
            outputTextField.backgroundColor = .lightGray
            return outputTextField
        }()
        
        self.outputTextField = outputTextField
        
        let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.axis = .vertical
            stackView.distribution = .equalSpacing
            stackView.spacing = 10
            return stackView
        }()
        
        view.addSubview(stackView)
        
        [stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
         stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
         stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)]
            .forEach { $0.isActive = true }
        
        [inputTextField,
        outputTextField]
            .forEach { stackView.addArrangedSubview($0) }
        return stackView
    }
    
    private func buildButtonStackView(_ textFieldStackView: UIStackView) {
        let saveButton: UIButton = {
            let button = UIButton()
            button.setTitle("Save",
                            for: .normal)
            button.setTitleColor(.blue,
                                 for: .normal)
            button.addTarget(self,
                             action: #selector(didTapSaveButton(_:)),
                             for: .touchUpInside)
            return button
        }()
        
        let loadButton: UIButton = {
            let button = UIButton()
            button.setTitle("Load", for: .normal)
            button.setTitleColor(.blue, for: .normal)
            button.addTarget(self,
                             action: #selector(didTapLoadButton(_:)),
                             for: .touchUpInside)
            return button
        }()
        
        let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.axis = .vertical
            stackView.distribution = .equalSpacing
            stackView.spacing = 10
            return stackView
        }()
        
        view.addSubview(stackView)
        
        [stackView.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 50),
         stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
         stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)]
            .forEach { $0.isActive = true }
        
        [saveButton,
        loadButton]
            .forEach { stackView.addArrangedSubview($0) }
    }
    
    @objc private func didTapSaveButton(_ sender: UIButton) {
        UserDefaults.standard.setValue(inputTextField?.text, forKey: "Text")
    }
    
    @objc private func didTapLoadButton(_ sender: UIButton) {
        let text = UserDefaults.standard.string(forKey: "Text")
        outputTextField?.text = text
    }
}
