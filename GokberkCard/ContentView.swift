//
//  ContentView.swift
//  GokberkCard
//
//  Created by Gokberk Ozcan on 6.12.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("goko")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300.0, height: 150.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white,lineWidth: 5))
                Text("Gokberk Ozcan")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Text("IOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+90 533 658 06 98")
                InfoView(text: "ozcangokberk06@gmail.com")
                        
                    
                   
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone XR"))
    }
}

struct InfoView: View {
    let text : String
    var body: some View {
        RoundedRectangle(cornerRadius: 25, style: .circular)
            .fill(Color.white)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(Text(text)
                        .foregroundColor(.blue))      
            .padding(.all)
    }
}
