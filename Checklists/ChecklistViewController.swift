//
//  ViewController.swift
//  Checklists
//
//  Created by Rodolphe Schnetzer on 13/06/2022.
//

import UIKit

class ChecklistViewControllerViewController: UITableViewController {
    
    // MARK: - Methods
    @IBAction func addItem(_ sender: Any) {
        
        let newRowIndex = items.count
        
        //add new item in items array
        let item = ChecklistItem()
        item.text = "I'm new element"
        items.append(item)
        
        let indexPath = IndexPath(row: newRowIndex, section: 0)
        let indexPaths = [indexPath]
        
        //with: .left add a animation when add new row
        tableView.insertRows(at: indexPaths, with: .left)
                
    }
    // MARK: - Properties
    var items = [ChecklistItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let item1 = ChecklistItem()
          item1.text = "Walk the dog"
          items.append(item1)

          let item2 = ChecklistItem()
          item2.text = "Brush my teeth"
          item2.checked = true
          items.append(item2)

          let item3 = ChecklistItem()
          item3.text = "Learn iOS development"
          item3.checked = true
          items.append(item3)

          let item4 = ChecklistItem()
          item4.text = "Soccer practice"
          items.append(item4)

          let item5 = ChecklistItem()
          item5.text = "Eat ice cream"
          items.append(item5)
        tableView.reloadData()
        
    }
    
    
    // MARK: - TableView data source
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem", for: indexPath)
        
        
        let label = cell.viewWithTag(1000) as! UILabel
        let item = items[indexPath.row]
        label.text = item.text
        
        configureCheckmark(for: cell, with: item)
        return cell
    }
    
    
    // MARK: - tableview delegate
    
    // deselectionne la cellule touché change le checkmark
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            
            let item = items[indexPath.row]
                item.checked.toggle()

            configureCheckmark(for: cell, with: item)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // delete row with swipe. swipe is working with : commit editingStyle: UITableViewCell.EditingStyle
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath) {
        items.remove(at: indexPath.row)
        
        let indexPaths = [indexPath]
        tableView.deleteRows(at: indexPaths, with: .fade)
    }
    
    
    func configureCheckmark(for cell: UITableViewCell, with item: ChecklistItem) {
        
        if item.checked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
}



