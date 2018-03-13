//
//  ConversationProtocol.swift
//  TinkoffChat
//
//  Created by Vladislav on 13.03.18.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import Foundation

protocol ConversationProtocol: class {
    var name: String? { get set }
    var message: String? { get set }
    var date: Date? { get set }
    var online: Bool? { get set }
    var hasUnreadMessages: Bool? { get set }
}
