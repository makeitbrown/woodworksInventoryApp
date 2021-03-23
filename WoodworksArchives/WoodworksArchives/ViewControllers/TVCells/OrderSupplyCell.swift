//
//  OrderSupplyCell.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 11/3/20.
//

import UIKit

class OrderSupplyCell: UITableViewCell {

    @IBOutlet weak var productNameTextField: UITextField!
    @IBOutlet weak var productCodeTextField: UITextField!
    @IBOutlet weak var productColorTextField: UITextField!
    
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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setOrderSupplyCell(supplyNeeded: SupplyOrder) {
        productNameTextField.text = supplyNeeded.productName
        productCodeTextField.text = supplyNeeded.productCode
        productColorTextField.text = supplyNeeded.productColor
        orderSwitchOutlet.isOn = supplyNeeded.orderSwitch
        receivedSwitchOutlet.isOn = supplyNeeded.receivedSwitch
    }
}
