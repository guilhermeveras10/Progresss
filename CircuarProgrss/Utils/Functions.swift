//
//  Functions.swift
//  CircuarProgrss
//
//  Created by Guilherme Duarte on 09/07/20.
//  Copyright © 2020 Guilherme Duarte. All rights reserved.
//

import Foundation
import SwiftUI

extension Double {
    
    func fractionalPart()->String{
        let valDecimal = self.truncatingRemainder(dividingBy: 1)
        let formatted = String(format: "%.\(2)f", valDecimal)
        let dropQuantity = self < 0 ? 3:2
        return formatted.dropFirst(dropQuantity).description
    }
}

