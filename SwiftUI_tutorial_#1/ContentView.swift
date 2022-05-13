//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/05/13.
//

import SwiftUI

struct ContentView: View { // View
    var body: some View {
        HStack{
            // HStack안에 VStack을 3개 넣음
            MyVStackView()
            MyVStackView()
            MyVStackView()
        } // HStack
        .padding(10)
        .background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        ContentView() // ContentView를 프리뷰 화면에 띄운다.
    }
}
