//
//  iBaseView.swift
//  TEST
//
//  Created by BY on 2023/4/21.
//

import SwiftUI

struct iBaseView: View {
    
    private var a = 1 ;//定义变量 a 类型是 Number。
    private let A = "1" ; //定义常量 A 类型是 String。
    
    var body: some View {
        VStack{
            //显示 日期
            Text(Date(),style: .date)// 显示 月 日, 年
            Text(Date(), style: .time)//显示示 时:分
            Text(Date().addingTimeInterval(60), style: .time)//显示示 时:分 但是加了 60秒
            Text(Date().addingTimeInterval(120), style: .relative)
            Text(Date().addingTimeInterval(60), style: .offset)
            Text(Date().addingTimeInterval(60), style: .timer)
            
            Text(Date(), format: Date.FormatStyle(date: .numeric, time: .omitted))
            Text(Date(), format: Date.FormatStyle(date: .complete, time: .complete))
            Text(Date(), format: Date.FormatStyle().hour(.defaultDigits(amPM: .wide)).minute().second())
//          有限支持Markdown的粗体、斜体、文字中间加横线、超链接。
            Text("3: **粗体** , *斜体* ***bold+italic*** \n 换行 ~~中横线~~ [超链接](https://www.apple.com)");
            
        }
    }
}

struct iBaseView_Previews: PreviewProvider {
    static var previews: some View {
        iBaseView()
    }
}
