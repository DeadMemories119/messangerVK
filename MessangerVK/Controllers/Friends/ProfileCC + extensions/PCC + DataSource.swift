//
//  PVC + DataSource.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 08.06.2022.
//
import UIKit

extension ProfileCollectionController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.albumArray.count
    }

    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: profileCollectionViewCellReuseIdentifier, for: indexPath) as! ProfileCollectionViewCell
        
        cell.configure(image: UIImage(named: self.albumArray[indexPath.item]))
        
        return cell
    }

}
