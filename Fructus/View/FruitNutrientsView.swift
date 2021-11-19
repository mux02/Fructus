//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Mohammed Almalki on 26/02/1443 AH.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    
    let nutrients: [String] = ["Energy","Sugar","Fat","Protine","Vitamins","Minerals"] // this is the properites we will use for every fruit
    
    // Mark:-BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2) // this will divide the content with line
                    
                    HStack {
                        Group { // will handle these content with another style
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        } //:Group
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25) // space between title and content
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        } //:GroupBox
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
