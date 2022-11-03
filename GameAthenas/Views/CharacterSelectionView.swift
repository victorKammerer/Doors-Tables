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
            
            Image("background2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .overlay(
                    
                    VStack(alignment: .leading , spacing: 100){
                        NavigationLink(destination: HomePageView()){
                            Image("homeButton")
                                .resizable()
                                .frame(width: 58, height: 58)
                                .navigationBarTitle("")
                                .navigationBarBackButtonHidden(true)
                                .navigationBarHidden(true)
                        }
                        
                        VStack (alignment: .center, spacing: 80){
                            Text("Choose your character")
                                .font(.custom(
                                    "pixelEmulator",
                                    fixedSize: 40))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.yellow)
                            
                            
                            ScrollView(.horizontal) {
                                HStack (spacing: 80){
                                    Image("charBarrocaSelec")
                                        .resizable()
                                        .frame(width: 106, height: 203, alignment: .center)
                                    
                                    Image("charChicoSelec")
                                        .resizable()
                                        .frame(width: 106, height: 203)
                                    
                                    Image("charAleSelec")
                                        .resizable()
                                        .frame(width: 126, height: 203, alignment: .center)
                                    
                                    Image("charIngridtSelec")
                                        .resizable()
                                        .frame(width: 106, height: 203)
                                    
                                    Image("charAlineSelec")
                                        .resizable()
                                        .frame(width: 116, height: 203)
                                    
                                    
                                }
                            }
                            
                            
                            StartButtonView() {
                                viewManager.didUserTapStartButton()
                            }
                        }
                    }
                )}
    }
}

struct CharacterSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterSelectionView()
    }
}
