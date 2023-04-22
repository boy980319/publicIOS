//
//  iEffect.swift
//  TEST
//
//  Created by BY on 2023/4/21.
//

import SwiftUI

struct iEffectView: View {
    var body: some View {
        VStack{
            //渐变色
            Text("Hello, Background effect")
                .background(LinearGradient(gradient: Gradient(colors:[.yellow, .blue, .red]), startPoint: .leading, endPoint: .trailing))
            
            Image("maplestory")
                .background(
                    LinearGradient(gradient: Gradient(colors:[.blue, .gray, .green]), startPoint: .top, endPoint: .bottom)
                )
            
            Circle()
                .fill(
                    RadialGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]), center: .center, startRadius: 200, endRadius: 10)
                )
                .frame(width: 200, height: 200)

            Circle()
                .fill(
                    AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
                )
                .frame(width: 200, height: 200)

            Circle()
                .strokeBorder(
                    AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center, startAngle: .zero, endAngle: .degrees(360)),
                    lineWidth: 50
                )
                .frame(width: 200, height: 200)

        }
    }
}

struct iEffectView_Previews: PreviewProvider {
    static var previews: some View {
        iEffectView()
    }
}
