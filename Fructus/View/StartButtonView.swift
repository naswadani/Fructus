//
//  StartButtonView.swift
//  Fructus
//
//  Created by naswakhansa on 20/11/23.
//

import SwiftUI

struct StartButtonView: View {
    //MARK : - PROPERTIES
    @AppStorage ("isOnboarding") var isOnboarding : Bool?
    //MARK : - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }){
            HStack(spacing: 8){
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background{
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            }
        }//:BUTTON
        .accentColor(.white)
    }
}

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
