//
//  ContentView.swift
//  TravelOnBoarding
//
//  Created by Luthfi Abdul Azis on 02/03/21.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("splash") var isSplash = 1
    
    var body: some View {
        if isSplash == 4 {
            VStack {
                Text("Welcome to Home")
                    .padding()
                
                Button(action: {
                    isSplash = 1
                }, label: {
                    Text("Back to SplashScreen")
                })
            }
        }else {
            SplashView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
