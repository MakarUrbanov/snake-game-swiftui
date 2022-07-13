import SwiftUI

struct Cell: Identifiable {
  let id = UUID().uuidString
  var position: CGPoint

  init(_ position: CGPoint) {
    self.position = position
  }
}
