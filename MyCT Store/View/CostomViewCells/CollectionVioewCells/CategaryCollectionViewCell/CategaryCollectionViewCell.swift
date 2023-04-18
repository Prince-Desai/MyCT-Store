//
//  CategaryCollectionViewCell.swift
//  MyCT Store
//
//  Created by Prince Desai on 29/03/23.
//

import UIKit

class CategaryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setCorner(radius: 4)
    }

}
