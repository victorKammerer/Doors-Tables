//
//  StoryP2View.swift
//  GameAthenas
//
//  Created by Joana Lima on 24/10/22.
//

import SwiftUI

struct StoryP2View: View {
    
    var body: some View {
        ZStack{
            Image("background2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                ZStack{
                    Image("StoryBckgRect")
                        .resizable()
                        .frame(width: 360, height: 550)
                        .padding(20)
                    
                    VStack(spacing: -50){
                        Image("Story22")
                            .resizable()
                            .frame(width: 175, height: 216)
                            .padding(20)
                        
                        Text("OH NO!!! The boss called, he’s arriving soon and they have to put everything back to place so they won’t be fired. Now, your mission is to help them get the table inside. Do what you might but >>DO NOT<< break any doors!!")
                        
                            .font(.custom(
                                "pixelEmulator",
                                fixedSize: 16))
                            .lineSpacing(4)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(40)
                            .frame(width: 360, height: 320)
                    }
                    
                }
                NavigationLink(destination: CharacterSelectionView()){
                    Image("nextButton")
                        .resizable()
                        .frame(width: 58, height: 58)
                    //.position(x:50 ,y:100)
                        .navigationBarTitle("")
                        .navigationBarBackButtonHidden(true)
                        .navigationBarHidden(true)
                }
            }
        }
    }
}

struct StoryP2View_Previews: PreviewProvider {
    static var previews: some View {
        StoryP2View()
    }
}
