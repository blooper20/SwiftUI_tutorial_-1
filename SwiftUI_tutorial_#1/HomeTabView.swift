//
//  HomeTabView.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/05/17.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        VStack{ // Vertical Stack으로 수직으로 쌓는다.
            Spacer()
            Text("홈")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0) // frame으로 꽉채운다.
            Spacer()
        } // VStack
        .edgesIgnoringSafeArea(.bottom)
        .background(Color.green)
        
    }
}

struct HomeTabView_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        HomeTabView()
    }
}
