//
//  OrientationModifier.swift
//  TechnicalTest
//
//  Created by Giovanny Beltran on 13/06/23.
//

import Foundation
import SwiftUI

struct OrientationDetector: ViewModifier {
  @Binding var orientation: UIDeviceOrientation

  func body(content: Content) -> some View {
    content
      .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
        orientation = UIDevice.current.orientation
      }
  }
}

extension View {
  func detectOrientation(_ binding: Binding<UIDeviceOrientation>) -> some View {
    self.modifier(OrientationDetector(orientation: binding))
  }
}
