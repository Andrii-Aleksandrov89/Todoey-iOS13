//
//  ViewController.swift
//  Todoey
//
//  Created by Philipp Muellauer on 02/12/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
   
   var itemArray = ["finish two iOS lectures", "go for a walk", "meditate and chill", "think about my future career and plan future developers path"]

    override func viewDidLoad() {
        
      
      super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
   //Calculate number of instancel in the array
   
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return itemArray.count
   }
   
   //Create cells for table view with text from the array
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
      
      cell.textLabel?.text = itemArray[indexPath.row]

      return cell
   }
   
   // Set actions for cell on tap
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
      //Deselect cell highlight after tap
      tableView.deselectRow(at: indexPath, animated: true)
      
      // Add or remove checkmark on tap
      if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
         tableView.cellForRow(at: indexPath)?.accessoryType = .none
      } else {
         tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
      }
      
   }
   
   //Add new item button on navigation bar
   @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
      
      var textField = UITextField()
      
      //Create alert window with text field and two buttons
      let alert = UIAlertController(title: "Add new item", message: "", preferredStyle: .alert)
      
      //Tap "Add item" button
      let action = UIAlertAction(title: "Add item", style: .default) { (action) in
         
         //Add text from alert to itemsArray
         self.itemArray.append(textField.text!)
         
         //Refrest table view with new set of items from itemsArray
         self.tableView.reloadData()
         
      }
      //Tap "Cancel" button
      let cancel = UIAlertAction(title: "Cancel", style: .default) { (action) in
      }
      
      //Alert text field properties
      alert.addTextField { alertTextField in
         alertTextField.placeholder = "Create new item"
         textField = alertTextField
      }
      
      //Show alert with buttons and text field
      alert.addAction(action)
      alert.addAction(cancel)
      present(alert, animated: true, completion: nil)
   }
   
   
   
}

