//
//  MyCommunitiesController.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 02.06.2022.
//

import UIKit

class MyCommunitiesController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    

    var allCommunities = [Community]()
    
    
    let allCommunitiesTableViewCellReuseIdentifier = "allCommunitiesTableViewCellReuseIdentifier"
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: allCommunitiesTableViewCellReuseIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(didPressToCommunity(_:)), name: NSNotification.Name("pressToCommunity"), object: nil)
    }
    
    
    @objc func didPressToCommunity(_ notification: Notification) {
        guard let community = notification.object as? Community else { return }
        
        if !allCommunities.contains(where: { communityItem in
            communityItem.name == community.name
        }) {
            allCommunities.append(community)
            tableView.reloadData()
        }
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}




