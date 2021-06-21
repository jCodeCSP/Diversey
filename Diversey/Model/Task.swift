//
//  Task.swift
//  Diversey
//
//  Created by Bryant Jaramillo on 6/14/21.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Task: Codable, Identifiable {
    @DocumentID var id: String?
    var title:String
    var completed:Bool
    @ServerTimestamp var createdTime: Timestamp?
}

#if DEBUG
let testDataTasks = [
    Task(title: "Implement the UI", completed: true),
    Task(title: "Connect to Firebase", completed: false),
    Task(title: "???", completed: false),
    Task(title: "Profit", completed: false)
]
#endif
