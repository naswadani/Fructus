//
//  FruitNutriensView.swift
//  Fructus
//
//  Created by naswakhansa on 27/11/23.
//

import SwiftUI

struct FruitNutriensView: View {
    let nutrients : [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins","Minerals"]
    var fruit : Fruit
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

#Preview {
    FruitNutriensView(fruit: fruitsData[0])
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
