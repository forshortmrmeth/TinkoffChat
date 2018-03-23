//
//  ChatData.swift
//  TinkoffChat
//
//  Created by Vladislav on 13.03.18.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import Foundation

let plainData = [
    [
        "name": "Николай",
        "message": "Hello there! This is some long string",
        "online": true,
        "viewed": true
    ],
    [
        "name": "Алиса",
        "message": "Yeah, I like animals better than people sometimes... Especially dogs. Dogs are the best. Every time you come home, they act like they haven't seen you in a year. And the good thing about dogs... is they got different dogs for different people. Like pit bulls. The dog of dogs. Pit bull can be the right man's best friend... or the wrong man's worst enemy. You going to give me a dog for a pet, give me a pit bull. Give me... Raoul. Right, Omar? Give me Raoul.",
        "online": true,
        "viewed": true
    ],
    [
        "name": "Андрей",
        "message": "Yeah, I like animals better than people sometimes... Especially dogs. Dogs are the best. Every time you come home, they act like they haven't seen you in a year. And the good thing about dogs... is they got different dogs for different people. Like pit bulls. The dog of dogs. Pit bull can be the right man's best friend... or the wrong man's worst enemy. You going to give me a dog for a pet, give me a pit bull. Give me... Raoul. Right, Omar? Give me Raoul.",
        "online": true,
        "viewed": false
    ],
    [
        "name": "Александр",
        "message": "Hello there! This is some long string",
        "online": true,
        "viewed": true
    ],
    [
        "name": "Анастасия",
        "message": "🍓🍓🍓",
        "online": true,
        "viewed": false
    ],
    [
        "name": "Евгения",
        "message": "Hello there! This is some long string",
        "online": true,
        "viewed": false
    ],
    [
        "name": "Петр Великий",
        "message": "Hello there! This is some long string",
        "online": true,
        "viewed": true
    ],
    [
        "name": "Мыкола",
        "message": "Hello there! This is some long string",
        "online": true,
        "viewed": true
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "online": true,
        "viewed": true
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "online": true,
        "viewed": true
    ],
    
    [
        "name": "Bob Offline",
        "message": "Hello there! This is some long string",
        "online": false,
        "viewed": true
    ],
    [
        "name": "Alice Offline",
        "message": "Yeah, I like animals better than people sometimes... Especially dogs. Dogs are the best. Every time you come home, they act like they haven't seen you in a year. And the good thing about dogs... is they got different dogs for different people. Like pit bulls. The dog of dogs. Pit bull can be the right man's best friend... or the wrong man's worst enemy. You going to give me a dog for a pet, give me a pit bull. Give me... Raoul. Right, Omar? Give me Raoul.",
        "online": false
    ],
    [
        "name": "Bob",
        "message": "Yeah, I like animals better than people sometimes... Especially dogs. Dogs are the best. Every time you come home, they act like they haven't seen you in a year. And the good thing about dogs... is they got different dogs for different people. Like pit bulls. The dog of dogs. Pit bull can be the right man's best friend... or the wrong man's worst enemy. You going to give me a dog for a pet, give me a pit bull. Give me... Raoul. Right, Omar? Give me Raoul.",
        "online": false,
        "viewed": true
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "online": false,
        "viewed": true
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "online": false,
        "viewed": true
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "online": false,
        "viewed": true
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "online": false,
        "viewed": true
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "online": false,
        "viewed": true
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "online": false,
        "viewed": true
    ],
    [
        "name": "Bob",
        "message": "Hello there! This is some long string",
        "online": false,
        "viewed": true
    ]
]

let chatData = plainData.map {
    ConversationModel(
        name: $0["name"] as! String,
        message: $0["message"] as! String,
        online: $0["online"] as! Bool,
        date: Date(),
        messages: conversationMessages
    )
}
