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
            Image("background2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack (spacing: 30){
                ZStack{
                    Image("StoryBckgRect")
                        .resizable()
                        .frame(width: 360, height: 470)
                        .padding(20)
                    
                    VStack (spacing: -50){
                        Image("Story12")
                            .resizable()
                            .frame(width: 182, height: 115)
                            .padding(20)
                        
                        Text("On a random Friday, the boss is out and people decided it was just the perfect day for a little something, to celebrate the end of a task. And so they ate, chatted and had lots of fun.")
                        
                            .font(.custom(
                                "pixelEmulator",
                                fixedSize: 16))
                            .lineSpacing(4)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(30)
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
