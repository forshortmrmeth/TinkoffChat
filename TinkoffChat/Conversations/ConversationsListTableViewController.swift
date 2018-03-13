//
//  ConversationsListTableViewController.swift
//  TinkoffChat
//
//  Created by v.kolesnikov on 13.03.18.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import UIKit

let chatData = [
    [
        "name": "Николай",
        "message": "Hello there! This is some long string",
        "status": "online"
    ],
    [
        "name": "Алиса",
        "message": "Yeah, I like animals better than people sometimes... Especially dogs. Dogs are the best. Every time you come home, they act like they haven't seen you in a year. And the good thing about dogs... is they got different dogs for different people. Like pit bulls. The dog of dogs. Pit bull can be the right man's best friend... or the wrong man's worst enemy. You going to give me a dog for a pet, give me a pit bull. Give me... Raoul. Right, Omar? Give me Raoul.",
        "status": "online"
    ],
    [
        "name": "Андрей",
        "message": "Yeah, I like animals better than people sometimes... Especially dogs. Dogs are the best. Every time you come home, they act like they haven't seen you in a year. And the good thing about dogs... is they got different dogs for different people. Like pit bulls. The dog of dogs. Pit bull can be the right man's best friend... or the wrong man's worst enemy. You going to give me a dog for a pet, give me a pit bull. Give me... Raoul. Right, Omar? Give me Raoul.",
        "status": "online"
    ],
    [
        "name": "Александр",
        "message": "Hello there! This is some long string",
        "status": "online"
    ],
    [
        "name": "Анастасия",
        "message": "🍓🍓🍓",
        "status": "online"
    ],
    [
        "name": "Евгения",
        "message": "Hello there! This is some long string",
        "status": "online"
    ],
    [
        "name": "Петр Великий",
        "message": "Hello there! This is some long string",
        "status": "online"
    ],
    [
        "name": "Мыкола",
        "message": "Hello there! This is some long string",
        "status": "online"
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "status": "online"
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "status": "online"
    ],
    
    [
        "name": "Bob Offline",
        "message": "Hello there! This is some long string",
        "status": "offline"
    ],
    [
        "name": "Alice Offline",
        "message": "Yeah, I like animals better than people sometimes... Especially dogs. Dogs are the best. Every time you come home, they act like they haven't seen you in a year. And the good thing about dogs... is they got different dogs for different people. Like pit bulls. The dog of dogs. Pit bull can be the right man's best friend... or the wrong man's worst enemy. You going to give me a dog for a pet, give me a pit bull. Give me... Raoul. Right, Omar? Give me Raoul.",
        "status": "offline"
    ],
    [
        "name": "Bob",
        "message": "Yeah, I like animals better than people sometimes... Especially dogs. Dogs are the best. Every time you come home, they act like they haven't seen you in a year. And the good thing about dogs... is they got different dogs for different people. Like pit bulls. The dog of dogs. Pit bull can be the right man's best friend... or the wrong man's worst enemy. You going to give me a dog for a pet, give me a pit bull. Give me... Raoul. Right, Omar? Give me Raoul.",
        "status": "offline"
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "status": "offline"
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "status": "offline"
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "status": "offline"
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "status": "offline"
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "status": "offline"
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "status": "offline"
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "status": "offline"
    ]
]

class ConversationsListTableViewController: UITableViewController {
    
    enum ChatSection: Int {
        case online
        case offline
        case total
    }
    
    private var formattedData = [
        ChatSection: [[String: String]]
    ]()
    
    func setData() {
        formattedData[.online] = chatData.filter({ $0["status"] == "online" })
        formattedData[.offline] = chatData.filter({ $0["status"] == "offline" })
    }
    
    @IBOutlet weak var uiNavigationBar: UINavigationItem!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return ChatSection.total.rawValue
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let tableSection = ChatSection(rawValue: section), let data = formattedData[tableSection] {
            return data.count
        }
        
        return 0
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if let sectionType = ChatSection(rawValue: section) {
            switch sectionType {
                case .online:
                    return "Online"
                default:
                    return "Offline"
            }
        }
        
        return ""
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatCellIdentifier", for: indexPath)

        if let chatSection = ChatSection(rawValue: indexPath.section), let chatInfo = formattedData[chatSection]?[indexPath.row] {
                cell.textLabel?.text = chatInfo["name"]
                cell.detailTextLabel?.text = chatInfo["message"]
        }
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
