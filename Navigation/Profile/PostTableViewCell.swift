//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Артем Сизов on 30.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    
    var post: PostVK? {
             didSet {
                 authorLabel.text = post?.author
                postImageView.image = UIImage(named: post?.image ?? "No image")
                 descriptionLabel.text = post?.description
                likesLabel.text = "Likes: \(post?.likes ?? 0)"
                viewsLabel.text = "Views: \(post?.views ?? 0)"
             }
         }

         private let authorLabel: UILabel = {
             let label = UILabel()
             label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
             label.textColor = .black
             label.textAlignment = .left
             label.numberOfLines = 2
             label.toAutoLayout()
             return label
         }()

         private let postImageView: UIImageView = {
             let image = UIImageView()
             image.contentMode = .scaleAspectFit
             image.clipsToBounds = true
             image.backgroundColor = .black
             image.toAutoLayout()
             return image
         }()

         private let descriptionLabel: UILabel = {
             let label = UILabel()
             label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
             label.textColor = .systemGray
             label.numberOfLines = 0
             label.toAutoLayout()
             return label
         }()

         private let likesLabel: UILabel = {
             let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
             label.textColor = .black
             label.toAutoLayout()
             return label
         }()

         private let viewsLabel: UILabel = {
             let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
             label.textColor = .black
             label.toAutoLayout()
             return label
         }()

         override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
             super.init(style: style, reuseIdentifier: reuseIdentifier)

             setupViews()
         }

         required init?(coder: NSCoder) {
             fatalError("init(coder:) has not been implemented")
         }

         private func setupViews() {
             contentView.addSubviews(authorLabel, postImageView, descriptionLabel, likesLabel, viewsLabel)

             let constraints = [
                 authorLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
                 authorLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                 authorLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),

                 postImageView.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 16),
                 postImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                 postImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                 postImageView.heightAnchor.constraint(equalTo: postImageView.widthAnchor),

                 descriptionLabel.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 16),
                 descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                 descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),

                 likesLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
                 likesLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                 likesLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),

                 viewsLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
                 viewsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
                 viewsLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
             ]

             NSLayoutConstraint.activate(constraints)
         }
}
extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { self.addSubview($0)}
    }
}
//    var post: Posts? {
//        didSet{
//            authorLabel.text = post?.author
//            postImageView.image = post?.image
//            descriptionLabel.text = post?.description
//            likesLabel.text = post?.likes
//            viewsLabel.text = post?.views
//        }
//    }
//
//    private let postImageView: UIImageView = {
//        let imageview = UIImageView()
//        imageview.contentMode = .scaleAspectFill
//        imageview.toAutoLayout()
//        return imageview
//    }()
//
//    private let authorLabel: UILabel = {
//        let authorLabel = UILabel()
//        authorLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
//        authorLabel.textColor = .black
//        authorLabel.numberOfLines = 2
//        authorLabel.textAlignment = .left
//        authorLabel.toAutoLayout()
//        return authorLabel
//    }()
//
//    private let descriptionLabel: UILabel = {
//        let descLabel = UILabel()
//        descLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
//        descLabel.numberOfLines = 0
//        descLabel.textColor = .systemGray
//        descLabel.toAutoLayout()
//        return descLabel
//    }()
//
//    private let likesLabel: UILabel = {
//        let likesLabel = UILabel()
//        likesLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
//        likesLabel.textColor = .black
//        likesLabel.toAutoLayout()
//        return likesLabel
//    }()
//
//    private let viewsLabel: UILabel = {
//        let viewsLabel = UILabel()
//        viewsLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
//        viewsLabel.textColor = .black
//        viewsLabel.toAutoLayout()
//        return viewsLabel
//    }()
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//
//        setupViews()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    private func setupViews(){
//        contentView.addSubviews(
//            authorLabel,postImageView,descriptionLabel,likesLabel,viewsLabel)
//
//        let constraints = [
//            authorLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
//            authorLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//            authorLabel.trailingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: -16),
//
//            postImageView.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 16),
//            postImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            postImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
//            postImageView.widthAnchor.constraint(equalTo: postImageView.heightAnchor),
//
//            descriptionLabel.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 16),
//            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
//
//            likesLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
//            likesLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//            likesLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
//        ]
//
//        NSLayoutConstraint.activate(constraints)
//
//    }
//
//}
//

