//
//  YouLostView.swift
//  GameAthenas
//
//  Created by Joana Lima on 01/11/22.
//

import SwiftUI

struct YouLostView: View {
    
    @State var animating = false
    
    @EnvironmentObject private var viewManager: ViewManager
    
    var actionForRestart : HandleWithButtonAction
    var actionForMenu : HandleWithButtonAction
    
    var body: some View {
        ZStack{
            Image("background2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack (alignment: .leading, spacing: 20){
                
                NavigationLink(destination: HomePageView()){
                    Image("homeButton")
                        .resizable()
                        .frame(width: 58, height: 58)
                        //.navigationBarTitle("")
                        .navigationBarBackButtonHidden(true)
                        .navigationBarHidden(true)
                }
                
                VStack(){
                    
                    ZStack{
                        Image("StoryBckgRect")
                            .resizable()
                            .frame(width: 360, height: 520)
                            .padding(0)
                        
                        VStack (spacing: -90){
                            
                            VStack(spacing: -80){
                                
                                HStack(spacing: 100){
                                    Image("charHigorSelec")
                                        .resizable()
                                        .frame(width: 76, height: 127)
                                        .padding(0)
                                    
                                    Image("charArquiSelec")
                                        .resizable()
                                        .frame(width: 76, height: 127)
                                        .padding(0)
                                }
                                
                                
                                Text("You are fired!!!")
                                    .font(.custom(
                                        "pixelEmulator",
                                        fixedSize: 40))
                                    .lineSpacing(4)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                    .frame(width: 360, height: 300)
                                
                                VStack(spacing: -100){
                                    Text("Score: \(GameScene().score)")
                                        .font(.custom(
                                            "pixelEmulator",
                                            fixedSize: 25))
                                        .lineSpacing(4)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.black)
                                    // .padding(0)
                                        .frame(width: 360, height: 120)
                                    
                                    Text("Highscore: \(GameScene().userDefaults.integer(forKey: "BEST"))")
                                        .font(.custom(
                                            "pixelEmulator",
                                            fixedSize: 25))
                                        .lineSpacing(4)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.black)
                                    // .padding(0)
                                        .frame(width: 360, height: 150)
                                    
//                                    NavigationLink(destination: CharacterSelectionView()){
//                                        Image("playAgainButton")
//                                            .resizable()
//                                            .frame(width: 180, height: 38)
//                                            .navigationBarTitle("")
//                                            .position(x: 390, y: 150)
//                                            .navigationBarBackButtonHidden(true)
//                                            .navigationBarHidden(true)
//                                }
                                    Button(action: {
                                        print("starIcon pressed")
                                        actionForRestart()
                                        
                                    }, label: {
                                        Image("playAgainButton")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 200, height: 65)
                                    })
                                    .padding()
                                
                                }
                            }

                        }
                        
                    }
                }
            }
        }
    }
}

struct YouLostView_Previews: PreviewProvider {
    static var previews: some View {
        YouLostView(actionForRestart: {}, actionForMenu: {})
    }
}
