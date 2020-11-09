//
//  CurrentJobCell.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 9/24/20.
//

import UIKit

class CurrentJobCell: UITableViewCell {
    
//Outlets
    @IBOutlet weak var currentClientName: UILabel!
    @IBOutlet weak var currentBuiltProductLabel: UILabel!
    @IBOutlet weak var currentWoodSpecies: UILabel!
    @IBOutlet weak var currentInstalledSwitch: UISwitch!
    
//    Actions
    @IBAction func currentInstallSwitchDate(_ sender: UISwitch) {
    }
    
    func setCurrentJobCell(currentJob: Job) {
        currentClientName.text = currentJob.clientName
        currentBuiltProductLabel.text = currentJob.builtProduct
        currentWoodSpecies.text = currentJob.woodSpecies
//        currentInstalledSwitch.isOn = currentJob.installedDate
    }
}
