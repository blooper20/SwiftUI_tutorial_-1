//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/05/15.
//

import SwiftUI

struct MyTextView: View {
    @State  // 값의 변화를 감지 -> 뷰에 적용
    private var index: Int = 0
    private let backgroundColors = [ // 배경색 배열
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    var body : some View {
        VStack{
            Spacer() // Text("배경 아이템 인덱스") 위에 공간을 채워준다.
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity) // frame으로 꽉채운다.
            Spacer() // Text("배경 아이템 인덱스") 아래의 공간을 채워준다.
        }
        .background(backgroundColors[index]) // background의 색을 backgroundColors 배열 안에 있는 색으로 지정
//        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            print("배경아이템이 클릭됨")
            if(self.index == self.backgroundColors.count - 1){ // self.index가 backgroundColors의 마지막 인덱스를 지칭하면 0으로 초기화
                self.index = 0
            } else {
                self.index += 1
            }
        }
    }
}

struct MyTextView_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        MyTextView()
    }
}
