//
//  OnboardingView.swift
//  HomePage-SwiftUI
//
//  Created by Kübra Cennet Yavaşoğlu on 9.04.2023.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    //MARK: - BODY
    var body: some View {
        ZStack {
          Color("ColorBlue")
            .ignoresSafeArea(.all, edges: .all)
        
        VStack(spacing: 20) {
            
            Spacer()
            
            VStack(spacing: 0) {
                Text("Share")
                    .font(.system(size: 60))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Text("It's not how much we give but how much")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
            } //: HEADER
            //MARK: - CENTER
            ZStack {
                CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
            
                Image("code")
                    .resizable()
                    .scaledToFit()
            }
                                
            Spacer()
            
            // MARK: - FOOTER
            
            ZStack {
                //PARTS OF THE CUSTOM BUTTON
                
                //1. BACKGROUND (STATIC)
                
                Capsule()
                    .fill(Color.white.opacity(0.2))
                    .padding(8)
            }
         }
      }
   }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
