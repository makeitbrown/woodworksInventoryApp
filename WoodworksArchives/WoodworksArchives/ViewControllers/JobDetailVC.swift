//
//  JobDetailVC.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 8/31/20.
//

import UIKit

class JobDetailVC: UIViewController {
    
//    MARK:- OUTLETS AND ACTIONS
    
//                      Outlets
    
//    Client Name
    @IBOutlet weak var clientNameTextField: UITextField!
    //    Built Products
    @IBOutlet weak var builtProductsTextView: UITextView!
    //    Wood Species
    @IBOutlet weak var woodSpeciesTextView: UITextView!
    //    Product Name and Codes
    @IBOutlet weak var productNameAndCodeTextView: UITextView!
    @IBOutlet weak var gallonsTextField: UITextField!
    //    Installed
    @IBOutlet weak var installedDateLabel: UILabel!
    @IBOutlet weak var installedSwitch: UISwitch!
    
//    Actions
    @IBAction func installedSwitchIsOn(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

