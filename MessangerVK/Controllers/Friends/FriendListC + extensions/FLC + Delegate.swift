//
//  FLC + Delegate.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 08.06.2022.
//

import UIKit

extension FriendListController: UITableViewDelegate {


func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
}

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier == fromFriendListToProfileSegue,
           let destinantionController = segue.destination as? ProfileCollectionController,
           let album = sender as? [String] {
            
            destinantionController.albumArray = album
        }
    }
//
//func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    let album = myFriends[indexPath.row].album
//    performSegue(withIdentifier: fromFriendListToProfileSegue, sender: album)
//}

func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    
}


}
