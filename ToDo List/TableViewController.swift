//
//  TableTableViewController.swift
//  ToDo List
//
//  Created by Marian Rempola on 7/13/20.
//  Copyright © 2020 Marian Rempola. All rights reserved.
//

import UIKit

func createToDos() -> [ToDo] {
    
    let swift = ToDo()
    swift.name = "Learn Swift"
    swift.important = true
    
    let dog = ToDo()
    dog.name = "Walk the Dog"
    //important is false (default)
    
    return [swift, dog]
}

class TableViewController: UITableViewController {
    
    var toDos : [ToDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let toDo = toDos[indexPath.row]
        
        if toDo.important{
            cell.textLabel?.text = "!" + toDo.name
        } else{
            cell.textLabel?.text = toDo.name
        }

        return cell
    }
    


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let addVC = segue.destination as? AddTodoViewController {
            addVC.previousVC = self
        }
    }
}



