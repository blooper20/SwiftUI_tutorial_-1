//
//  MyWebView.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/05/20.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable { // UIKit의 UIView를 사용할수 있도록 한다
    
    var urlToLoad: String
    
    // UI View 만들기
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.urlToLoad) else { // unwrapping: self.urlToLoad 값이 없다면 WKWebView()를 반환 하고 아니면 url 인스턴스를 만들어준다.
            return WKWebView()
        }
        let webview = WKWebView() // 웹뷰 인스턴스 생성
        webview.load(URLRequest(url: url)) // 웹뷰를 로드
        return webview // 웹뷰를 반환
    }
    //업데이트 UI View
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
    }
}

struct MyWebView_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com") // ContentView를 프리뷰 화면에 띄운다.
    }
}
