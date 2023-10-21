//
//  TextConuter.swift
//  StateAndDataFlow
//
//  Created by Lera Savchenko on 20.10.23.
//

import Foundation
import Combine

class TextCounter: ObservableObject {
    @Published var counter = "0"
    @Published var text = "" {
        didSet {
            counter = String(text.count)
        }
    }
}
