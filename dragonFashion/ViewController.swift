//
//  ViewController.swift
//  dragonFashion
//
//  Created by student1 on 2/17/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var myTableView: UITableView!
    var dragonArray: [Dragon] = [Dragon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dragon1 = Dragon(Name: "Smaug", Description: "Crown")
        dragonArray.append(dragon1)
        let dragon2 = Dragon(Name: "Fufu", Description: "Ugly")
        dragonArray.append(dragon2)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let currentCell = tableView.dequeueReusableCellWithIdentifier("myCell")!
        let currentDragon = dragonArray[indexPath.row]
        currentCell.textLabel!.text = currentDragon.name
        return currentCell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dragonArray.count
    }
  
}

