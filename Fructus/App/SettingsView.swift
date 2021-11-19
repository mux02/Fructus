//
//  SettingsView.swift
//  Fructus
//
//  Created by Mohammed Almalki on 26/02/1443 AH.
//

import SwiftUI

struct SettingsView: View {
    
    var fruit: Fruit
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false // to save value that show us if we are in the home screen or not (Onboarding)
    
    // this will help you to store value (is the user in the dark mode? or what is the time zone of the user) all these information comes from this function (Environment)
    
    // Mark: - BODY
    var body: some View {
        
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 20) {
                    // Section 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                        )
                    {
                        Divider().padding(.vertical, 4)
                        
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 90)
                                .cornerRadius(9) // put radius
                            
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                            
                        } //:HStack
                        
                    } //: GROUPBOX
                    
                    // Section 2
                    GroupBox (
                    label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("if you wish, you can restart the application by toggle the switch in this box. That way its start the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1) // to foucs the text with it's content to give them space
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.red)
                                Image(systemName: "arrow.up.right")
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // Section 3
                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
//                        Divider().padding(.vertical, 4) // to make divider with space
                        
                       SettingsRowView(name: "Developer", content: "mux02 3mk")
                        SettingsRowView(name: "Developer Site", linkLabel: "CODE X team", linkDestination: "code-xteam.com")
                        SettingsRowView(name: "SwiftUI", content: "5.0")
                        SettingsRowView(name: "Compatiblity", content: "14.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                    
                    
                    
                } //:VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                            trailing:
                                Button(action: {
                                    presentationMode.wrappedValue.dismiss()
                                    // this will dimiss the page if you click on the button
                                    
                                } //:BUTTON
                              ) //:TRAILING
                        {
                        Image(systemName: "xmark")
                        }
                    ) //:NAVIGATION ITEMS
                .padding()
                
            } //:SCROLL
            
        } //:NAVIGATION VIEW
        
    } //:BODY
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(fruit: fruitsData[1])
            .preferredColorScheme(.dark)
    }
}
