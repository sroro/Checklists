//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Rodolphe Schnetzer on 27/08/2022.
//

import Foundation
import UIKit

class AddItemViewController: UITableViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func cancelButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func doneButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        guard let text = textField.text else {return}
        print(text)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
    
}
