//
//  MyFriendsViewController.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 02.06.2022.
//

import UIKit

class MyFriendsController: UIViewController, UITableViewDelegate {
 
    @IBOutlet weak var tableView: UITableView!
 
    
    func fillData() -> [Friend] {
        let friend1 = Friend(name: "Cassandra Murphy", avatar: "dino", album: [])
        let friend2 = Friend(name: "Kirill Shchelkunov", avatar: "friend", album: [])
        let friend3 = Friend(name: "Tommy Vercetti", avatar: "tommy", album: [])
        let friend4 = Friend(name: "Carl Jonhson", avatar: "cj", album: [])
        let friend5 = Friend(name: "Agent Smith", avatar: "agent", album: [])
        
        var friendsArray = [Friend]()
        friendsArray.append(friend1)
        friendsArray.append(friend2)
        friendsArray.append(friend3)
        friendsArray.append(friend4)
        friendsArray.append(friend5)
        
        return friendsArray
    }
    
    var myFriends = [Friend]()
    
    let myFriendsTableViewCellReuseIdentifier = "myFriendsTableViewCellReuseIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        myFriends = fillData()
        
        tableView.register(UINib(nibName: "MyFriendsTableViewCell", bundle: nil), forCellReuseIdentifier: myFriendsTableViewCellReuseIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
    }
    

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
    }
    
    
}




extension MyFriendsController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: myFriendsTableViewCellReuseIdentifier, for: indexPath) as? MyFriendsTableViewCell else { return UITableViewCell() }
        
        let friend = myFriends[indexPath.row]
        cell.configure(image: UIImage(named: friend.avatar!), name: friend.name)
        return cell
    }
    
    


}
