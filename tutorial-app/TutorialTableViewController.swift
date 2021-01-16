//
//  ViewController.swift
//  tutorial-app
//
//  Created by AJ Diaz on 1/15/21.
//

import UIKit

class TutorialTableViewController: UITableViewController {
    
    let labelArray = ["Friends","Groups","Clients"]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("did it print")
    }
    
    // MARK: - Table View Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labelArray.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TutorialTableViewCell", for: indexPath) as? TutorialTableViewCell else {
            fatalError("No InboxCell")
        }
        
        
        print(indexPath.row.description)
        cell.myLabel.text = labelArray[indexPath.row]
        
        return cell
    }


}

