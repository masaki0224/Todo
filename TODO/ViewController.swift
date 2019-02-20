//
//  ViewController.swift
//  TODO
//
//  Created by Masaki on 2019/02/20.
//  Copyright © 2019年 Masaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TodoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        
        TodoCell.textLabel!.text = Todokobetsu[indexPath.row]
        
        return TodoCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            Todokobetsu = UserDefaults.standard.object(forKey: "TodoList") as! [String]

        }

    }


}

