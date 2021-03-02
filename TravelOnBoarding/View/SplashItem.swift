//
//  SplashItem.swift
//  TravelOnBoarding
//
//  Created by Luthfi Abdul Azis on 02/03/21.
//

import SwiftUI

struct SplashItem: View {
    
    var image: String = ""
    var title: String = ""
    var description: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Spacer()
            
            Image(image)
                .resizable()
                .padding(20)
                .scaledToFit()
            
            Spacer()
            
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .kerning(0.8)
                .padding(.vertical, 12)
                .padding(.horizontal, 20)
                
            
            Text(description)
                .font(.callout)
                .foregroundColor(.gray)
                .padding(.vertical, 5)
                .padding(.leading, 20)
            
            Spacer()
        }
    }
}

struct SplashItem_Previews: PreviewProvider {
    
    static var previews: some View {
        SplashItem()
    }
}
