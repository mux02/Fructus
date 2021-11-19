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
                    
                    
                    // Section 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        SettingsRowView(name: "Developer", content: "Mohammed Almalki")
                        SettingsRowView(name: "Developer Site", linkLabel: "Code X Team", linkDestination: "code-xteam.com")
                        SettingsRowView(name: "Designer", content: "Ahmad Almalki")
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
