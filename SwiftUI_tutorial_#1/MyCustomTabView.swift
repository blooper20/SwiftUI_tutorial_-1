//
//  MyCustomTabView.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/05/17.
//

import SwiftUI

enum TabIndex {
    case home
    case cart
    case profile
}
struct MyCustomTabView : View {
    @State var tabIndex : TabIndex
    var body: some View{
        GeometryReader{ geometry in
            ZStack{
                MyView(title: "홈, ")
            }
            
        }
    }
}

struct MyCustomTabView_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        MyCustomTabView(tabIndex: .home)
    }
}
