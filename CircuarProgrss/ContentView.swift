//
//  ContentView.swift
//  CircuarProgrss
//
//  Created by Guilherme Duarte on 08/07/20.
//  Copyright © 2020 Guilherme Duarte. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var percentVisit : CGFloat = 75
    @State var percentTrimestryIn : CGFloat = 55
    @State var percentAuditors : CGFloat = 65
    @State var valueCote : Double = 138000.15
    @State var maxValueCote : CGFloat = 212788.15
    @State var valueTotal : CGFloat = 300000.00
    @State var valueUtility : CGFloat = 190000.00
    @State var valueToAprove : CGFloat = 250000.00
    
    var body: some View {
        VStack{
            ProgressCircularType(percent: percentVisit, isVisited: true)
                
            ProgressCircularType(percent: percentAuditors, isVisited: false,valueCote: valueCote, maxValueCote: maxValueCote)
                
            ProgressHorizontalTypeAuditors(percent: percentTrimestryIn
            )
            
            ProgressHorizontalTypeVerbs(valueTotal: valueTotal, valueUtility: valueUtility, valueToAprove: valueToAprove)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

