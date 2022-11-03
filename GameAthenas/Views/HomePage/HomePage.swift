//
//  HomePage.swift
//  GameAthenas
//
//  Created by vko on 02/11/22.
//

import Foundation
import SwiftUI

struct HomePageView : View {
    
    @EnvironmentObject private var viewManager: ViewManager
    
    @State private var showingPopover = false
    
    var body: some View {
        NavigationView{
            
            ZStack {
                Image("background2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    .overlay(
                        
                        VStack (spacing: 80){
                            
                            VStack (spacing: 40){
                                
                                Image("gameLogo")
                                    .resizable()
                                    .frame(width: 300, height: 140)
                                
                                Image("charBarrocaTable")
                                    .resizable()
                                    .frame(width: 156, height: 262)
                            }
                            
                            NavigationLink(destination: StoryP1View()){
                                Image("startButton")
                                    .resizable()
                                    .frame(width: 156, height: 58)
                                    .navigationBarTitle("")
                                    .navigationBarBackButtonHidden(true)
                                    .navigationBarHidden(true)
                            }
                            
                            HStack(spacing: 40){
                                
                                //
                                //                                Image("soundOnButton")
                                //                                    .resizable()
                                //
                                Button(action: {
                                    showingPopover = true
                                }) {
                                    Image("infoButton")
                                        .resizable()
                                        .frame(width: 58, height: 58)
                                }
                                .popover(isPresented: $showingPopover) {
                                    ZStack{
                                        Image("background2")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .ignoresSafeArea()
                                        
                                        ZStack{
                                            Image("StoryBckgRect")
                                                .resizable()
                                                .frame(width: 340, height: 500)
                                                .padding(20)
                                            
                                            VStack (spacing: -200){
                                                Text("Game Created and designed by:")
                                                    .font(.custom(
                                                        "pixelEmulator",
                                                        fixedSize: 20))
                                                    .lineSpacing(4)
                                                    .multilineTextAlignment(.center)
                                                    .foregroundColor(.black)
                                                    .padding(30)
                                                    .frame(width: 340, height: 300)
                                                
                                                VStack (spacing: -220){
                                                    Text("Joana Lima")
                                                    
                                                        .font(.custom(
                                                            "pixelEmulator",
                                                            fixedSize: 25))
                                                        .lineSpacing(4)
                                                        .multilineTextAlignment(.center)
                                                        .foregroundColor(.black)
                                                        .padding(30)
                                                        .frame(width: 340, height: 300)
                                                    Text("Maria Isabel")
                                                    
                                                        .font(.custom(
                                                            "pixelEmulator",
                                                            fixedSize: 25))
                                                        .lineSpacing(4)
                                                        .multilineTextAlignment(.center)
                                                        .foregroundColor(.black)
                                                        .padding(30)
                                                        .frame(width: 340, height: 300)
                                                    Text("Natália Oliveira")
                                                    
                                                        .font(.custom(
                                                            "pixelEmulator",
                                                            fixedSize: 25))
                                                        .lineSpacing(4)
                                                        .multilineTextAlignment(.center)
                                                        .foregroundColor(.black)
                                                        .padding(30)
                                                        .frame(width: 340, height: 300)
                                                    Text("Victor Kammerer")
                                                    
                                                        .font(.custom(
                                                            "pixelEmulator",
                                                            fixedSize: 25))
                                                        .lineSpacing(4)
                                                        .multilineTextAlignment(.center)
                                                        .foregroundColor(.black)
                                                        .padding(30)
                                                        .frame(width: 340, height: 300)
                                                }
                                            }
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                    )
            }
            
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}





