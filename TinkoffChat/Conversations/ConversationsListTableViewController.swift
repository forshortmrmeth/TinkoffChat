//
//  ConversationsListTableViewController.swift
//  TinkoffChat
//
//  Created by v.kolesnikov on 13.03.18.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import UIKit

class ConversationsListTableViewController: UITableViewController {
    
    enum ChatSection: Int {
        case online
        case offline
        case total
    }
    
    private var formattedData = [
        ChatSection: [ConversationModel]
    ]()
    
//    private var selectedConversation: Array<ChatMessage>?
    private var selectedConversation: ConversationModel?
    
    func setData() {
        formattedData[.online] = chatData.filter({ $0.online == true })
        formattedData[.offline] = chatData.filter({ $0.online == false })
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
                    return "History"
            }
        }
        
        return ""
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatCellIdentifier", for: indexPath) as! ConversationsTableCellView

        if let chatSection = ChatSection(rawValue: indexPath.section), let chatInfo = formattedData[chatSection]?[indexPath.row] {
            cell.setMessageData(chatInfo)
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        let chatSection = ChatSection(rawValue: indexPath.section)!
        
        if let conversation = formattedData[chatSection]?[indexPath.row] {
            self.selectedConversation = conversation
        }
        
        return indexPath
    }


    // MARK: - Navigation
    //  In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.

        if (segue.identifier == "conversation") {
            // Pass data to secondViewController before the transition
            let secondViewController = segue.destination as! ConversationTableViewController
            
            secondViewController.prepareView(
                title: selectedConversation?.name ?? "User name",
                messages: selectedConversation?.messages ?? Array()
            )
        }
    }
}
