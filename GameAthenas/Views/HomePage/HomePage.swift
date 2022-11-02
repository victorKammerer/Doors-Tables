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
    
    var body: some View {
        NavigationView{
            
            ZStack {
                Image("bckgBlue2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    .overlay(
                        
                        VStack (spacing: 80){
                            
                            VStack (spacing: 40){
                                
                                Image("gameLogo")
                                    .resizable()
                                    .frame(width: 300, height: 140)
                                
                                Image("homeImage")
                                    .resizable()
                                    .frame(width: 156, height: 242)
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
                                
                                
                                Image("soundOnButton")
                                    .resizable()
                                    .frame(width: 58, height: 58)
                                
                                
                                Image("infoButton")
                                    .resizable()
                                    .frame(width: 58, height: 58)
                                
                            }
                        }
                    )
            }
            
        }
    }
}



