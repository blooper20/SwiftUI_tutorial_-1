//
//  ContentView4.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/06/28.
//

import SwiftUI

struct ContentView4: View { // View
    var body: some View {
        NavigationView {
            VStack{
                Image("myImage")
                    .frame(height: 10)
                    .offset(y: -1100)
                
                CircleImageView()
                HStack {
                    NavigationLink(destination:
                                    MyWebView(urlToLoad:
                                                "https://www.youtube.com/watch?v=VBaWe1izUHM").edgesIgnoringSafeArea(.bottom)){
                        // 웹뷰로 유튜브창을 띄우는데 밑에만 꽉차게
                        Text("노래 들으러 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination:
                                    MyWebView(urlToLoad:
                                                "https://www.youtube.com/watch?v=xaHIBS6u4Rg").edgesIgnoringSafeArea(.bottom)){
                        Text("영상 보러가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                    }
                } // HStack
                .padding(20)
            }
        }
    }
}

struct ContentView4_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        ContentView4() // ContentView를 프리뷰 화면에 띄운다.
    }
}
