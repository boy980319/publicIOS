//
//  iShapeView.swift
//  TEST
//
//  Created by BY on 2023/4/21.
//

import SwiftUI

struct iShapeView: View {
    @State private var completionAmount:CGFloat = 0.0;
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack{
            //实心形状
            HStack{
                Circle()//圆形（不会变成圆柱形/椭圆形）
                    .frame(width: 50,height: 80)
                    .foregroundColor(Color.red)
                
                Rectangle()//矩形(正/长方形)
                    .frame(width: 50,height: 60)
                    .foregroundColor(Color.green)
                
                Capsule()//圆柱形
                    .frame(width: 50,height: 100)
                    .foregroundColor(Color.blue)
                
                Ellipse()//椭圆形
                    .frame(width: 50,height: 80)
                    .foregroundColor(Color.yellow)
                 
                //圆角矩形(正/长方形)
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.green)
                    .frame(width: 100, height: 80)
            }
            //空心 形状
            HStack{
                Circle()
                    .stroke(Color.red, lineWidth: 3)//必须写在第一位
                    .frame(width: 50,height: 80)
                
                Rectangle()
                    .stroke(Color.green, lineWidth: 3)//必须写在第一位
                    .frame(width: 50,height: 60)
            
                Capsule()
                    .stroke(Color.blue, lineWidth: 3)//必须写在第一位
                    .frame(width: 50,height: 100)
                    
                Ellipse()
                    .stroke(Color.yellow, lineWidth: 3)
                    .frame(width: 50,height: 100)
                
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.green, lineWidth: 3)
                    .frame(width: 100,height: 80)
            }
            
            //实心 + 描边 形状
            HStack{
                Circle()
                    .stroke(Color.red, lineWidth: 5)
                    .background(Circle().fill(Color.green))
                    .frame(width: 50,height: 50)
                    
                Rectangle()
                    .stroke(Color.green, lineWidth: 5)
                    .background(Rectangle().fill(Color.red))
                    .frame(width: 50,height: 50)
                
                Capsule()//圆柱形
                    .stroke(Color.blue, lineWidth: 5)
                    .background(Capsule().fill(Color.yellow))
                    .frame(width: 50,height: 100)
                
                Ellipse()//椭圆形
                    .stroke(Color.yellow, lineWidth: 5)
                    .background(Ellipse().fill(Color.blue))
                    .frame(width: 50,height: 80)
                
                //圆角矩形(正/长方形)
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.green, lineWidth: 5)
                    .background(RoundedRectangle(cornerRadius: 25).fill(Color.red))
                    .frame(width: 100, height: 80)
            }
            
            HStack{
                Circle()
                    .trim(from: 0, to: completionAmount)//要放在前面
                    .stroke(Color.red, lineWidth: 3)
                    .rotationEffect(.degrees(-90))
                    .frame(width: 50,height: 50)
                    .onReceive(timer) { _ in
                        withAnimation {
                            if completionAmount == 1 {
                                completionAmount = 0
                            } else {
                                completionAmount += 0.2
                            }
                        }
                    }
                    
                Circle()
                    .trim(from: 0, to: 0.7)//要放在前面
                    .fill(Color.green)
                    .rotationEffect(.degrees(-90))
                    .frame(width: 50,height: 50)
                
                Capsule()//圆柱形
                    .trim(from: 0, to: 0.7)//要放在前面
                    .frame(width: 50,height: 100)
            }
        }
    }
}

struct iShapeView_Previews: PreviewProvider {
    static var previews: some View {
        iShapeView()
    }
}
