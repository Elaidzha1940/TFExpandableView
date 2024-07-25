//  /*
//
//  Project: TFExpandableView
//  File: ExpandedView.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.07.2024
//
//  */

import SwiftUI

struct ExpandedView: View {
    var id = UUID()
    @ViewBuilder var content: any View
    
    var body: some View {
        ZStack {
            AnyView(content)
        }
    }
}

//struct ExpandedView: View {
//    let content: () -> AnyView
//
//    var body: some View {
//        content()
////            .frame(width: 300, height: 300)
//            .background(Color.red)
//            .cornerRadius(20)
//    }
//}

