//
//  StoreDetailsTableViewCell.swift
//  MyCT Store
//
//  Created by Prince Desai on 11/04/23.
//

import UIKit

class StoreDetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var storeImage: UIImageView!
    @IBOutlet weak var hasId: UILabel!
    @IBOutlet weak var storeNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var pendingAndConform: UILabel!
    @IBOutlet weak var reOrderOrCancle: UIButton!

    @IBOutlet weak var dateAndTime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }
    
}
