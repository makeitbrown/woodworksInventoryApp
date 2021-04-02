//
//  JobDataSources.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 8/31/20.
//

import Foundation

class Job: Codable, Equatable {
    static func == (lhs: Job, rhs: Job) -> Bool {
        return lhs.clientName == rhs.clientName && lhs.builtProduct == rhs.builtProduct && lhs.finishColorNameAndCode == rhs.finishColorNameAndCode && lhs.finishGallonUsage == rhs.finishGallonUsage && lhs.woodSpecies == rhs.woodSpecies && lhs.installedDate == rhs.installedDate
    }
    
    static let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let archiveURL = documentsDirectory.appendingPathComponent("Jobs_data").appendingPathExtension("plist")
    
    var clientName: String
    var builtProduct: String
    var finishColorNameAndCode: String
    var finishGallonUsage: Int
    var woodSpecies: String
    
    // MARK:- Install Date Data and Past Installation Date Function
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
    
    //    MARK: - Save to file
    
    static func saveJobsToFile()  {
        let jobs = JobController.sharedJobInstance.listOfJobs
        let propertyListEncoder = PropertyListEncoder()
        let encodedJobs = try? propertyListEncoder.encode(jobs)
        
        try? encodedJobs?.write(to: archiveURL, options: .noFileProtection)
    }
    
    //    MARK: - Load from file
    static func loadJobsFromFile() -> [Job] {
    let propertyListDecoder = PropertyListDecoder()
    
        if let retrievedJobsData = try? Data(contentsOf: archiveURL), let decodedJobs = try? propertyListDecoder.decode([Job].self, from: retrievedJobsData) { return decodedJobs }
        return JobController.sharedJobInstance.listOfJobs
    }
    
    init(clientName: String, builtProduct: String, finishColorNameAndCode: String, finishGallonUsage: Int, woodSpecies: String, installedDate: Date?) {
        self.clientName = clientName
        self.builtProduct = builtProduct
        self.finishColorNameAndCode = finishColorNameAndCode
        self.finishGallonUsage = finishGallonUsage
        self.woodSpecies = woodSpecies
        self.installedDate = installedDate
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


