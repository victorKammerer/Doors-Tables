//
//  YouLostView.swift
//  GameAthenas
//
//  Created by Joana Lima on 01/11/22.
//

import SwiftUI

struct YouLostView: View {
    var body: some View {
        ZStack{
            Image("bckgBlue2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack (spacing: 70){
                
                NavigationLink(destination: ContentView()){
                    Image("homeButton")
                        .resizable()
                        .frame(width: 58, height: 58)
                        .navigationBarTitle("")
                        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 90, z: 0))
                        .position(x: 70 ,y: 40)
                        .navigationBarBackButtonHidden(true)
                        .navigationBarHidden(true)
                }
                
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
                        
                        Text("You have been laid off!!!")
                        
                            .font(.custom(
                                "pixelEmulator",
                                fixedSize: 40))
                            .lineSpacing(4)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(30)
                            .frame(width: 360, height: 300)
                    }
                    
                }
                
                NavigationLink(destination: CharacterSelectionView()){
                    Image("replayButton")
                        .resizable()
                        .frame(width: 156, height: 58)
                        .navigationBarTitle("")
                        .navigationBarBackButtonHidden(true)
                        .navigationBarHidden(true)
                }
                .position(x: 210 ,y: -20)
            }
        }
    }
}

struct YouLostView_Previews: PreviewProvider {
    static var previews: some View {
        YouLostView()
    }
}
