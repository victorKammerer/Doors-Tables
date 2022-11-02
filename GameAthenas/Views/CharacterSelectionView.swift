//
//  CharacterSelectionView.swift
//  GameAthenas
//
//  Created by Joana Lima on 21/10/22.
//

import SwiftUI


struct CharacterSelectionView: View {
    
    @EnvironmentObject private var viewManager: ViewManager
    
    var body: some View {
        ZStack {
            
            Image("bckgBlue2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .overlay(
                    
                    VStack(alignment: .center, spacing: 40){
                        NavigationLink(destination: StoryP2View()){
                            Image("homeButton")
                                .resizable()
                                .frame(width: 58, height: 58)
                                .navigationBarTitle("")
                                .position(x: 70 ,y: 40)
                                .navigationBarBackButtonHidden(true)
                                .navigationBarHidden(true)
                        }
                        Text("Choose your character")
                            .font(.custom(
                                "pixelEmulator",
                                fixedSize: 40))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.yellow)
                            .position(x:210 ,y:0)
                        
                        ScrollView(.horizontal) {
                            HStack (spacing: 80){
                                Image("charBarrocaSelec")
                                    .resizable()
                                    .frame(width: 106, height: 203, alignment: .center)
                                Image("charChicoSelec")
                                    .resizable()
                                    .frame(width: 106, height: 203)
                                
                                
                            }
                        }
                        .position(x:240 ,y:0)
                        
                        StartButtonView() {
                            viewManager.didUserTapStartButton()
                        }
//                            Image("playButton")
//                                .resizable()
//                                .frame(width: 156, height: 58)
//                                .navigationBarTitle("")
//                                .navigationBarBackButtonHidden(true)
//                                .navigationBarHidden(true)
//                        .position(x:210 ,y:0)
//                        
                    }
                )}
    }
}
        
        struct CharacterSelectionView_Previews: PreviewProvider {
            static var previews: some View {
                CharacterSelectionView()
            }
        }
