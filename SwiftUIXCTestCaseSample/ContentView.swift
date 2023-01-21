//
//	ContentView.swift
//  SwiftUIXCTestCaseSample
//
//  Created by Juan Mueller on 1/21/23.
//  For more, visit www.ajourneyforwisdom.com
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            HStack {
                TextField("",  text: $viewModel.input1)
                    .padding()
                    .border(.gray)
                
                Text("+")
                
                TextField("", text: $viewModel.input2)
                    .padding()
                    .border(.gray)
                
                Text("=")
                
                TextField("", text: $viewModel.output)
                    .padding()
                    .border(.gray)
            }.padding()
            
            Button {
                viewModel.calculate()
            } label: {
                Text("Calculate")
            }.buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
