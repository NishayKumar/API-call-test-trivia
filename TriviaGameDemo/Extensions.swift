//
//  Extensions.swift
//  TriviaGameDemo
//
//  Created by Nishay Kumar on 13/07/23.
//

import Foundation
import SwiftUI


extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
        .fontWeight(.heavy)
        .foregroundColor(.accentColor)
    }
}
