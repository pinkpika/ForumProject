//
//  ControlAndIndicatorView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/18.
//

import SwiftUI

struct ControlAndIndicatorView: View {
    
    @State private var value: Int = 0
    @State private var speed = 50.0
    @State private var isEditing = false
    @State private var vibrateOnRing = false
    
    var body: some View {
        VStack {
            Button("Sign In", action: {})
            Link("abc", destination: URL(string: "https://www.abc.com/")!)
            Menu("Actions") {
                Button("Copy", action: {})
                Button("Delete", action: {})
                Menu("More") {
                    Button("12345", action: {})
                }
            }
            Slider(
                value: $speed,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Stepper {
                Text("Value: \(value)")
            } onIncrement: {
                value += 1
            } onDecrement: {
                value -= 1
            }
            Toggle(isOn: $vibrateOnRing) {
                Text("Vibrate on Ring")
            }
        }
        .background(Color.init(white: 0.9))
    }
}

struct ControlAndIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        ControlAndIndicatorView()
    }
}
