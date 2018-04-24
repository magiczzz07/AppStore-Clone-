//
//  AppDelegate.swift
//  AppStore(Clone)
//
//  Created by Maggie Mostrou on 24/3/18.
//  Copyright © 2018 Georgia M. Mostrou. All rights reserved.
//
import Foundation
import UIKit

class LargeCategoryCell: CategoryCell {
    
    private let cellID = "cellID"
    
    override func setupViews() {
        super.setupViews()
        appsCollectionView.register(LargeAppCell.self, forCellWithReuseIdentifier: cellID)
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.UI.largeAppCellWidth, height: frame.height - Constants.UI.titleLabelHeight - Constants.UI.dividerLineHeight * 2)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! AppCell
        if let app = appCategory?.apps?[indexPath.row] {
            cell.app = app
        }
        return cell
    }
    
    private class LargeAppCell: AppCell {
        
        override func setupViews() {
            addSubview(appImageview)
            appImageview.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
            appImageview.topAnchor.constraint(equalTo: topAnchor, constant: 2).isActive = true
            appImageview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
            appImageview.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        }
    }
    
}
