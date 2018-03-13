//
//  ConversationModel.swift
//  TinkoffChat
//
//  Created by Vladislav on 13.03.18.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import Foundation

class ConversationModel: ConversationProtocol {
    var name: String?
    var message: String?
    var date: Date?
    var online: Bool?
    var hasUnreadMessages: Bool?
    var formattedDate: String?
    
    init(name: String, message: String, date: Date, online: Bool, hasUnreadMessages: Bool) {
        self.name = name
        self.message = message
        self.date = date
        self.formattedDate = dateToString(date: date)
        self.online = online
    }
    
    func dateToString(date: Date) -> String {
        let dateFormatter = DateFormatter()
        var mask = "dd MMM"
        
        if Calendar.current.isDateInToday(date) {
            mask = "HH:mm"
        }
        
        dateFormatter.dateFormat = mask
        return dateFormatter.string(from: date)
    }
    
}
