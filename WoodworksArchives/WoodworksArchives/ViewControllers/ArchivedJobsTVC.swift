//
//  ArchivedJobsTVC.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 8/31/20.
//

import AuthenticationServices
import UIKit

class ArchivedJobsTVC: UITableViewController {
    
    //    MARK:- OUTLETS AND ACTIONS
    //    Outlets
    
//    MARK:- Constants and Variables
    var archivedJobs: [Job] = [Job]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        archivedJobs = JobController.sharedJobInstance.listOfJobs.filter{$0.installedDate != nil}
        tableView.reloadData()
    }
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return archivedJobs.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        95
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let archivedJob = archivedJobs[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArchivedJob") as! ArchivedTVCell
        
        cell.setArchievedCell(archivedJob: archivedJob)
        
        return cell
    }
    
//  MARK:- Segue Stuff
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ArchToDetail" else { return }
        guard let detailVC = segue.destination as? JobDetailVC else {
            return
        }
        
        let indexPath = tableView.indexPathForSelectedRow!
        let job = archivedJobs[indexPath.row]
        detailVC.job = job
    }

}
