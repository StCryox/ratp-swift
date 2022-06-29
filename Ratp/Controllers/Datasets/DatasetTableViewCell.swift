//
//  DatasetTableViewCell.swift
//  Ratp
//
//  Created by Ifzas Nguyen on 01/06/2022.
//

import UIKit

class DatasetTableViewCell: UITableViewCell {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var descLabel: UILabel!
    
    // eq. viewDidLoad pour les views dans un Xib
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setDataset(_ dataset: RatpDataset) {
        self.mainLabel.text = dataset.meta.title
        self.descLabel.text = dataset.meta.desc
    }
    
}
