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
    
    var closure :(() -> Void)?
    
    override func prepareForReuse() {
        super.prepareForReuse()
        avatar.image = nil
        closure = nil
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
    
    func configure(image: UIImage?, name: String?, closure: @escaping () -> Void) {
        avatar.image = image
        nameLabel.text = name
        self.closure = closure
    }
    
    func configure(_ community: Community) {
        avatar.image = UIImage(named: community.avatar)
        nameLabel.text = community.name
    }
    
    
    @IBAction func pressedViewAnimationButton(_ sender: UIButton) {

        UIView.animate(withDuration: 0.08,
                       delay: 0,
                       options: [.autoreverse, .beginFromCurrentState]) { [weak self] in
            self?.avatar.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            self?.shadowView.transform = CGAffineTransform(scaleX: 0.85, y: 0.85)
        } completion: { [weak self] _ in
            self?.closure?()
            self?.avatar.transform = CGAffineTransform(scaleX: 1, y: 1)
            self?.shadowView.transform = CGAffineTransform(scaleX: 1, y: 1)
        }

        
    }
    
    
}
