//
//  MyBasicCard.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/07/06.
//

import SwiftUI

struct MyBasicCard: View {
    
    var body : some View {
        HStack(spacing: 20){
            Image(systemName: "flame.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
//                Rectangle().frame(height: 0)
                Text("유재우 유튜브 프로젝트")
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Spacer().frame(height: 5)
                Text("10 AM ~ 11 AM")
                    .foregroundColor(.white)
            }
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
    }
}
struct MyBasicCard_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        MyBasicCard() // ContentView를 프리뷰 화면에 띄운다.
    }
}


