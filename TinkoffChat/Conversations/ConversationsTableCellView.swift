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
            self.backgroundColor = UIColor.yellow
        } else {
            self.backgroundColor = UIColor.white
        }
    }
    
}
