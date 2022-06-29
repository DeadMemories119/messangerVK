//
//  MCC + Delegate.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 09.06.2022.
//

import UIKit

extension MyCommunitiesController: UITableViewDelegate {


func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
}

   
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
   
}

func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    
}


}
