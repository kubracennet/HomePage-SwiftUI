//
//  HomeView.swift
//  HomePage-SwiftUI
//
//  Created by Kübra Cennet Yavaşoğlu on 9.04.2023.
//

import SwiftUI

struct HomeView: View {
    //MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 20) {
            
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Image("coding")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
           //MARK: - HEADER
            
            //MARK: - CENTER
            
            Text("Come on, it's time to write code. If you spend time every day, you can have a career in the field you want.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            //MARK: - FOOTER
            Spacer()
            
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Image(systemName: "heart.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            } //: BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        } //:VSTACK
    }
}

//MARK: - PREVİEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
