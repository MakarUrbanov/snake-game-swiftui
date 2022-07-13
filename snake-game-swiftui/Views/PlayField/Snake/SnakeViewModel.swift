import Foundation
import SwiftUI

class SnakeViewModel: ObservableObject {
  func getPositionByCoordinates(cellSize: CGFloat, coordinates: CGPoint) -> CGPoint {
    let x = CGFloat(coordinates.x) * cellSize + (cellSize / 2)
    let y = CGFloat(coordinates.y) * cellSize + (cellSize / 2)
    return CGPoint(x: x, y: y)
  }
}
