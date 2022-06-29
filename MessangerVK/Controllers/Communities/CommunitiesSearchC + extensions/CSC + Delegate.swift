//
//  CSC + Delegate.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 09.06.2022.
//

import UIKit

extension CommunitiesSearchController: UITableViewDelegate {

    

func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
}

   
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let communities = allCommunities[indexPath.item]
    NotificationCenter.default.post(name: NSNotification.Name("pressToCommunity"), object: communities)
   
}

func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    
}


}
