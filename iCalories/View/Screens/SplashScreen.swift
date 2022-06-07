//
//  SplashScreen.swift
//  iCalories
//
//  Created by Cloud Secrets on 06/06/2022.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isSplashDone: Bool = false
    @State private var isAnimating: Bool = false
    
    var body: some View {
        if isSplashDone {
            HomeScreen()
        } else {
            VStack{
                Image("logo")
                    .resizable()
                    .cornerRadius(50)
                    .scaledToFit()
                    .padding()
                    .scaleEffect(isAnimating  ? 0.55 : 0.25)
                    .opacity(isAnimating ? 1 : 0)
            }
            .onAppear(perform: {
                withAnimation(.easeInOut(duration: 1) , {
                    isAnimating = true
                })
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5 , execute: {
                    withAnimation(.easeInOut(duration: 0.5)){
                        isSplashDone = true
                    }
                })
                
            })
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
