//
//  RoundedCollectionViewCell.swift
//  PlanetPedia
//
//  Created by yk on 2/12/25.
//

import UIKit

class RoundedCollectionViewCell: UICollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Visual Effect View
        contentView.subviews.first?.layer.cornerRadius = 20
        contentView.subviews.first?.clipsToBounds = true
    }
}
