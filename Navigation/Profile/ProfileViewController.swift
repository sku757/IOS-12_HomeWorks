//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Артем Сизов on 05.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController{
    private let someView:ProfileHeaderView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(someView)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        someView.frame = view.frame
    }
}
