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
    return geometry.size.width / CGFloat(columnsCount)
  }
}
