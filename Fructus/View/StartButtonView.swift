//
//  StartButtonView.swift
//  Fructus
//
//  Created by Mohammed Almalki on 16/11/1442 AH.
//

import SwiftUI

struct StartButtonView: View {
    // Mark: Properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var mBool: Bool?
    var textBtn:String?
    var ImageName:String?
    var StrokeCol:Color?
    
    
    init(status: Bool? = false, ImageSysName:String? = "chevron.forward.square", text:String? = "انقر هنا للمزيد", StrokeCo:Color? = Color.white){
        mBool = status
        textBtn = text
        ImageName = ImageSysName
        StrokeCol = StrokeCo
    }
    
    // Mark: Body
    var body: some View {
        Button(action: {
            isOnboarding = mBool  // will change to false
        }) {
            HStack (spacing: 8) {
                Text(textBtn ?? "انقر هنا")
                
                Image(systemName: ImageName ?? "chevron.forward")
                    .imageScale(.large)
            
            }
            .padding(.horizontal, 46)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(lineWidth: 1.25)
            )
        } //Button
        .accentColor(StrokeCol ?? Color.white)
    }
}

// Mark: Preview

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
