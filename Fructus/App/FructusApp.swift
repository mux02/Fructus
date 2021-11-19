//
//  FructusApp.swift
//  Fructus
//
//  Created by Mohammed Almalki on 15/11/1442 AH.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true // save a vlaue that will use to determain which screen will be showen
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            } else {
                ContentView()
            }
            
            
        } // end of Window group
    }
}
