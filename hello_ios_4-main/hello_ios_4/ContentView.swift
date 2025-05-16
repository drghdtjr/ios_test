//
//  ContentView.swift
//  hello_ios_4
//
//  Created by 김홍석 on 1/24/24.
//

import SwiftUI

struct ContentView: View {
    @State var playercard="card7"
    @State var cpucard="card2"
    @State var playerscore=0
    @State var cpuscore=0
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 20.0){
                Image("logo")
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                
                Button{
                    deal()
                }label: {
                    Image("button")
                    
                }
                
                HStack{
                    Spacer()
                    VStack{
                        Text("player")
                            .font(.headline)
                            .padding(.bottom,10.0)
                        Text(String(playerscore))
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                    Spacer()
                    VStack{
                        Text("cpu")
                            .font(.headline)
                            .padding(.bottom,10.0)
                        Text(String(cpuscore))
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                    Spacer()
                    
                    
                }
                
            }
        }
        
        
    }
    
    func deal(){
        var player_num=Int.random(in: 2...14)
        playercard="card"+String(player_num)
        var cpu_num=Int.random(in: 2...14)
        cpucard="card"+String(cpu_num)
        if(player_num>cpu_num){
            playerscore+=1
        }
        else if(player_num<cpu_num){
            cpuscore+=1
        }
        
    }
    
}

#Preview {
    ContentView()
}
