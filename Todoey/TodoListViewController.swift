//
//  ViewController.swift
//  Todoey
//
//  Created by Philipp Muellauer on 02/12/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
   
   let itemArray = ["finish two iOS lectures", "go for a walk", "meditate and chill", "think about my future career and plan future developers path"]

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
}

