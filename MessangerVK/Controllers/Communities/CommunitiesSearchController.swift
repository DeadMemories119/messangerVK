//
//  CommunitiesSearchController.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 02.06.2022.
//

import UIKit

class CommunitiesSearchController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    func fillData() -> [Community] {
   
        let allCommunities : [Community] = [

            .init(name: "Best Of MMA", avatar: "Best of MMA"),
            .init(name: "Внезапные теории", avatar: "Внезапные теории"),
            .init(name: "Всратые животные", avatar: "Всратые животные"),
            .init(name: "Добрые мемы", avatar: "Добрые мемы"),
            .init(name: "A L M E R I A", avatar: "Almeria"),
            .init(name: "Art of Pain Tattoo", avatar: "Art of Pain"),
            .init(name: "Economy we deserve", avatar: "Economy we deserve"),
            .init(name: "Manchster United", avatar: "Manchster United"),
            .init(name: "My Life is MMA", avatar: "My Life is MMA"),
            .init(name: "Soccer", avatar: "Soccer")
        ]
        
        return allCommunities
    }
    
    var allCommunities = [Community]()
    
    
    let allCommunitiesTableViewCellReuseIdentifier = "allCommunitiesTableViewCellReuseIdentifier"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        allCommunities = fillData()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: allCommunitiesTableViewCellReuseIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
    }
    

}


