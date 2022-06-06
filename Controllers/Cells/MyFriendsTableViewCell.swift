//
//  MyFriendsTableViewCell.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 04.06.2022.
//

import UIKit

class MyFriendsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var friendAvatar: UIImageView!
    @IBOutlet weak var friendNameLabel: UILabel!
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        friendAvatar.image = nil
        friendNameLabel = nil
    }
    
    func configure(image: UIImage?, name: String? ) {
        friendAvatar.image = image
        friendNameLabel.text = name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        friendAvatar.layer.cornerRadius = friendAvatar.bounds.width/2
        
    }

    
}
