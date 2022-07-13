import Foundation
import SwiftUI

class Snake: ObservableObject {
  @Published var color: SnakeColors
  @Published var cells: [Cell]

  private static func getInitialCells(columnsCount: Int) -> [Cell] {
    let headPosition = ceil(Double(columnsCount / 2))

    return Array(repeating: Cell(CGPoint(x: 0, y: 0)), count: 3).enumerated().map { (offset, _) in
      return Cell(CGPoint(x: headPosition, y: headPosition + Double(offset)))
    }
  }

  init(color: SnakeColors, columnsCount: Int) {
    self.color = color
    self.cells = Snake.getInitialCells(columnsCount: columnsCount)
  }
}
