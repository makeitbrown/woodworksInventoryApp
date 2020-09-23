//
//  ArchivedTVCell.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 9/22/20.
//

import UIKit

class ArchivedTVCell: UITableViewCell {
    
    @IBOutlet weak var archClientNameLabel: UILabel!
    @IBOutlet weak var archColorsLabel: UILabel!
    @IBOutlet weak var archWoodSpeciesLabel: UILabel!
    @IBOutlet weak var archInstalledDateLabel: UILabel!
    
    
    func setArchievedCell(archivedJob: ArchivedJob) {
        archClientNameLabel.text = archivedJob.clientName
        archColorsLabel.text = archivedJob.finishColorNameAndCode
        archWoodSpeciesLabel.text = archivedJob.woodSpecies
        archInstalledDateLabel.text = archivedJob.installedDate
    }
    
    
}
