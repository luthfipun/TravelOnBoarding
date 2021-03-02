//
//  SplashView.swift
//  TravelOnBoarding
//
//  Created by Luthfi Abdul Azis on 02/03/21.
//

import SwiftUI

struct SplashView: View {
    
    @AppStorage("splash") var current = 1
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Spacer()
                
                Button(action: {
                    current = 4
                }, label: {
                    Text("skip")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                })
                .background(
                    Capsule()
                        .fill(Color(.gray).opacity(0.2))
                        .frame(width: 60, height: 30)
                )
                .padding(.trailing, 20)
            }.padding()
            
            if current == 1 {
                SplashItem(image: "img1", title: "Connect with \ntourists", description: "Connect with people of faith locally & globally. Discover Chat & Engage")
                    .transition(AnyTransition.slide.animation(.spring()))
                    .animation(.default)
            }
            
            if current == 2 {
                SplashItem(image: "img2", title: "Discover new \nthings", description: "Explore new things through our app. DIscover initiary & other stuffs")
                    .transition(AnyTransition.slide.animation(.spring()))
                    .animation(.default)
            }
            
            if current == 3 {
                SplashItem(image: "img3", title: "Share your \nmoments", description: "Share you trip initiary with others. Let’s make the travel fun & enoyable")
                    .transition(AnyTransition.slide.animation(.spring()))
                    .animation(.default)
            }
            
            HStack {
                HStack(spacing: 12) {
                    Capsule()
                        .frame(width: 18, height: 4)
                        .foregroundColor(current == 1 ? Color("Purple") : Color("Purple").opacity(0.3))
                    
                    Capsule()
                        .frame(width: 18, height: 4)
                        .foregroundColor(current == 2 ? Color("Purple") : Color("Purple").opacity(0.3))
                    
                    Capsule()
                        .frame(width: 18, height: 4)
                        .foregroundColor(current == 3 ? Color("Purple") : Color("Purple").opacity(0.3))
                }
                
                Spacer()
                
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color("Purple"))
                    .overlay(
                        Image(systemName: current == 3 ? "checkmark" : "arrow.right")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                    )
                    .onTapGesture {
                        withAnimation {
                            current += 1
                        }
                    }
                
                
            }
            .padding(20)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
