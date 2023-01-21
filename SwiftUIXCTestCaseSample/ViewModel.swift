//
//	ViewModel.swift
//  SwiftUIXCTestCaseSample
//
//  Created by Juan Mueller on 1/21/23.
//  For more, visit www.ajourneyforwisdom.com
//

import Foundation

final class ViewModel: ObservableObject {
    @Published var input1: String = "0"
    @Published var input2: String = "0"
    @Published var output: String = "0"
    
    func calculate() {
        output = "\(Int(input1)! + Int(input2)!)"
    }
}
