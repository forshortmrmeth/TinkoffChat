//
//  ConversationsListTableViewCell.swift
//  TinkoffChat
//
//  Created by Vladislav on 13.03.18.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import UIKit

class ConversationsTableCellView: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageText: UILabel!
    @IBOutlet weak var dateText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setMessageData(_ messageInfo: ConversationModel) {
        self.nameLabel?.text = messageInfo.name
        self.messageText?.text = messageInfo.message
        self.dateText?.text = messageInfo.formattedDate
        
        if messageInfo.online! {
            self.backgroundColor = UIColor(red: 0.1686, green: 0.898, blue: 0.2667, alpha: 1.0) /* #2be544 */
        } else {
            self.backgroundColor = UIColor.white
        }
    }
    
}
