//
//  TutorialZStackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/06/28.
//

import SwiftUI

struct TutorialZStackView: View { // View
    var body: some View {
        ZStack{
            Rectangle() // 코드 상에 가장 위에 작성된 코드순으로 층이 쌓인다.
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
                .zIndex(3) // Z층을 임의로 설정이 가능 기본이 0
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.yellow)
                .zIndex(3)
            Rectangle()
                .frame(width: 300, height: 300)
                .foregroundColor(Color.blue)
                .zIndex(2)
            }
}

struct TutorialZStackView_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        TutorialZStackView() // ContentView를 프리뷰 화면에 띄운다.
    }
}

}
