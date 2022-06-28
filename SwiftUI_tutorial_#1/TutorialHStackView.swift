//
//  TutorialHStackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by MacBook Air on 2022/06/28.
//

import SwiftUI

struct TutorialHStackView: View { // View
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            
            Image(systemName: "flame.fill")
                .foregroundColor(.white)
                .font(.system(size: 70))
            Rectangle()
               .frame(width: 100, height: 100)
               .foregroundColor(.yellow)
            Rectangle()
               .frame(width: 100, height: 100)
               .foregroundColor(.blue)
        }
        .padding()
        .background(Color.green)
    }
}

struct TutorialHStackView_Previews: PreviewProvider { // 프리뷰 화면을 볼수 있게함
    static var previews: some View {
        TutorialHStackView() // ContentView를 프리뷰 화면에 띄운다.
    }
}
