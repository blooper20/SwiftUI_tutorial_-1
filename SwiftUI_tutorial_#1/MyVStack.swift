//
//  MyVStack.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/05/13.
//

import SwiftUI

struct MyVStackView: View {
    
    @Binding // 데이터를 연동시킨다
    var isActived: Bool
    
    init(isActived: Binding<Bool> = // 생성자
        .constant(false)) { // 기본값을 false로 설정
            _isActived = isActived
        }
    
    var body: some View {
        VStack{ // Vertical Stack으로 수직으로 쌓는다.
            Text("1!")
                .fontWeight(.bold) // 1!! 텍스트를 굵게 설정
                .font(.system(size: 40)) // 텍스트사이즈를 60으로 설정
                .padding()
            Text("2!")
                .fontWeight(.bold) // 2!! 텍스트를 굵게 설정
                .font(.system(size: 40))
                .padding()
            Text("3!")
                .fontWeight(.bold) // 3!! 텍스트를 굵게 설정
                .font(.system(size: 40))
                .padding()
        } // VStack
        .background(self.isActived ? Color.green : Color.red) // isActived가 true이면 VStack의 배경색을 초록색으로 하고 false이면 빨강색으로 지정
        .padding(self.isActived ? 10 : 0)
    }
}
// 확인하는는 용도이므로 있어도 없어도 된다
struct MyVStackView_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        MyVStackView()
    }
}
