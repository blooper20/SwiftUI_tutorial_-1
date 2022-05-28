//
//  ContentView2.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/05/20.
//

import SwiftUI

struct ContentView2: View { // View
    @State  // 값의 변화를 감지 -> 뷰에 적용
    private var isActived: Bool = false
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    // HStack안에 VStack을 3개 넣음
                    MyVStackView(isActived: $isActived) // ContentView의 isActived를 MyVStackView의 isActived로 연결
                    MyVStackView(isActived: $isActived)
                    MyVStackView(isActived: $isActived)
                } // HStack
                .padding(isActived ? 50 : 10)
                .background(isActived ? Color.yellow : Color.black) // isActived가 만약 True일 땐 배경이 파란색이고 아닐 때엔 검은색으로 설정
                .onTapGesture { // 탭 제스쳐 추가
                    print("HStack이 클릭됨")
                    withAnimation { // 애니메이션 효과 적용
                        self.isActived.toggle() // toggle() = isActived 가 True 이면 False로 False이면 True로 변경
                    }
                }
                NavigationLink(destination: MyTextView(isActived: $isActived) ){ // NavigationLink를 클릭하면 MyTextView()View로 넘어간다.
                    Text("네비게이션") // 네비게이션링크에 대한 설정
                        .fontWeight(.heavy)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
                .padding(.top, 50)
            } // VStack
        } // NavigationView
    }
}

struct ContentView2_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        ContentView() // ContentView를 프리뷰 화면에 띄운다.
    }
}
