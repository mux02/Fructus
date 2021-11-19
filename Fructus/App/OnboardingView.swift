//
//  OnboardingView.swift
//  Fructus
//
//  Created by Mohammed Almalki on 16/11/1442 AH.
//

import SwiftUI

struct OnboardingView: View {
    // Mark: Properties
    
    var fruits: [Fruit] = fruitsData
    
    // Mark: Body
    
    var body: some View {
        TabView {
            
            ForEach(fruits[0...12]) {
                item in
                FruitCardView(fruit: item)
                
            } // Loop
  /*          Text("The First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
 */
        } // Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 15)
    }
}

// Mark: Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
