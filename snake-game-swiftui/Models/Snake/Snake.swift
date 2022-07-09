import Foundation
import SwiftUI

class Snake: ObservableObject {
  @Published var color: SnakeColors
  @Published var cells: [CGPoint]

  private static func getInitialCells(columnsCount: Int) -> [CGPoint] {
    let headPosition = ceil(Double(columnsCount / 2))
    return [
      CGPoint(x: headPosition, y: headPosition),
      CGPoint(x: headPosition, y: headPosition - 1),
      CGPoint(x: headPosition, y: headPosition - 2)
    ]
  }

  init(color: SnakeColors, columnsCount: Int) {
    self.color = color
    self.cells = Snake.getInitialCells(columnsCount: columnsCount)
  }
}
