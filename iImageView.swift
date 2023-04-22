//
//  iImageView.swift
//  TEST
//
//  Created by BY on 2023/4/21.
//

import SwiftUI

struct iImageView: View {
    var body: some View {
        VStack{
            Group{
                HStack{
                    //使用系统的 矣量图片
                    Image(systemName: "suitcase.cart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                        
                    //使用系统的 矣量图片
                    Image(systemName: "suitcase.cart.fill")
                        .font(.largeTitle)
                        .background(Color.purple)
                        .clipShape(Circle())//设置成某些形状
                }
                
                Image("maplestory")
                    .resizable() // 图像将自动调整大小，以使其填满所有可用空间(会被变形)
                
                Image("maplestory")
                    .resizable()
                    .aspectRatio(contentMode: .fit)//保持其宽高比
                
                //平铺图片
                Image("maplestory")
                    .resizable(resizingMode: .tile)
                
                //平铺图像的一部分（将一个或多个边缘固定在图像视图的边缘）
                Image("maplestory")
                    .resizable(capInsets: EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 30), resizingMode: .tile)
                
                
            }
        }
    }
}

struct iImageView_Previews: PreviewProvider {
    static var previews: some View {
        iImageView()
    }
}
