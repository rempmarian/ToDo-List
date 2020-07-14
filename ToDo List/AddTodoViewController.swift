//
//  AddTodoViewController.swift
//  ToDo List
//
//  Created by Marian Rempola on 7/13/20.
//  Copyright © 2020 Marian Rempola. All rights reserved.
//

import UIKit

class AddTodoViewController: UIViewController {

    var previousVC = TableViewController()
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: UIButton!) {
        let toDo = ToDo()
                      
        if let titleText = titleTextField.text{
                toDo.name = titleText
                toDo.important = importantSwitch.isOn
        }
                previousVC.toDos.append(toDo)
                previousVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
