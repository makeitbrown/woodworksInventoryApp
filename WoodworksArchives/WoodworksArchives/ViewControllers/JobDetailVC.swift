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
    @IBOutlet weak var installedDateTextField: UITextField!
    @IBOutlet weak var installedSwitch: UISwitch!
    @IBOutlet weak var installedDateVStack: UIStackView!
    
    //    Actions
    
    @IBAction func installSwitch(_ sender: Any) {
        if installedSwitch.isOn == true {
            installedDateVStack.isHidden = false
        } else {
            installedDateVStack.isHidden = true
        }
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let clientName = clientNameTextField.text,
              let builtProduct = builtProductsTextView.text,
              let productNameAndCodes = productNameAndCodeTextView.text,
              let finishUsage = Int(gallonsTextField.text ?? "0"),
              let woodSpecies = woodSpeciesTextView.text
        else { return }

        if job?.installedDate != Date() {
            job?.clientName = clientName
            job?.builtProduct = builtProduct
            job?.finishColorNameAndCode = productNameAndCodes
            job?.finishGallonUsage = finishUsage
            job?.woodSpecies = woodSpecies
            if let datePicker = self.installedDateTextField.inputView as? UIDatePicker {
                job?.installedDate = datePicker.date
            }
        } else {
            job = Job(clientName: clientName,
                      builtProduct: builtProduct,
                      finishColorNameAndCode: productNameAndCodes,
                      finishGallonUsage: finishUsage,
                      woodSpecies: woodSpecies,
                      installedDate: nil)
        }
        navigationController?.popViewController(animated: true)
    }
    
    // MARK:- Variables and Constants
    
    var job: Job?
    
    override func viewDidLoad() {
        updateUI()
        installedDateTextField.addInputViewDatePicker(target: self, selector: #selector(doneButtonPressed))
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // MARK:- Functions
    
    @objc func doneButtonPressed() {
        if let  datePicker = self.installedDateTextField.inputView as? UIDatePicker {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd/yyyy"
            self.installedDateTextField.text = dateFormatter.string(from: datePicker.date)
        }
        self.installedDateTextField.resignFirstResponder()
    }
    
    func updateUI() {
        
        clientNameTextField.text = job?.clientName
        builtProductsTextView.text = job?.builtProduct
        woodSpeciesTextView.text = job?.woodSpecies
        productNameAndCodeTextView.text = job?.finishColorNameAndCode
        gallonsTextField.text = String(job?.finishGallonUsage ?? 0)
        
        if job?.installedDate == nil {
            installedSwitch.isOn = false
        } else {
            installedSwitch.isOn = true
        }
        
        if installedSwitch.isOn == true {
            installedDateVStack.isHidden = false
        } else {
            installedDateVStack.isHidden = true
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        self.installedDateTextField.text = dateFormatter.string(from: job?.installedDate ?? Date())
        
        //        Input Border Control
        clientNameTextField.layer.borderWidth = 1
        builtProductsTextView.layer.borderWidth = 1
        woodSpeciesTextView.layer.borderWidth = 1
        productNameAndCodeTextView.layer.borderWidth = 1
        installedDateTextField.layer.borderWidth = 1
        gallonsTextField.layer.borderWidth = 1
    }
    
    //    MARK:- Segue
    
    
}

extension UITextField {
    
    func addInputViewDatePicker(target: Any, selector: Selector) {
        
        let screenWidth = UIScreen.main.bounds.width
        
        //Add DatePicker as inputView
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 216))
        datePicker.datePickerMode = .date
        self.inputView = datePicker
        
        //Add Tool Bar as input AccessoryView
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 44))
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelBarButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelPressed))
        let doneBarButton = UIBarButtonItem(title: "Done", style: .plain, target: target, action: selector)
        toolBar.setItems([cancelBarButton, flexibleSpace, doneBarButton], animated: false)
        
        self.inputAccessoryView = toolBar
    }
    
    @objc func cancelPressed() {
        self.resignFirstResponder()
    }
}
