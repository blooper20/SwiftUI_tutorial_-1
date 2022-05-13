//
//  MyVStack.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/05/13.
//

import SwiftUI

struct MyVStackView: View {
    var body: some View {
        VStack{ // Vertical Stack으로 수직으로 쌓는다.
            Text("1!!")
                .fontWeight(.bold) // 1!! 텍스트를 굵게 설정
                .font(.largeTitle) // 1!! 텍스트를 크게 설정
                .padding()
            Text("2!!")
                .fontWeight(.bold) // 2!! 텍스트를 굵게 설정
                .font(.largeTitle) // 2!! 텍스트를 크게 설정
                .padding()
            Text("3!!")
                .fontWeight(.bold) // 3!! 텍스트를 굵게 설정
                .font(.largeTitle) // 3!! 텍스트를 크게 설정
                .padding()
        } // VStack
        .background(Color.red) // VStack의 배경색을 빨강색으로 지정
    }
}
// 확인하는는 용도이므로 있어도 없어도 된다
struct MyVStackView_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        MyVStackView()
    }
}
