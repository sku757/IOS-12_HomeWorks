//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Артем Сизов on 28.07.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
   
    let photosStack: UIStackView = {
            let stackView = UIStackView()
            stackView.distribution = .fillEqually
            stackView.axis = .horizontal
            stackView.spacing = 8
            stackView.alignment = .center
            stackView.toAutoLayout()
            return stackView
        }()
    
    private let imageFirst: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "4"))
        image.layer.cornerRadius = 6
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.toAutoLayout()
        return image
    }()

    private let imageSecond: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "11-1"))
        image.layer.cornerRadius = 6
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.toAutoLayout()
        return image
    }()
    

    private let imageThird: UIImageView = {
       let image = UIImageView(image: #imageLiteral(resourceName: "9"))
        image.layer.cornerRadius = 6
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.toAutoLayout()
        return image
    }()
    
    private let imageFour: UIImageView = {
       let image = UIImageView(image: #imageLiteral(resourceName: "1"))
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
   
    private lazy var arrowImage: UIImageView = {
        let image = UIImageView(image: UIImage (systemName: "arrow.forward"))
        image.tintColor = .black
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.toAutoLayout()
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        
    }
    
    func setupViews() {
        contentView.addSubviews(labelTitle, arrowImage, photosStack)
        photosStack.addArrangedSubview(imageFirst)
        photosStack.addArrangedSubview(imageSecond)
        photosStack.addArrangedSubview(imageThird)
        photosStack.addArrangedSubview(imageFour)
        
        let constraints = [
            labelTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            labelTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            
            photosStack.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 12),
            photosStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            photosStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            photosStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            photosStack.heightAnchor.constraint(equalToConstant: (contentView.frame.size.width - 12 * 2 - 8 * 3) / 4),
            
            arrowImage.centerYAnchor.constraint(equalTo: labelTitle.centerYAnchor),
            arrowImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            arrowImage.widthAnchor.constraint(equalToConstant: 30),
            arrowImage.heightAnchor.constraint(equalTo: arrowImage.widthAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

