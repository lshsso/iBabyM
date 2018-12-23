//
//  ToDoItem.swift
//  SimpleToDoList
//
//  Created by SSO on 15/12/2018.
//  Copyright © 2018 sso. All rights reserved.
//

import Foundation

struct TodoItem : Codable {
    
    var title:String
    var completed:Bool
    var createdAt:Date
    var itemIdentifier:UUID
    
    func saveItem() {
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
    func deleteItem() {
        DataManager.delete(itemIdentifier.uuidString)
    }
    
    mutating func markAsCompleted() {
        self.completed = true
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
}
