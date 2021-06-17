//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Артем Сизов on 05.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    //    private var statusText = UITextField()
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var button: UIButton!
    override func awakeFromNib() {
        image.layer.cornerRadius = image.frame.size.width/2
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        image.clipsToBounds = true

        
        button.setTitle("Set status", for: .normal)
        button.addTarget(self, action: #selector(doButton), for: .touchUpInside)
        button.layer.cornerRadius = 8
        button.backgroundColor = .systemBlue
        addSubview(button)
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        label.text = "Hipster Cat"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        addSubview(label)
        
        label1.text = "Тут мог быть ваш статус)"
        label1.textColor = .white
        label1.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        addSubview(label1)
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textfield.frame.height))
                    textfield.leftViewMode = .always
                    textfield.font = UIFont.systemFont(ofSize: 15, weight: .regular)
                    textfield.textColor = .black
                    textfield.backgroundColor = .white
                    textfield.layer.borderWidth = 1.0
                    textfield.layer.borderColor = UIColor.black.cgColor
                    textfield.layer.cornerRadius = 12
        textfield.text = "Статус...."
        textfield.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        addSubview(textfield)
    }
    var statusTextM: String = ""
    @objc func statusTextChanged(_ textField: UITextField) {
        textfield = textField
    }
    
    @objc func doButton() {
        print(label.text)
        label1.text = textfield.text
    }
    }
    
////    private let button = UIButton()
////    private var image = UIImageView()
////    private let label = UILabel()
////    private var label1 = UILabel()
////    var myImage = UIImage(named: "22")
//    override func layoutSubviews() {
////        button.frame = CGRect(x: self.safeAreaInsets.left + 16, y: image.frame.maxY + 32, width: self.bounds.width - safeAreaInsets.left - safeAreaInsets.right - 16*2, height: 50)
////        label.frame = CGRect(x: self.safeAreaInsets.left + 150, y: self.safeAreaInsets.top + 27, width: self.bounds.width, height: 18)
////        label1.frame = CGRect(x: self.safeAreaInsets.left + 150, y: button.frame.minY - label1.bounds.height - 65, width: self.bounds.width, height: 18)
////        image.frame = CGRect(x: self.safeAreaInsets.left + 16, y: self.safeAreaInsets.top + 16, width: 110, height: 110)
////        statusText.frame = CGRect(x: self.safeAreaInsets.left + 150, y: button.frame.minY - statusText.bounds.height - 16, width: 200, height: 40)
//    }
//        label.frame = .init(x: 100 , y: 130, width: 200, height: 60)
//        button.layer.addSublayer(shadow)
//        let shadow = button.layer
//        shadow.frame = .init(x: 0, y: 0, width: 300, height: 50)
//        shadow.backgroundColor = UIColor.blue.cgColor
//        image.layer.borderWidth = 5
//        image.layer.borderColor = UIColor.white.cgColor
//        image.frame = .init(x: 50, y: 50, width: 100, height: 100)
//        image = UIImageView(image: myImage)
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
//
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//    }
