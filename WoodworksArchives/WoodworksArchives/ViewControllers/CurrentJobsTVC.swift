//
//  CurrentJobsTVC.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 8/31/20.
//

import UIKit

class CurrentJobsTVC: UITableViewController {
    
//    MARK:- VARIABLES AND CONSTANTS
    var currentJobs: [Job] = [Job]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        currentJobs = listOfJobs.filter{$0.installedDate == nil}
        tableView.reloadData()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return currentJobs.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        95
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let currentJob = currentJobs[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "currentJob", for: indexPath) as! CurrentJobCell
        
        cell.setCurrentJobCell(currentJob: currentJob)
        
        return cell
    }
    
//    MARK:- Segue Stuff

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "CurrentToDetail" else { return }
        guard let detailVC = segue.destination as? JobDetailVC else {
            return
        }
        
        let indexPath = tableView.indexPathForSelectedRow!
        let job = currentJobs[indexPath.row]
        detailVC.job = job
    }
}
