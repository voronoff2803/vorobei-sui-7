//
//  ContentView.swift
//  vorobei-sui-7
//
//  Created by Alexey Voronov on 18.10.2023.
//

import SwiftUI

struct ContentView: View {
    @Namespace private var animation
    @State private var isOpened = false
    
    var body: some View {
        ZStack {
            if isOpened == true {
                VStack {
                    HStack {
                        Button(action: {buttonAction()}, label: {
                            Image(systemName: "arrowshape.left.fill")
                            Text("Back")
                                .fontWeight(.semibold)
                                .matchedGeometryEffect(id: "animation2", in: animation)
                        })
                        .padding()
                        Spacer()
                    }
                    Spacer()
                }
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .matchedGeometryEffect(id: "animation", in: animation)
                .frame(width: 250, height: 400)
            }
            if isOpened == false {
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {buttonAction()}) {
                            ZStack {
                                Text("Open")
                                    .fixedSize(horizontal: true, vertical: true)
                                    .matchedGeometryEffect(id: "animation2", in: animation)
                            }
                            .padding()
                        }
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.blue)
                                .matchedGeometryEffect(id: "animation", in: animation)
                            
                        }
                        .foregroundColor(.white)
                        .padding()
                        
                    }
                }
            }
        }
    }
    
    func buttonAction() {
        withAnimation(.smooth) {
            isOpened.toggle()
        }
    }
}




#Preview {
    ContentView()
}
