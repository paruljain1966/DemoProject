//
//  CustomCell.swift
//  SwiftDemo
//
//  Created by Parul Jain on 05/10/21.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var orderPrice: UILabel!
    @IBOutlet weak var orderTextLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//    init(style: UITableViewCell.CellStyle, reuseIdentifier: String) {
//            super.init(style: style, reuseIdentifier: reuseIdentifier)
//        }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
