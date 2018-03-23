//
//  MessageTableViewCell.swift
//  TinkoffChat
//
//  Created by v.kolesnikov on 23.03.2018.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    var message: String?
    var isIncoming: Bool = false
    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func setData(text message: String, isIncoming: Bool) {
        var alignment: NSTextAlignment
        var textColor: UIColor
    
        if isIncoming {
            alignment = .left
            textColor = UIColor.red
        } else {
            alignment = .right
            textColor = UIColor.black
        }
        
        self.messageLabel.text = message
        self.messageLabel.textAlignment = alignment
        self.messageLabel.textColor = textColor
    }
}
