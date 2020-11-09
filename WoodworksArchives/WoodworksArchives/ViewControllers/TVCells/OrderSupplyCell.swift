//
//  OrderSupplyCell.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 11/3/20.
//

import UIKit

class OrderSupplyCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //    ORDERED
        @IBOutlet weak var orderedLabel: UILabel!
    @IBOutlet weak var orderSwitchOutlet: UISwitch!
    @IBAction func orderedSwitchIsOn(_ sender: UISwitch) {
        }
        
    //    RECEIVED
        @IBOutlet weak var receivedLabel: UILabel!
    @IBOutlet weak var receivedSwitchOutlet: UISwitch!
    @IBAction func receivedSwitchIsOn(_ sender: UISwitch) {
        }

}
