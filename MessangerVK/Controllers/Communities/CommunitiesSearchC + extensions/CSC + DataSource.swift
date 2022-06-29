//
//  CSC + DataSource.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 09.06.2022.
//

import UIKit

extension CommunitiesSearchController: UITableViewDataSource {
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCommunities.count
    }


     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
         guard let cell = tableView.dequeueReusableCell(withIdentifier: allCommunitiesTableViewCellReuseIdentifier, for: indexPath) as? TableViewCell else { return UITableViewCell() }
         cell.configure(self.allCommunities[indexPath.row])
    
       return cell
    }
    
    
}


