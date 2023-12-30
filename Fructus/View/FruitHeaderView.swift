//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by naswakhansa on 26/11/23.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit : Fruit
    @State private var isAnimating : Bool = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(height: 440)
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 375, height: 440))
}
