//
//  FriendProfileController.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 02.06.2022.
//

import UIKit

class ProfileCollectionController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
   
    
    let profileCollectionViewCellReuseIdentifier = "profileCollectionViewCellReuseIdentifier"
    
    var albumArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UINib(nibName: "ProfileCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: profileCollectionViewCellReuseIdentifier)
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        collectionView.reloadData()
    }
    
}

