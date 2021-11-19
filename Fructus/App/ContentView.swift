//
//  ContentView.swift
//  Fructus
//
//  Created by Mohammed Almalki on 15/11/1442 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false // normally settings will not show
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(fruits.shuffled()){ item in // create list of Items
                    NavigationLink(destination: FruitDetailView(fruit: item)) { // go to another screen
                  FruitRowView(fruit: item) // show the card view
                        .padding(.vertical, 4)
                    }
                }
                StartButtonView(status: true, text: "رجوع", StrokeCo: Color.black)
            } // List
            .navigationTitle("Fruits")
            .navigationBarItems(
            trailing:
                Button(action: {
                    isShowingSettings = true
                }) //:BUTTON
            {
                    Image(systemName: "slider.horizontal.3")
            } //:ANOTHER CODE BUTTON
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView(fruit: fruitsData[1])
                }
            ) //:NAVIGATION ITEM
        } //:NAVIGATION TITLE
        
        
        
        
        //VStack{
            //Text("Hello, world!")
              //  .foregroundColor(Color.white)
              //  .padding()
                
            
            //StartButtonView(status: true)
        //}
        //.background(Color.black)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
