//
//  TextContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/05/28.
//

import SwiftUI

struct TextContentview: View { // View
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
//        formatter.dateFormat = "YYYY년 M월 d일" // 날짜 출력 방식 지정
        formatter.dateStyle = .long // 주어진 형식을 사용할 수도 있음
        return formatter
    }()
    
    var trueOrFalse : Bool = false
    var number : Int = 123
    var today = Date()
    
    var body: some View {
        VStack{
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a turpis efficitur, viverra massa quis, lacinia risus. Quisque lacus neque, vehicula a gravida vel, vestibulum a lectus. Vestibulum dui velit, convallis ut pretium sed, ullamcorper nec risus. Phasellus sed odio id nisl hendrerit fringilla nec a ligula. ")
                .tracking(2) // 자간 간격
                .font(.system(.body, design: .rounded)) // 폰트 사이즈, 디자인
                .fontWeight(.medium) // 폰트 크기
                .multilineTextAlignment(.center) // 정렬 방식
                .lineLimit(nil) // 글자수 제한
                .lineSpacing(10) // 행간 간격
                .truncationMode(.head) // 글자가 텍스트 박스 안에 표시가 안될 경우에 생략되는(...) 위치를 지정
                .shadow(color: Color.red, radius: 4, x: 0, y: 10) // 그림자 색깔, 선명도, 위치
                .padding(.vertical, 20) // 텍스트 박스에 대한 패딩
                .background(Color.yellow)
                .cornerRadius(20)
            
                .padding() // 패딩을 단계별로 넣을 수 있음
                .background(Color.green) // 배경색
                .cornerRadius(20) // 코너 둥근 정도
            
                .padding()
            
            Text("안녕하세요")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘의 날짜입니다 : \(today, formatter: TextContentview.dateFormat)")
            
            Text("진실 혹은 거짓 : \(String(trueOrFalse))") // 불리언 표현 방식은 String으로 한번 감싸줘야 출력이 가능
            
            Text("숫자입니다 : \(number)") // Int형은 바로 출력이 가능
        }
    }
}

struct TextContentview_Previews: PreviewProvider {
    static var previews: some View {
        TextContentview()
    }
}
