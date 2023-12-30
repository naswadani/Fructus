//
//  SettingsView.swift
//  Fructus
//
//  Created by naswakhansa on 27/11/23.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentasionMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators : false){
                VStack(spacing : 20){
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are source of many essential nustrients, including possatium. dietary fiber, vitamins, and musch more")
                                .font(.footnote)
                        }
                    }
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toogle the swicth in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn : $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius:  8, style: .continuous))
                        )
                    }
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        SettingsRowView(name: "Developer", content: "Naswa Bryna Danikhansa")
                        SettingsRowView(name: "Designer", content: "Verstappen")
                        SettingsRowView(name: "Compatibility", content: "iOS 17")
                        SettingsRowView(name: "Website",
                                        linkLabel: "Github", linkDestination: "github.com/naswadani")
                        SettingsRowView(name : "Instagram", linkLabel: "@naswa_dani", linkDestination :"www.instagram.com/naswa_dani/")
                        SettingsRowView(name : "SwiftUI", content : "2.0" )
                        SettingsRowView(name : "Version", content : "1.1.0")
                    }
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentasionMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }
        }
    }
}

#Preview {
    SettingsView()
}
