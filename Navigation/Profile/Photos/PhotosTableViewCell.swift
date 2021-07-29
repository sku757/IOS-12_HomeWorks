//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Артем Сизов on 28.07.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
   
    private let imageFirst: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "3"))
        image.layer.cornerRadius = 6
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.toAutoLayout()
        return image
    }()
    
    private let imageSecond: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "15"))
        image.layer.cornerRadius = 6
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.toAutoLayout()
        return image
    }()
    
    private let imageThird: UIImageView = {
       let image = UIImageView(image: #imageLiteral(resourceName: "13"))
        image.layer.cornerRadius = 6
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.toAutoLayout()
        return image
    }()
    
    private let imageFour: UIImageView = {
       let image = UIImageView(image: #imageLiteral(resourceName: "8"))
        image.layer.cornerRadius = 6
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.toAutoLayout()
        return image
    }()
    
    private let labelTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.text = "Photos"
        label.textAlignment = .left
        label.numberOfLines = 2
        label.toAutoLayout()
        return label
    }()
    
    private lazy var buttonContinue: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(systemName: "arrow.forward"), for: .normal)
        button.tintColor = .black
        button.clipsToBounds = true
        button.toAutoLayout()
        button.addTarget(self, action: #selector(tapButtona), for: .touchUpInside)
        return button
    }()
    
    @objc func tapButtona() {
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        
    }
    
    func setupViews() {
        contentView.addSubviews(imageFirst, labelTitle, imageSecond, imageThird, imageFour, buttonContinue)
        
        let constraints = [
            labelTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            labelTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            
            imageFirst.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 12),
            imageFirst.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            imageFirst.widthAnchor.constraint(equalToConstant: (contentView.frame.width - 12 - 8)/4 ),
            imageFirst.heightAnchor.constraint(equalTo: imageFirst.widthAnchor),
            imageFirst.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
            imageSecond.leadingAnchor.constraint(equalTo: imageFirst.trailingAnchor, constant: 8),
            imageSecond.centerYAnchor.constraint(equalTo: imageFirst.centerYAnchor),
            imageSecond.widthAnchor.constraint(equalTo: imageFirst.widthAnchor),
            imageSecond.heightAnchor.constraint(equalTo: imageSecond.widthAnchor),
            
            imageThird.leadingAnchor.constraint(equalTo: imageSecond.trailingAnchor, constant: 8),
            imageThird.centerYAnchor.constraint(equalTo: imageFirst.centerYAnchor),
            imageThird.widthAnchor.constraint(equalTo: imageFirst.widthAnchor),
            imageThird.heightAnchor.constraint(equalTo: imageSecond.widthAnchor),
            
            imageFour.leadingAnchor.constraint(equalTo: imageThird.trailingAnchor, constant: 8),
            imageFour.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            imageFour.centerYAnchor.constraint(equalTo: imageFirst.centerYAnchor),
            imageFour.widthAnchor.constraint(equalTo: imageFirst.widthAnchor),
            imageFour.heightAnchor.constraint(equalTo: imageSecond.widthAnchor),
            
            buttonContinue.centerYAnchor.constraint(equalTo: labelTitle.centerYAnchor),
            buttonContinue.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            buttonContinue.widthAnchor.constraint(equalToConstant: 30),
            buttonContinue.heightAnchor.constraint(equalTo: buttonContinue.widthAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

