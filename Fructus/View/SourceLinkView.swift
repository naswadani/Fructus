//
//  SourceLinkView.swift
//  Fructus
//
//  Created by naswakhansa on 27/11/23.
//

import SwiftUI

struct SourceLinkView: View {
    var fruit : Fruit
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination:  URL(string: "https://en.wikipedia.org/wiki/\(fruit.title)")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView(fruit: fruitsData[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
