//  /*
//
//  Project: TFExpandableView
//  File: ThumbnailView.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.07.2024
//
//  */

import SwiftUI

struct ThumbnailView: View, Identifiable {
    var id = UUID()
    @ViewBuilder var content: any View
    
    var body: some View {
        ZStack {
            AnyView(content)
        }
    }
}

//struct ThumbnailView: View {
//    let content: () -> AnyView
//    
//    var body: some View {
//        content()
////            .frame(width: 100, height: 100)
//            .background(Color.blue)
//            .cornerRadius(20)
//    }
//}

