
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
    override func viewDidLoad() {
        super.viewDidLoad()
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
