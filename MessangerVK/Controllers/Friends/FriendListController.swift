//
//  MyFriendsViewController.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 02.06.2022.
//

import UIKit

class FriendListController: UIViewController {
 
    @IBOutlet weak var tableView: UITableView!
 
    
    func fillData() -> [Friend] {
        let friend1 = Friend(name: "Cassandra Murphy", avatar: "dino", album: ["dino1","dino2","dino3"])
        let friend2 = Friend(name: "Kirill Shchelkunov", avatar: "friend", album: ["monkey1","monkey2","monkey3"])
        let friend3 = Friend(name: "Tommy Vercetti", avatar: "tommy", album: ["tommy1", "tommy2", "tommy3"])
        let friend4 = Friend(name: "Carl Jonhson", avatar: "cj", album: ["carl1","carl2", "carl3"])
        let friend5 = Friend(name: "Agent Smith", avatar: "agent", album: ["agent1", "agent2", "agent3"])
        
        var friendsArray = [Friend]()
        friendsArray.append(friend1)
        friendsArray.append(friend2)
        friendsArray.append(friend3)
        friendsArray.append(friend4)
        friendsArray.append(friend5)
        
        return friendsArray
    }
    
    var myFriends = [Friend]()
    
    let friendListTableViewCellReuseIdentifier = "myFriendsTableViewCellReuseIdentifier"
    
    let fromFriendListToProfileSegue = "fromFriendListToProfileSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myFriends = fillData()
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: friendListTableViewCellReuseIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
}
    
