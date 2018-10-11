//
//  UICollectionViewCellExtension.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/8/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import UIKit

extension UICollectionViewCell {
    func configureCell() {

        layer.cornerRadius = 5.0
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.clear.cgColor
        layer.masksToBounds = true
        
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 2.0
        layer.shadowOpacity = 1.0
        layer.masksToBounds = false
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: contentView.layer.cornerRadius).cgPath
    }
}
