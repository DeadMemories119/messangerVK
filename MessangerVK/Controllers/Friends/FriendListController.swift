//
//  MyFriendsViewController.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 02.06.2022.
//

import UIKit

class FriendListController: UIViewController {
 
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    func fillData() -> [Friend] {
   
        let friendsArray : [Friend] = [
        
            .init(name: "Cassandra Murphy", avatar: "dino", album: ["dino1","dino2","dino3"]),
            .init(name: "Kirill Shchelkunov", avatar: "friend", album: ["monkey1","monkey2","monkey3"]),
            .init(name: "Tommy Vercetti", avatar: "tommy", album: ["tommy1", "tommy2", "tommy3"]),
            .init(name: "Carl Jonhson", avatar: "cj", album: ["carl1","carl2", "carl3"]),
            .init(name: "Agent Smith", avatar: "agent", album: ["agent1", "agent2", "agent3"]),
            .init(name: "Alexey Navalny", avatar: "navalny", album: ["navalny1","navalny2", "navalny3", "navalny4"]),
            .init(name: "War Criminal", avatar: "putin", album: ["putin1", "putin2", "putin3", "putin4"])
        ]
        
        return friendsArray
    }
    
    var sourceName = [Friend]()
    var myFriends = [Friend]()
    
    let friendListTableViewCellReuseIdentifier = "myFriendsTableViewCellReuseIdentifier"
    
    let fromFriendListToProfileSegue = "fromFriendListToProfileSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myFriends = fillData()
        sourceName = myFriends
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: friendListTableViewCellReuseIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
        searchBar.delegate = self
    }
    
    
}
    

extension FriendListController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText.isEmpty {
            myFriends = sourceName
        }
        else {
            myFriends = sourceName.filter({ friendItem in
                friendItem.name!.lowercased().contains(searchText)
                
            })
        }
        
        tableView.reloadData()
    }
    
    
    
    
    
}
