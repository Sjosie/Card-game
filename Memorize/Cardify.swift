//
//  Cardify.swift
//  Memorize
//
//  Created by Евгений Протопопов on 10.07.2020.
//  Copyright © 2020 Евгений Протопопов. All rights reserved.
//

import SwiftUI

struct Cardify: AnimatableModifier {
    var routation: Double
    
    init(isFaceUp: Bool) {
        routation = isFaceUp ? 0 : 180
    }
    
    var isFaceUp: Bool {
        routation < 90
    }
    
    var animatableData: Double {
        get { return routation }
        set { routation = newValue }
    }
    
    func body(content: Content) -> some View {
        ZStack {
            Group {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeLineWidth)
                content
            }
                .opacity(isFaceUp ? 1 : 0)
            RoundedRectangle(cornerRadius: cornerRadius).fill()
                .opacity(isFaceUp ? 0 : 1)
        }
        .rotation3DEffect(Angle.degrees(routation), axis: (0,1,0))
    }
    
    private let cornerRadius: CGFloat = 10.0
    private let edgeLineWidth: CGFloat = 3
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
