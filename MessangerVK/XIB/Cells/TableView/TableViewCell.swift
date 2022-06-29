//
//  MyFriendsTableViewCell.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 04.06.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var shadowView: UIView!
    
    var shadowColor = #colorLiteral(red: 0.340602845, green: 0.1235674396, blue: 0.5884564519, alpha: 1)
    
    override func prepareForReuse() {
        super.prepareForReuse()
        avatar.image = nil
//        nameLabel = nil
    }
    
    func configure(image: UIImage?, name: String? ) {
        avatar.image = image
        nameLabel.text = name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shadowView.layer.shadowColor = shadowColor.cgColor
        shadowView.layer.shadowOffset = .zero
        shadowView.layer.shadowRadius = 7
        shadowView.layer.shadowOpacity = 0.8
        
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        shadowView.layer.cornerRadius = bounds.height/2
        avatar.layer.cornerRadius = avatar.bounds.width/2
    }
    
    func configure(_ community: Community) {
        avatar.image = UIImage(named: community.avatar)
        nameLabel.text = community.name
    }

    
}
