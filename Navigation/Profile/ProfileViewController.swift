
//  ProfileViewController.swift
//  Navigation
//
//  Created by Артем Сизов on 05.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController{
//    let button = UIButton()
//    private let someView:ProfileHeaderView = ProfileHeaderView()
    private(set) lazy var newButton: UIButton = {
             let newButton = UIButton()
             newButton.setTitle("BUTTON", for: .normal)
             return newButton
         }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(newButton)
        newButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        newButton.setTitleColor(.white, for: .normal)
        newButton.layer.backgroundColor = UIColor.blue.cgColor
        newButton.layer.cornerRadius = 14
        newButton.layer.shadowColor = UIColor.black.cgColor
        newButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        newButton.layer.shadowOpacity = 0.7
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        newButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        newButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: +16).isActive = true
        newButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        newButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
//        view.backgroundColor = .lightGray
//        view.addSubview(someView)
//        button.setTitle("Set status", for: .normal)
//        button.frame = .init(x: 150, y: 450, width: 150, height: 150)
//        button.layer.cornerRadius = 8
//        button.backgroundColor = .systemBlue
//        view.addSubview(button)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
//        someView.frame = view.frame
    }
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var button: UIButton!
}
