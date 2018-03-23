//
//  messages.swift
//  TinkoffChat
//
//  Created by v.kolesnikov on 23.03.2018.
//  Copyright © 2018 Vladislav. All rights reserved.
//

import Foundation

let messages = [
    [
        "isIncoming": false,
        "message": "Deserunt Lorem veniam cupidatat ex cillum. Proident eu eu labore dolore proident veniam. Ad officia consectetur irure exercitation enim proident id deserunt amet. Ex deserunt cupidatat cillum et pariatur qui sit ullamco reprehenderit cillum minim. Ipsum laborum fugiat mollit esse eiusmod fugiat. Amet sint sit ex consequat non eu fugiat pariatur veniam excepteur. Eiusmod commodo mollit ipsum et ea commodo anim nulla sit ut ut.\r\n"
    ],
    [
        "isIncoming": true,
        "message": "Reprehenderit ut incididunt labore incididunt ullamco ex quis id adipisicing non do esse. Dolor fugiat sint ad nisi ipsum ipsum proident labore sit non. Qui cillum Lorem incididunt duis. Enim in amet amet ex mollit pariatur nisi exercitation et reprehenderit. Esse dolore Lorem laboris occaecat labore cillum est id tempor elit. Magna laborum ut id Lorem fugiat magna sunt ea ullamco sunt eiusmod laboris dolor nostrud.\r\n"
    ],
    [
        "isIncoming": true,
        "message": "Pariatur non nisi est laboris laborum nostrud. Sunt adipisicing consequat sunt ad esse adipisicing fugiat voluptate anim sint do laborum tempor. Magna do ipsum commodo consequat aute. Eiusmod id reprehenderit consequat dolor reprehenderit ad velit voluptate voluptate Lorem. Cillum anim adipisicing quis sint occaecat ad in culpa. Est eu do nisi commodo est commodo ullamco. Nulla quis do velit incididunt proident cillum mollit ad ipsum.\r\n"
    ],
    [
        "isIncoming": false,
        "message": "Amet aliqua labore aliqua eu irure duis adipisicing aliqua sit pariatur ex. Dolor in tempor culpa sit aute sunt in qui nulla adipisicing laboris fugiat adipisicing. Laboris ad ad est cupidatat non. Lorem elit sunt nisi quis duis tempor consectetur culpa Lorem cupidatat culpa dolore excepteur. Non sunt voluptate minim dolor proident nulla fugiat do.\r\n"
    ],
    [
        "isIncoming": false,
        "message": "Nostrud nostrud amet et labore laboris incididunt eiusmod. Nulla cupidatat deserunt Lorem aliqua aliquip eiusmod exercitation nostrud mollit labore veniam consectetur. Officia est nisi quis amet ut reprehenderit proident fugiat culpa veniam nisi exercitation. Sint velit elit veniam eu sunt cupidatat consectetur enim et ipsum labore ullamco.\r\n"
    ],
    [
        "isIncoming": false,
        "message": "Aliqua laboris minim magna eiusmod ullamco aliqua aliquip. Elit Lorem est sit esse nostrud id sit consequat. Mollit adipisicing laboris veniam dolore nostrud id sit.\r\n"
    ],
    [
        "isIncoming": false,
        "message": "Nulla quis velit ex occaecat consectetur. Lorem eiusmod amet commodo exercitation non aliqua. Reprehenderit eu aliqua sint enim officia in.\r\n"
    ]
]

var conversationMessages = messages.map {
    ChatMessage(
        isIncoming: $0["isIncoming"] as! Bool,
        message: $0["message"] as! String
    )
}
