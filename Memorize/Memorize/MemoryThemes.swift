//
//  MemoryThemes.swift
//  Memorize
//
//  Created by Vaibhav Patel on 8/4/20.
//  Copyright © 2020 Vaibhav Patel. All rights reserved.
//

import SwiftUI

struct Theme {
    var name: String
    var emojis: [String]
    var numberOfCards: Int?
    var color: Color
    
    static let spooky = Theme(name: "Halloween", emojis: ["👻", "🎃", "🕷", "🕸", "🦇", "💀", "🧛", "🍫", "🍬", "🍭", "🔮", "🧟"], color: .orange)
    static let sports = Theme(name: "Sports", emojis: ["⚽️", "🏀", "🏈", "⚾️", "🎾", "🏐", "🥏", "🏓", "🥊", "🛹", "🏏"], color: .blue)
    static let animals = Theme(name: "Animals", emojis: ["🐶", "🐨", "🦁", "🐮", "🐷", "🐯", "🐼", "🦊", "🐻", "🐰"], color: .yellow)
    static let hearts = Theme(name: "Hearts", emojis: ["❤️", "🧡", "💛", "💚", "💙", "💜", "🖤", "🤍", "🤎", "💔"], color: .pink)
    static let vehicles = Theme(name: "Vehicles", emojis: ["🚗", "🏎", "🚑", "🚒", "🚜", "🚂", "🛸"], numberOfCards: 7, color: .black)
    static let plants = Theme(name: "Plants", emojis: ["🌵", "🌲", "🌴", "🌹", "🌳", "🥀"], numberOfCards: 6, color: .green)
    
    static var themes = [spooky, sports, animals, hearts, vehicles, plants]
}
