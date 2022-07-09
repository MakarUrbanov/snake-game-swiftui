import Foundation
import SwiftUI

class PlayFieldViewModel: ObservableObject {
  func getColumns(columnsCount: Int, gridItem: GridItem) -> [GridItem] {
    var columns: [GridItem] = []

    for _ in 1...columnsCount {
      columns.append(gridItem)
    }

    return columns
  }

  func getCellItemSize(geometry: GeometryProxy, columnsCount: Int) -> CGFloat {
    print(geometry.size.width / CGFloat(columnsCount))
    return geometry.size.width / CGFloat(columnsCount)
  }

  // TODO
//  func getPositionByCoordinates(cellSize: CGFloat, coordinates: CGPoint) -> CGPoint {
//    let x = CGFloat(coordinates.x) * cellSize + (cellSize / 2)
//    let y = CGFloat(coordinates.y) * cellSize + (cellSize / 2)
//    return CGPoint(x: x, y: y)
//  }
}
