//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Vaibhav Patel on 8/2/20.
//  Copyright © 2020 Vaibhav Patel. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    @Published private var model: MemoryGame<String>
    
    var theme: Theme
    var cards: [Card] {
        model.cards
    }
    
    var score: Int {
        model.score
   }
    
    init() {
        let theme = Theme.themes.randomElement()!
        self.theme = theme
        model = EmojiMemoryGame.createMemoryGame(with: theme)
    }
    private static func createMemoryGame(with theme: Theme) -> MemoryGame<String> {
        let emojis: Array<String> = theme.emojis.shuffled()
        let numPairs = theme.numberOfCards ?? Int.random(in: 2...emojis.count)
        return MemoryGame<String>(numberOfPairsOfCards: numPairs) {pairIndex in
            return emojis[pairIndex]
        }
    }

    //MARK: -Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    func resetGame() {
        theme = Theme.themes.randomElement()!
        model = EmojiMemoryGame.createMemoryGame(with: theme)
    }
}
