//
//  ArchivedTVCell.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 9/22/20.
//

import UIKit

class ArchivedTVCell: UITableViewCell {
    
    @IBOutlet weak var archClientNameLabel: UILabel!
    @IBOutlet weak var archBuiltProductLabel: UILabel!
    @IBOutlet weak var archWoodSpeciesLabel: UILabel!
    @IBOutlet weak var archInstalledDateLabel: UILabel!
    
    
    func setArchievedCell(archivedJob: Job) {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        
        archClientNameLabel.text = archivedJob.clientName
        archBuiltProductLabel.text = archivedJob.builtProduct
        archWoodSpeciesLabel.text = archivedJob.woodSpecies
        if let installedDate = archivedJob.installedDate {
            archInstalledDateLabel.text = formatter.string(from: installedDate)
        } else {
            archInstalledDateLabel.text = ""
        }
    }
    
    
}
