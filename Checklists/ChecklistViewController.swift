//
//  ViewController.swift
//  Checklists
//
//  Created by Rodolphe Schnetzer on 13/06/2022.
//

import UIKit

class ChecklistViewControllerViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath)
        return cell
    }
    
}
    
