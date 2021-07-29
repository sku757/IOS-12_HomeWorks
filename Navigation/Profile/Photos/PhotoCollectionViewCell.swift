//
//  PhotoCollectionViewCell.swift
//  Navigation
//
//  Created by Артем Сизов on 29.07.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    var photo: images? {
        didSet{
            collectionPhoto.image = photo?.image
        }
    }
    
    private let collectionPhoto: UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.toAutoLayout()
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubviews(collectionPhoto)
        
        let constraints = [
            collectionPhoto.topAnchor.constraint(equalTo: contentView.topAnchor),
            collectionPhoto.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            collectionPhoto.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            collectionPhoto.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
