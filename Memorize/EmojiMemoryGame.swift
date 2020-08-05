//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Евгений Протопопов on 22.06.2020.
//  Copyright © 2020 Евгений Протопопов. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    private static func createMemoryGame() -> MemoryGame<String>{
        let emojis: Array<String> = ["🎏", "❤️", "🌈", "🐠"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
        
    //MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
    
}
