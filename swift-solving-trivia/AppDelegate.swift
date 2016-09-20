//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func solveTrivia(statesAndCapitals: [String: String]) -> String {
        var answer = false
       
        for (state, capital) in statesAndCapitals {
            let states = Set(state.lowercaseString.characters).sort()
            let capitals = Set(capital.lowercaseString.characters).sort()
           
            answer = (states.map { capitals.contains($0) }).contains(true)
            
            if answer == false {
               
                return state
            }
            
        }
        
        return ""
    }
}




