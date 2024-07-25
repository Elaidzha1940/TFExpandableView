//  /*
//
//  Project: TFExpandableView
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.07.2024
//
//  */

import SwiftUI

struct ContentView: View {
    let data = sampleData
    
    var body: some View {
        ScrollView {
            VStack(spacing: -20) {
                ForEach(data) { item in
                    ExpandableView(thumbnail: ThumbnailView(content: {
                        AnyView(
                            VStack {
                                Text(item.thumbnailText)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(.white)
                                    .font(.system(size: 20, weight: .bold, design: .monospaced))
                                
                                Text(item.thumbnailSubText)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(.white)
                                    .font(.system(size: 12, weight: .bold, design: .monospaced))
                            }
                                .padding()
                        )
                    }), expanded: ExpandedView(content: {
                        AnyView(
                            VStack {
                                Text(item.thumbnailText)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(.white)
                                    .font(.system(size: 28, weight: .bold, design: .monospaced))
                                
                                Text(item.thumbnailSubText)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .bold, design: .monospaced))
                                
                                Text(item.expandedDescription)
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .bold, design: .monospaced))
                                
                                Spacer()
                            }
                                .padding()
                        )
                    }))
                    .padding()
                }
            }
        }
        .scrollIndicators(.never)
        .background(Color.mint)
    }
}

#Preview {
    ContentView()
}
