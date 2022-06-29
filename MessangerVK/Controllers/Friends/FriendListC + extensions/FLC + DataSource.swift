//
//  FLC + DataSource.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 08.06.2022.
//

import UIKit

extension FriendListController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: friendListTableViewCellReuseIdentifier, for: indexPath) as? TableViewCell else { return UITableViewCell() }
        
        let friend = myFriends[indexPath.row]
        cell.configure(image: UIImage(named: friend.avatar!), name: friend.name)
        return cell
    }
    
    


}
