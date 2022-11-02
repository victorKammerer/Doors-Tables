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
            Image("bckgBlue2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack (spacing: 0){
                
                NavigationLink(destination: ContentView()){
                    Image("homeButton")
                        .resizable()
                        .frame(width: 58, height: 58)
                        .navigationBarTitle("")
                       // .rotation3DEffect(.degrees(180), axis: (x: 0, y: 90, z: 0))
                        .position(x: 70 ,y: 40)
                        .navigationBarBackButtonHidden(true)
                        .navigationBarHidden(true)
                }
                
                ZStack{
                    Image("StoryBckgRect")
                        .resizable()
                        .frame(width: 360, height: 480)
                        .padding(20)
                    
                    VStack (spacing: -80){
                        Image("s1")
                            .resizable()
                            .frame(width: 160, height: 160)
                            .padding(0)
                        
                        Text("You have been laid off!!!")
                            .font(.custom(
                                "pixelEmulator",
                                fixedSize: 40))
                            .lineSpacing(4)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(0)
                            .frame(width: 360, height: 300)
                        
                        Text("Score: \(GameScene().score)")
                            .font(.custom(
                                "pixelEmulator",
                                fixedSize: 20))
                            .lineSpacing(4)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            // .padding(0)
                            .frame(width: 360, height: 120)
                        
                        Text("Highscore: \(GameScene().userDefaults.integer(forKey: "BEST"))")
                            .font(.custom(
                                "pixelEmulator",
                                fixedSize: 20))
                            .lineSpacing(4)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                           // .padding(0)
                            .frame(width: 360, height: 150)
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
