//
//  OnboardingView.swift
//  Fructus
//
//  Created by naswakhansa on 26/11/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits){ fruitItem in
                FruitCardView(fruit : fruitItem)
            }
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}



#Preview {
    OnboardingView()
}
