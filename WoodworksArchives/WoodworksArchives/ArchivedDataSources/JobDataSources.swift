//
//  JobDataSources.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 8/31/20.
//

import Foundation

struct Job {
    var clientName: String
    var builtProduct: String
    var finishColorNameAndCode: String
    var finishGallonUsage: Int
    var woodSpecies: String
    var installedDate: Date?
    
    static func pastInstalledDate(month: Int, day: Int, year: Int) -> Date? {
        var dateComponents = DateComponents()
        
        dateComponents.month = month
        dateComponents.day = day
        dateComponents.year = year
        
        let userCalendar = Calendar.current
        let pastInstallDate = userCalendar.date(from: dateComponents)
        
        return pastInstallDate
    }
}

struct SupplyOrder {
    var productName: String
    var productCode: String
    var productColor: String
    
    var orderSwitch = false
    var receivedSwitch = false
}

struct DailyToDo {
    var jobName: String
    var worker: String
    var toDoListNotes: String
    
    var doneSwitch = false
}
