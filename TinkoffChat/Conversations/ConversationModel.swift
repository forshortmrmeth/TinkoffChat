//
//  ConversationModel.swift
//  TinkoffChat
//
//  Created by Vladislav on 13.03.18.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import Foundation

protocol ConversationProtocol: class {
    var name: String? { get set }
    var message: String? { get set }
    var online: Bool? { get set }
    var date: Date? { get set }
}

class ConversationModel: ConversationProtocol {
    var name: String?
    var message: String?
    var online: Bool?
    var date: Date?
    
    var formattedDate: String?
    var messages: ChatMessageCollection?
    
    init(name: String, message: String, online: Bool, date: Date, messages: ChatMessageCollection) {
        self.name = name
        self.message = message
        self.online = online
        self.date = date
        self.formattedDate = self.dateToString(date: date)
        self.messages = messages
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
