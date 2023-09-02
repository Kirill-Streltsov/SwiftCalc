//
//  MemoryView.swift
//  SwiftCalc
//
//  Created by Kirill Streltsov on 02.09.23.
//

import SwiftUI

struct MemoryView: View {
  @Binding var memory: Double
  var geometry: GeometryProxy

  var body: some View {
    HStack {
      Spacer()
      Text("\(memory)")
        .padding(.horizontal, 5)
        .frame(
          width: geometry.size.width * 0.85,
          alignment: .trailing
        )
        .overlay(
          RoundedRectangle(cornerRadius: 8)
            .stroke(lineWidth: 2)
            .foregroundColor(Color.gray)
        )
      // Add gesture here
      Text("M")
    }.padding(.bottom).padding(.horizontal, 5)
  }
}
