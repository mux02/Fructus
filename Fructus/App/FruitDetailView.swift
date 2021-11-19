//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Mohammed Almalki on 26/02/1443 AH.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    // Mark: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) { // we will use scroll view because the content will excess the screen
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    FruitHeaderView(fruit: fruit) // assign the properties to this view
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // Tilte
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                
                        // Nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        // Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40) // to put space in the bottom
                        
                    } //:VStack
                    .padding(.horizontal, 20) // make a space to help with center the text
                    .frame(maxWidth: 640, alignment: .center) // to make the text on the center even in other iphone devices
                } //:VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true) // to hide the navi bar
                
            } //:Scroll
            .edgesIgnoringSafeArea(.top) // to hide the safe area
        } //:Navigation
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[1])
        
    }
}
