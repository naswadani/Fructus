//
//  cardView.swift
//  Fructus
//
//  Created by naswakhansa on 22/11/23.
//

import SwiftUI

struct FruitRowView: View {
    var fruit : Fruit
    @State private var isAnimating : Bool = false
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(color: Color(red:0, green: 0, blue: 0,opacity: 0.3), radius: 2, x: 2, y: 2)
                .scaleEffect(isAnimating ? 1.0 : 0.0)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(5)
            VStack(alignment: .leading, spacing: 5 ){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text (fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }
        .onAppear{
            withAnimation(.easeInOut(duration: 1)){
                isAnimating = true
            }
        }
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[2])
        .previewLayout(.sizeThatFits)
        .padding()
}
