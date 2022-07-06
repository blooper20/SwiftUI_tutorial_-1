//
//  ContentView5.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/07/06.
//

import SwiftUI

struct ContentView5: View { // View
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // alignment으로 정렬을 맞출 수 있다
            // spacing으로 stack간의 간격을 띄울 수 있다.
            Divider()
                .opacity(0)
            // Divider로 스택의 정렬을 더욱 효과적으로 해주고 투명도를 0 으로 설정하여 구분 선이 보이지 않게 처리

            Text("글자")
                .font(.system(size: 30))
                .fontWeight(.heavy)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            Spacer()
                .frame(height: 50)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
        }
//        .edgesIgnoringSafeArea(.all)
        .frame(width: 300)
        .background(Color.green)
        
    }
}

struct ContentView5_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        ContentView5() // ContentView를 프리뷰 화면에 띄운다.
    }
}
