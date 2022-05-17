//
//  PersonalTabView.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/05/17.
//

import SwiftUI

struct PersonalTabView: View {
    var body: some View {
        VStack{ // Vertical Stack으로 수직으로 쌓는다.
            Spacer()
            Text("프로필")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity) // frame으로 꽉채운다.
            Spacer()
        } // VStack
        .background(Color.blue)
    }
}
// 확인하는는 용도이므로 있어도 없어도 된다
struct PersonalTabView_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        PersonalTabView()
    }
}
