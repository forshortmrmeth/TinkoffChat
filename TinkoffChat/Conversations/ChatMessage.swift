//
//  ChatMessage.swift
//  TinkoffChat
//
//  Created by v.kolesnikov on 23.03.2018.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import Foundation

typealias ChatMessageCollection = Array<ChatMessage>

protocol ChatProtocol {
    var isIncoming: Bool {get set}
    var text: String {get set}
}

class ChatMessage: ChatProtocol {
    var isIncoming: Bool = false
    var text: String = ""
    
    init(isIncoming: Bool, message text: String) {
        self.text = text
        self.isIncoming = isIncoming
    }
}

