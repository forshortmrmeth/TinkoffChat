//
//  ChatData.swift
//  TinkoffChat
//
//  Created by Vladislav on 13.03.18.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import Foundation

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

var chatDataCollection = chatData.map {
    ConversationModel(
        name: $0["name"]!,
        message: $0["message"]!,
        date: Date(),
        online: $0["status"]! == "online",
        hasUnreadMessages: false
    )
}

