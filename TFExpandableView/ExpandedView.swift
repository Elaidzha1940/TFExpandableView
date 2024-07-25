//
//  ExpandedView.swift
//  TFExpandableView
//
//  Created by Elaidzha Shchukin on 25.07.2024.
//

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

