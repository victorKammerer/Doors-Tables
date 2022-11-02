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
            Image("bckgBlue2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                ZStack{
                    Image("StoryBckgRect")
                        .resizable()
                        .frame(width: 360, height: 540)
                        .padding(20)
                    
                    VStack(spacing: -70){
                        Image("s2")
                            .resizable()
                            .frame(width: 160, height: 250)
                            .padding(20)
                        
                        Text("Now the party is over and your mission is to help then get the table back inside without causing any damage. Help them but >>do not<< break any doors!")
                        
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
