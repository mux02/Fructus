//
//  FruitCardView.swift
//  Fructus
//
//  Created by Mohammed Almalki on 15/11/1442 AH.
//

import SwiftUI

struct FruitCardView: View {
    // Mark: Properties
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    // Mark: Body
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Fruit: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // Fruit: Tilte
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red:0, green:0, blue: 0, opacity: 0.15), radius: 2, x:2, y:2)
                
                // Fruit: Headline
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16.0)
                    .frame(maxWidth:480)
                
                // Button: Start
                StartButtonView(text: "انقر هنا للمزيد") // here we put the button
            } // Vstack
        } // Zstack
        .onAppear {
            withAnimation(.easeIn(duration: 0.8)) {
                isAnimating = true
            }
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// Mark: Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
