//
//  NewSchoolsDataTableViewCell.swift
//  NJSchools
//
//  Created by Elias Csipkay on 10/9/21
//

import UIKit

class NewSchoolsDataTableViewCell: UITableViewCell {

    @IBOutlet weak var schoolImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var ratingsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
