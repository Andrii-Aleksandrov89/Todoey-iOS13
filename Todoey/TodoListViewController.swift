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
   
   
   
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return itemArray.count
   }
   
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
      
      cell.textLabel?.text = itemArray[indexPath.row]

      return cell
   }
   
   override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
      tableView.deselectRow(at: indexPath, animated: true)

   }


}

