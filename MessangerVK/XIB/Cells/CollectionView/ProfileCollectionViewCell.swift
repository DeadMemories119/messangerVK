//
//  ProfileCollectionViewCell.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 08.06.2022.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var profilePictureView: UIImageView!
    @IBOutlet weak var likeControlView: LikeControlView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profilePictureView.layer.cornerRadius = profilePictureView.bounds.width/2
        
    }
    
    override func prepareForReuse() {
        profilePictureView.image = nil
        likeControlView.configure(isLikePressed: false, counter: 0)
    }
    
    func configure(image: UIImage?, isLiked: Bool, likeCounter: Int) {
        profilePictureView.image = image
        likeControlView.configure(isLikePressed: isLiked, counter: likeCounter)
    }

}
