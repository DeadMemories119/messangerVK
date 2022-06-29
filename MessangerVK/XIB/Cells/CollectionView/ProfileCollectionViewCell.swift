//
//  ProfileCollectionViewCell.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 08.06.2022.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var profilePictureView: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profilePictureView.layer.cornerRadius = profilePictureView.bounds.width/2
        
    }
    
    override func prepareForReuse() {
        profilePictureView.image = nil
    }
    
    func configure(image: UIImage?) {
        profilePictureView.image = image
    }

}
