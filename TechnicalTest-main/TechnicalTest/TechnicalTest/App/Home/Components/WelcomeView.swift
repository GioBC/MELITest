//
//  WelcomeView.swift
//  TechnicalTest
//
//  Created by Giovanny Beltran on 13/06/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack{
            Text("Welcome to SnowSeeker")
                .font(.largeTitle)
            
            Text("Please no se que")
                .foregroundColor(.secondary)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
