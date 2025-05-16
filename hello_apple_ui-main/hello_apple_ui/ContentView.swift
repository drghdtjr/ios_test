//
//  ContentView.swift
//  hello_apple_ui
//
//  Created by 김홍석 on 1/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemMint)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0)
            {
                Image("빵빵이의 모험")
                    .resizable()//크기 조정
                    .aspectRatio(contentMode: .fit)// 종횡비 딱 맞게
                    .cornerRadius(15)// 코너 둥글게
                HStack{
                    
                    Text("옥지를 만난 빵빵이")
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.fill")
                        }
                        .foregroundColor(.yellow)
                        Text("(reviews 361)")
                            .font(.caption)
                        
                        
                    }
                    
                }
                
                
                Text("옥지 남자친구")
                HStack{
                    Spacer()
                    Image(systemName: "birthday.cake")
                    Image(systemName: "fork.knife")
                }
                .font(.caption)
                .foregroundColor(.gray)
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(Color.white)
                .cornerRadius(15)
                .shadow(radius: 15))
            .padding()
            Text("hello")
            
            
        }
        
        
        
                    
                    
                    
                    
                    
        
    }
}

#Preview {
    ContentView()
}
