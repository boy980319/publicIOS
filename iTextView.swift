//
//  iTextView.swift
//  TEST
//
//  Created by BY on 2023/4/20.
//

import SwiftUI

struct iTextView : View{
    @State private var youName : String = "Girl";
    
    var body: some View{
        VStack{
            //Text Group
            Group{
                //Text 视图默认表示静态的、不可选择的文本
                Text("1:struct body some View var struct body some View var struct body some View var")
                    .padding()
                    .font(.title2) // 字体大小
                    .frame(width: 300,height: 100)// 字体 view 的大小
                    .foregroundColor(Color.red) //字体颜色
                    .lineLimit(3)   //如果高度允许，限制为三行显示，
                    .lineSpacing(10)//行间距
                    .multilineTextAlignment(.leading)// 对齐方式。
                    .background(Color.green) // 背景色，位置很重要，通常放最后就好。
                    .kerning(6) //控制 字距(不会拉开连字)（未尾留有空白 ）
                    .tracking(6)//控制 字距（会拉开连字）（未尾留不留空白 ）
                
                Text("2:我是有内容的，但内容被灰色掩盖")
                    .font(.title2)
                    .redacted(reason: .placeholder);//将内容标记为 占位符 (它会被渲染，但会被灰色掩盖以表明它不是最终内容)
                
                Text("**图片做背景**")
                    .foregroundColor(Color.red)
                    .frame(width: 200, height: 100, alignment: .center)
                    .background(
                        Image("maplestory")
                            .resizable()
                            .opacity(0.3)
                    )
                
                Text("10: 默认是不可选的,现在变可选").textSelection(.enabled)
            }
            
            //TextField
            Group{
                TextField("Shout you name an me.", text:$youName)
                    .padding()
                    .foregroundColor(Color.red)
                    .background(Color.green)
                    .textFieldStyle(.roundedBorder)//圆满角边框样式
                    .textCase(.uppercase)//限制全大写 / .lowercase 小写
                
            }
            
            //Label
            Group{
                Label("Label12312", systemImage: "square.and.arrow.up.circle")
                    .padding(10)
                    .font(.title2)//设置字体大小。
                    .foregroundColor(Color.green.opacity(0.8))
                    .labelStyle(.titleAndIcon)//设置样式，只显示图标或文字，或两都都显示。
                    .background(Color.yellow.opacity(0.6))
                    .clipShape(Capsule())
                
                //自定义 Label
                Label(title: {
                    Text("123")
                }, icon: {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(width: 30,height: 20)
                }).padding()
            }
            
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
    }
}

struct iTextView_Previews: PreviewProvider {
    static var previews: some View {
        iTextView()
    }
}
