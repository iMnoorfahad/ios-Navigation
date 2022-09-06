//
//  ContentView.swift
//  NavigationSwiftUI
//
//  Created by Noor Fahad on 06/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Screen(imageName: "house", title: "Welcome to Home", label: "Home", buttonName: "Home",buttonColor: .green)
        }
    }
}

struct Screen:View{
    var imageName : String
    var title : String
    var label : String
    var buttonName : String
    var buttonColor: Color
        
    var body: some View{
        
            VStack{
                Image(systemName: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding()
                Text(title).font(.system(size: 22, weight: .bold, design: .default))
                    .padding()
               NavigationLink(
                destination: Screen(imageName: "bell", title: "Secont Screen", label: "Notification", buttonName: "Continue", buttonColor: .red),
                    label:{
                        CustomeButton(color: buttonColor,title: "Next")
                    }
                )
            }
            .navigationTitle(label)
        }
}

struct CustomeButton:View {
    var color: Color
    var title: String
    var body: some View{
        Text(title)
            .frame(width: 200, height: 50, alignment: .center)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
