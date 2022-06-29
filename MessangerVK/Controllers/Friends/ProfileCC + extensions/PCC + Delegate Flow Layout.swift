//
//  PCC + Delegate.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 08.06.2022.
//

import UIKit

extension ProfileCollectionController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.bounds.width
        let whiteSpaces: CGFloat = 20
        let cellWidth = width - whiteSpaces
        
        return CGSize(width: cellWidth, height: cellWidth)
        
    }
    
}
