//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Mohammed Almalki on 26/02/1443 AH.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() { // groupbox behive in vertical so thats mean when we put something it will show horizentally
            HStack{ // to put it together
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
        
            } //: HStack
            .font(.footnote)
        } //:GroupBox
    } //:BODY
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
