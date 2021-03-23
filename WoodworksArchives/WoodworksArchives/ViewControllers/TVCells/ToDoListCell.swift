//
//  ToDoListCell.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 3/23/21.
//

import UIKit

class ToDoListCell: UITableViewCell {
    
    // MARK:- ToDo List Fields
    
    @IBOutlet weak var jobNameTextField: UITextField!
    @IBOutlet weak var workerTextField: UITextField!
    @IBOutlet weak var notesTextView: UITextView!
    @IBOutlet weak var doneSwitchOutlet: UISwitch!
    @IBAction func doneSwitchTapped(_ sender: UISwitch) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setToDoListCell(toDoJob: DailyToDo) {
        jobNameTextField.text = toDoJob.jobName
        workerTextField.text = toDoJob.worker
        notesTextView.text = toDoJob.toDoListNotes
        doneSwitchOutlet.isOn = toDoJob.doneSwitch
    }

}
