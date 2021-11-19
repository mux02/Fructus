//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Mohammed Almalki on 27/02/1443 AH.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - Properties
    
    var name: String
    var content: String? = nil // make this variable optional
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(name)
            Spacer()
            if (content != nil) {
                Text(content!).foregroundColor(Color.gray)
            } else if (linkLabel != nil && linkDestination != nil) {
                Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!).foregroundColor(Color.gray)
                
                Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
            } else {
                EmptyView()
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Mohammed Almalki")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "Developer", linkLabel: "HomePage", linkDestination: "code-xteam.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
