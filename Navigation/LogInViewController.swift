//
//  LogInViewController.swift
//  Navigation
//
//  Created by Артем Сизов on 23.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    private let scrollView = UIScrollView()

        private let logInView: UIView = {
            let logInView = UIView()
            logInView.backgroundColor = .white
            logInView.toAutoLayout()
            return logInView
        }()
    
    private let logoImageView: UIImageView = {
             let imageView = UIImageView(image:#imageLiteral(resourceName: "logo"))
             imageView.contentMode = .scaleAspectFill
             imageView.clipsToBounds = true
             imageView.toAutoLayout()
             return imageView
         }()

         private let autorizationView: UIView = {
             let autorizationView = UIView()
             autorizationView.backgroundColor = .lightGray
             autorizationView.layer.borderWidth = 0.5
             autorizationView.layer.borderColor = UIColor.lightGray.cgColor
             autorizationView.layer.cornerRadius = 10
             autorizationView.clipsToBounds = true
             autorizationView.toAutoLayout()
             return autorizationView
         }()

         private let emailTextField: UITextField = {
            let textField = UITextField()
             textField.font = UIFont.systemFont(ofSize: 16)
             textField.textColor = .black
             textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField .frame.height))
             textField.leftViewMode = .always
             textField.tintColor = UIColor(named:"myColorSet")
             textField.autocapitalizationType = .none
             textField.backgroundColor = .systemGray6
             textField.clipsToBounds = true
             textField.placeholder = "Email or Phone"
             textField.toAutoLayout()
             return textField
         }()

         private let passwordTextField: UITextField = {
             let textField = UITextField()
             textField.font = UIFont.systemFont(ofSize: 16)
             textField.textColor = .black
             textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField .frame.height))
             textField.leftViewMode = .always
             textField.tintColor = UIColor(named:"myColorSet")
             textField.autocapitalizationType = .none
             textField.backgroundColor = .systemGray6
             textField.clipsToBounds = true
             textField.placeholder = "Password"
             textField.isSecureTextEntry = true
             textField.toAutoLayout()
             return textField
         }()

         private lazy var logInButton: UIButton = {
             let button = UIButton(type: .system)
             button.setTitle("Log in", for: .normal)
             button.setTitleColor(.white, for: .normal)
             button.setBackgroundImage(#imageLiteral(resourceName: "blue_pixel"), for: .normal)

             if button.isSelected {
                 button.alpha = 0.8
             } else if button.isHighlighted {
                 button.alpha = 0.8
             } else if button.isEnabled == false {
                 button.alpha = 0.8
             } else {
                 button.alpha = 1
             }

             button.layer.cornerRadius = 10
             button.clipsToBounds = true
             button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
             button.toAutoLayout()
             return button
         }()
    @objc private func tapButton() {
             let profileVC = storyboard?.instantiateViewController(identifier: "ProfileVC")
             navigationController?.pushViewController(profileVC!, animated: true)
         }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = true
        setupViews()
    }
    private func setupViews() {
            scrollView.toAutoLayout()
            view.addSubview(scrollView)
            scrollView.addSubview(logInView)
            view.addSubview(logoImageView)
            view.addSubview(autorizationView)
            autorizationView.addSubview(emailTextField)
            autorizationView.addSubview(passwordTextField)
            view.addSubview(logInButton)
            let constraints = [
                logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
                logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                logoImageView.widthAnchor.constraint(equalToConstant: 100),
                logoImageView.heightAnchor.constraint(equalToConstant: 100),

                autorizationView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 120),
                autorizationView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                autorizationView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                autorizationView.heightAnchor.constraint(equalToConstant: 100),

                emailTextField.topAnchor.constraint(equalTo: autorizationView.topAnchor),
                emailTextField.leadingAnchor.constraint(equalTo: autorizationView.leadingAnchor),
                emailTextField.trailingAnchor.constraint(equalTo: autorizationView.trailingAnchor),
                emailTextField.heightAnchor.constraint(equalToConstant: 49.7),

                passwordTextField.bottomAnchor.constraint(equalTo: autorizationView.bottomAnchor),
                passwordTextField.leadingAnchor.constraint(equalTo: autorizationView.leadingAnchor),
                passwordTextField.trailingAnchor.constraint(equalTo: autorizationView.trailingAnchor),
                passwordTextField.heightAnchor.constraint(equalToConstant: 49.7),

                logInButton.topAnchor.constraint(equalTo: autorizationView.bottomAnchor, constant: 16),
                logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                logInButton.heightAnchor.constraint(equalToConstant: 50),
                scrollView.topAnchor.constraint(equalTo: view.topAnchor),
                scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                logInView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                logInView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                logInView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                logInView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                logInView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            ]

            NSLayoutConstraint.activate(constraints)

      }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)

            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        }

        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)

            NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        }

        @objc fileprivate func keyboardWillShow(notification: NSNotification) {
            if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {

                scrollView.contentInset.bottom = keyboardSize.height
                scrollView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
            }
        }

        @objc fileprivate func keyboardWillHide(notification: NSNotification) {
            scrollView.contentInset.bottom = .zero
            scrollView.verticalScrollIndicatorInsets = .zero
        }

    }
    extension UIView {
            func toAutoLayout() {
                self.translatesAutoresizingMaskIntoConstraints = false
            }
}

