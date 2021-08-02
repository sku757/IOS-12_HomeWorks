
//  ProfileViewController.swift
//  Navigation
//
//  Created by Артем Сизов on 05.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController{

    
    private let tableView = UITableView(frame: .zero, style: .grouped)
    private let cellId = "cellId"
    private let cellIdTwo = "cellId"
      
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }

         override func viewDidLoad() {
             super.viewDidLoad()
             title = "BMW's"
//             navigationController?.navigationBar.isHidden = true
             setUpTableView()
         }

         private func setUpTableView() {
             view.addSubview(tableView)
             tableView.toAutoLayout()
             tableView.dataSource = self
             tableView.delegate = self
            tableView.register(PostTableViewCell.self, forCellReuseIdentifier: String(describing:PostTableViewCell.self))
            tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: String(describing:PhotosTableViewCell.self))
//            tableView.register(ProfileHeaderView.self, forHeaderFooterViewReuseIdentifier: ProfileHeaderView.reuseid)

             let constraints = [
                 tableView.topAnchor.constraint(equalTo: view.topAnchor),
                 tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                 tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                 tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
             ]

             NSLayoutConstraint.activate(constraints)
         }
     }


     // MARK: UITableViewDataSource

     extension ProfileViewController: UITableViewDataSource {
        
        func numberOfSections(in tableView: UITableView) -> Int {
            2
        }
        
         func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          
            switch section {
            case 0:
                return 1
            default:
                return PostStorage.postArray.count
            }
            
         }

         func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            switch indexPath.section{

            case 0:
                let photoCell:PhotosTableViewCell = tableView.dequeueReusableCell(withIdentifier: String(describing:PhotosTableViewCell.self), for: indexPath) as! PhotosTableViewCell
                return photoCell
            default:
                let cell: PostTableViewCell = tableView.dequeueReusableCell(withIdentifier: String(describing:PostTableViewCell.self), for: indexPath) as! PostTableViewCell
                cell.post = PostStorage.postArray[indexPath.row]
                return cell
            }
            
//             let cell: PostTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! PostTableViewCell
//             cell.post = PostStorage.postArray[indexPath.row]
//
//             return cell
         }

         func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
             return UITableView.automaticDimension
         }
//        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//            return "BMW"
//        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            let car = PostStorage.postArray[indexPath.row]
            print(car.likes)
            
            if indexPath.section == 0 {
                let d = PhotosViewController()
                navigationController?.pushViewController(d, animated: true)
            }
        }
     }

// MARK: Delegate

    extension ProfileViewController:UITableViewDelegate{
        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            switch section {
            case 0:
                let header = ProfileHeaderView()
                return header
            default:
                return nil
            }
        }
        
//        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//            let headerview = tableView.dequeueReusableHeaderFooterView(withIdentifier: ProfileHeaderView.reuseid) as! ProfileHeaderView
//            return headerview
//        }
    }
    
    
    
    
    
//    private let tableView = UITableView(frame: .zero, style: .plain)
//    private let cellID = "cellID"
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        navigationController?.navigationBar.isHidden = true
//        setupTableView()
//    }
//
//    private func setupTableView() {
//        view.addSubview(tableView)
//        tableView.toAutoLayout()
//        tableView.dataSource = self
//        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: cellID)
//
//
//        let constraints = [
//            tableView.topAnchor.constraint(equalTo: view.topAnchor),
//            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
//        ]
//        NSLayoutConstraint.activate(constraints)
//    }
//}
//
//// MARK: DataSource
//extension ProfileViewController: UITableViewDataSource {
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return PostsArray.postsArray.count
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return PostsArray.postsArray.count
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell: PostTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellID , for: indexPath) as! PostTableViewCell
//
//        cell.post = PostsArray.postsArray[indexPath.row]
//
////        cell.textLabel?.text = postsArray[indexPath.row]
//////        cell.accessoryType = .checkmark
////        cell.accessoryType = indexPath.row % 2 == 0 ? .checkmark : .disclosureIndicator
////        cell.imageView?.image = UIImage(named: "bmw")
//        return cell
//    }
//}
//----------------------------------------------------
////    let button = UIButton()
////    private let someView:ProfileHeaderView = ProfileHeaderView()
//    private(set) lazy var newButton: UIButton = {
//             let newButton = UIButton()
//             newButton.setTitle("BUTTON", for: .normal)
//             return newButton
//         }()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.view.addSubview(newButton)
//        newButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
//        newButton.setTitleColor(.white, for: .normal)
//        newButton.layer.backgroundColor = UIColor.blue.cgColor
//        newButton.layer.cornerRadius = 14
//        newButton.layer.shadowColor = UIColor.black.cgColor
//        newButton.layer.shadowOffset = CGSize(width: 4, height: 4)
//        newButton.layer.shadowOpacity = 0.7
//        newButton.translatesAutoresizingMaskIntoConstraints = false
//        newButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
//        newButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        newButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: +16).isActive = true
//        newButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
//        newButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
////        view.backgroundColor = .lightGray
////        view.addSubview(someView)
////        button.setTitle("Set status", for: .normal)
////        button.frame = .init(x: 150, y: 450, width: 150, height: 150)
////        button.layer.cornerRadius = 8
////        button.backgroundColor = .systemBlue
////        view.addSubview(button)
//    }
//
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
////        someView.frame = view.frame
//    }
//    @IBOutlet weak var image: UIImageView!
//    @IBOutlet weak var label: UILabel!
//    @IBOutlet weak var label1: UILabel!
//    @IBOutlet weak var textfield: UITextField!
//    @IBOutlet weak var button: UIButton!

