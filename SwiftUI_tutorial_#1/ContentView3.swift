//
//  ContentView3.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/06/28.
//

import SwiftUI

struct ContentView3: View { // View
    var body: some View {
        NavigationView{
            HStack{
                NavigationLink(destination: MyWebView(urlToLoad:
                                                        "https://www.naver.com")
                    .edgesIgnoringSafeArea(.all)) {
                    Text("네이버")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                }
                NavigationLink(destination: MyWebView(urlToLoad:
                                                        "https://www.daum.net")
                    .edgesIgnoringSafeArea(.all)) {
                    Text("다음")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                }
                NavigationLink(destination: MyWebView(urlToLoad:
                                                        "https://www.google.com")
                    .edgesIgnoringSafeArea(.all)) {
                    Text("구글")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                }
            }
        } // NavigationView
    }
}

struct ContentView3_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        ContentView3() // ContentView를 프리뷰 화면에 띄운다.
    }
}
