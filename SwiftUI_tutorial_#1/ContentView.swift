//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/05/13.
//

import SwiftUI

struct ContentView: View { // View
    var body: some View {
        ZStack(alignment: .bottomTrailing){ // .bottomTrailing :쌓이는 버튼을 오른쪽 아래로 설정함
            VStack(alignment: .leading, spacing: 0){
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                .padding(20)
                Text("유재우 할일 목록")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .padding(.horizontal, 20)
                ScrollView{
                    VStack{
                        MyProjectCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                    }.padding(.horizontal, 20)
                }
            }
            Circle()
                .foregroundColor(Color.yellow)
                .frame(width: 60, height: 60)
                .overlay(
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white))
                .padding(10)
                .shadow(radius: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        ContentView() // ContentView를 프리뷰 화면에 띄운다.
    }
}
