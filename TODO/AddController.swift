//
//  AddController.swift
//  TODO
//
//  Created by Masaki on 2019/02/20.
//  Copyright © 2019年 Masaki. All rights reserved.
//

import UIKit

var Todokobetsu = [String]()

class AddController: UIViewController {

    @IBOutlet weak var TodoTextField: UITextField!
    
    @IBAction func TodoAddButton(_ sender: Any) {
        Todokobetsu.append(TodoTextField.text!)
        TodoTextField.text = ""
        
        UserDefaults.standard.set(Todokobetsu, forKey: "TodoList")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
