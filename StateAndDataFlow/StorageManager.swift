//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Lera Savchenko on 21.10.23.
//

import Foundation

class StorageManager {
    static let shared = StorageManager()
    
    private let defaults = UserDefaults.standard
    private let userKey = "userKey"
    
    private init() {}
    
    func save(userName: String) {
        let user = userName
        defaults.set(userName, forKey: "userKey")
    }
}