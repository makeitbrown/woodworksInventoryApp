//
//  JobDataSources.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 8/31/20.
//

import Foundation

struct CurrentJob {
    var clientName: String
    var builtProduct: String
    var finishColorNameAndCode: String
    var finishGallonUsage: Int
    var woodSpecies: String
    var installedSwitch: Bool
}

struct ArchivedJob {
    var clientName: String
    var builtProduct: String
    var finishColorNameAndCode: String
    var finishGallonUsage: Int
    var woodSpecies: String
    var installedDate: String
}

struct SupplyOrder {
    var productName: String
    var productCode: String
    var productColor: String
    
    var orderSwitch: Bool
    var receivedSwitch: Bool
}

struct DailyToDo {
    var jobName: String
    var worker: String
    var toDoListNotes: String
}
