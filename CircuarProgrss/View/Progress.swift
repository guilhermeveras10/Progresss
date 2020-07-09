//
//  Progress.swift
//  CircuarProgrss
//
//  Created by Guilherme Duarte on 08/07/20.
//  Copyright © 2020 Guilherme Duarte. All rights reserved.
//

import SwiftUI

struct ProgressCircularType : View {
    var percent : CGFloat = 0
    var isVisited : Bool = true
    var colors : [Color] = [Color(.redColor),Color(.yellowColor),Color(.greenColor)]
    
    var valueCote : Double = 0
    var maxValueCote : Double = 0
    var colorsAuditors : [Color] = [Color(.blueLightColor),Color(.bluMediumColor),Color(.blueAutoColor)]
    
    var body : some View{
            ZStack{
                Circle()
                    .trim(from: 0, to: 0.5)
                    .stroke(style: StrokeStyle(lineWidth: CGFloat.lineHeight))
                    .rotationEffect(.degrees(180))
                    .foregroundColor(Color(.lightGrayColor))
                    .frame(width: CGFloat.wightCircularProgress, height: CGFloat.heightCircularProgress)
                if isVisited {

                    Circle()
                        .trim(from: 0, to: percent * 0.01 / 2)
                        .stroke(style: StrokeStyle(lineWidth: CGFloat.lineHeight))
                        .fill(AngularGradient(gradient: .init(colors: colors), center: .center, startAngle: .zero, endAngle: .init(degrees: 180)))
                        .rotationEffect(.degrees(180))
                        .frame(width: CGFloat.wightCircularProgress, height: CGFloat.heightCircularProgress)
                    ZStack{
                        Text(String(format: "%.f", percent) + "%\n").font(.system(size: 32)).fontWeight(.heavy).foregroundColor(Color(.normalBlack)).lineSpacing(10)
                    Spacer()
                        Text("COBERTURA").font(.system(size: 14)).foregroundColor(Color(.lightBlack))
                    }
                } else if !isVisited {

                    Circle()
                        .trim(from: 0, to: percent * 0.01 / 2)
                        .stroke(style: StrokeStyle(lineWidth: CGFloat.lineHeight))
                        .fill(AngularGradient(gradient: .init(colors: colorsAuditors), center: .center, startAngle: .zero, endAngle: .init(degrees: 180)))
                        .rotationEffect(.degrees(180))
                        .frame(width: CGFloat.wightCircularProgress, height: CGFloat.heightCircularProgress)

                        HStack(alignment: .bottom, spacing: 90) {
                                        
                            Text("\nR$ 0,00").font(.system(size: 13.58)).foregroundColor(Color(.lightBlack))
                            
                            if maxValueCote < 1000 {

                                Text("R$ " + String(maxValueCote).replacingOccurrences(of: ",", with: ".")).font(.system(size: 14)).foregroundColor(Color(.lightBlack)).lineSpacing(10)
                            } else if maxValueCote > 999 {
                                Text("R$ " + String(format: "%.3f", maxValueCote / 1000).replacingOccurrences(of: ",", with: ".") + "," + maxValueCote.fractionalPart()).font(.system(size: 14)).foregroundColor(Color(.lightBlack)).lineSpacing(10)
                                                            
                            }
                        }
                        ZStack{
                            HStack(alignment: .top,spacing: 1){
                                                
                                Text("R$").font(.system(size: 9.27)).foregroundColor(Color(.normalBlack)).padding(.top,10)
                                if valueCote < 1000 {

                                    Text(String(format: "%.0f", valueCote).replacingOccurrences(of: ",", with: ".") + "\n").font(.system(size: 22.25)).fontWeight(.heavy).foregroundColor(Color(.normalBlack)).lineSpacing(10)
                                } else if valueCote > 999 {
                                    Text(String(format: "%.3f", valueCote / 1000).replacingOccurrences(of: ",", with: ".") + "\n").font(.system(size: 22.25)).fontWeight(.heavy).foregroundColor(Color(.normalBlack)).lineSpacing(10)
                                                                
                                }
                                Text("," + valueCote.fractionalPart()).font(.system(size: 9.27)).foregroundColor(Color(.normalBlack)).padding(.top,10)
                            }
                            Spacer()
                            Text("COTA").font(.system(size: 14)).foregroundColor(Color(.lightBlack))
                            }
                }
            }
    }
}


struct ProgressHorizontalTypeAuditors : View {
    
    var padding : CGFloat = 0
    var percent : CGFloat = 0
    
    var body : some View{
        ZStack(alignment: .leading){
             
            Rectangle()
                .trim(from: 0, to: 0.5)
                .stroke(style: StrokeStyle(lineWidth: CGFloat.lineHeight))
                .fill(Color(.lightGrayColor))
                .frame(width: CGFloat.wightHorizontalBarAuditors,height: CGFloat.heightHorizontalBarAuditors)

            Rectangle()
                .trim(from: 0, to: percent * 0.01 / 2)
                .stroke(style: StrokeStyle(lineWidth: CGFloat.lineHeight))
                .fill(Color(.blueAutoColor))
                .frame(width: CGFloat.wightHorizontalBarAuditors,height: CGFloat.heightHorizontalBarAuditors)
            
        }.padding(CGFloat.paddingHorizontalBarAuditors)
    }
}

struct ProgressHorizontalTypeVerbs : View {
    
    var valueTotal : CGFloat = 0
    var valueUtility : CGFloat = 0
    var valueToAprove : CGFloat = 0
    var padding : CGFloat = 0
    var balance : CGFloat = 0
    
    var body : some View{
        
        ZStack(alignment: .leading){
            Rectangle()
                .trim(from: 0, to: 0.5)
                .stroke(style: StrokeStyle(lineWidth: CGFloat.lineHeight))
                .fill(Color(.lightGrayColor))
                .frame(width: CGFloat.wightHorizontalBarVerbs,height: CGFloat.heightHorizontalBarVerbs)

            Rectangle()
                .trim(from: 0, to: valueUtility * 100 / valueTotal * 0.01 / 2)
                .stroke(style: StrokeStyle(lineWidth: CGFloat.lineHeight))
                .fill(Color(.blueAutoColor))
                .frame(width: CGFloat.wightHorizontalBarVerbs,height: CGFloat.heightHorizontalBarVerbs)
            
            Rectangle()
                .trim(from: valueUtility * 100 / valueTotal * 0.01 / 2, to: valueToAprove * 100 / valueTotal * 0.01 / 2)
                .stroke(style: StrokeStyle(lineWidth: CGFloat.lineHeight))
                .fill(Color(.yellowColor))
                .frame(width: CGFloat.wightHorizontalBarVerbs,height: CGFloat.heightHorizontalBarVerbs)
            
        }.padding(CGFloat.paddingHorizontalBarVerbs)
    }
}

