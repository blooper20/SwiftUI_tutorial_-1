//
//  CircleImageView.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/06/28.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 200))
//            .foregroundColor(.blue)
//            .shadow(color: .gray, radius: 2, x: 0, y: 10)
        Image("myImage")
            .resizable() // 이미지 재정렬
            .scaledToFill() // = aspaspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300) // 이미지에 대한 프레임을 설정
            .clipShape(Circle()) // 동그랗게 잘라내기
            .shadow(color: .gray, radius: 2, x: 5, y: 10)
            .overlay(Circle().foregroundColor(.black)
                .opacity(0.6)
            )
            .overlay(
                Circle().stroke(Color.red, lineWidth: 10) // 선의 색이 빨강색이고 굵기가 10인 원을 덧씌움
                    .padding(10)
            )
            .overlay(
                Circle().stroke(Color.yellow, lineWidth: 10)
                    .padding(30)
            )
            .overlay(
                Text("안녕")
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
            )
//            .aspectRatio(contentMode: .fill) // 비율을 원하는대로 설정(.fit, .fll)
//            .clipped() // 이미지의 프레임에 맞게 잘라내기
            .edgesIgnoringSafeArea(.all) // 채우고 싶은 부위를 설정 가능(.all, .bottom, .top)
            
        
    }
}

struct CircleImageView_Previews:
    PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
