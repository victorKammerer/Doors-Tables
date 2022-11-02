//
//  StoryP1View.swift
//  GameAthenas
//
//  Created by Joana Lima on 24/10/22.
//

import SwiftUI

struct StoryP1View: View {
    var body: some View {
        ZStack{
            Image("bckgBlue2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack (spacing: 30){
                ZStack{
                    Image("StoryBckgRect")
                        .resizable()
                        .frame(width: 360, height: 480)
                        .padding(20)
                    
                    VStack (spacing: -30){
                        Image("s1")
                            .resizable()
                            .frame(width: 160, height: 160)
                            .padding(20)
                        
                        Text("On a random friday, somewhere in Pernambuco, people went back to the lab when life was going back to normal after the pandemic. They decided it was a perfect day for a celebration. So they ate, chatted and had lots of fun.")
                        
                            .font(.custom(
                                "pixelEmulator",
                                fixedSize: 16))
                            .lineSpacing(4)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(20)
                            .frame(width: 360, height: 300)
                    }
                    
                }
               
                    
                    NavigationLink(destination: StoryP2View()){
                        Image("nextButton")
                            .resizable()
                            .frame(width: 58, height: 58)
                            .navigationBarTitle("")
                            .navigationBarBackButtonHidden(true)
                            .navigationBarHidden(true)
                    }
                }

            }
        }
    }

struct StoryP1View_Previews: PreviewProvider {
    static var previews: some View {
        StoryP1View()
    }
}
