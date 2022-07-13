import SwiftUI

struct SnakeCell: View {
  @State var position: CGPoint
  @State var cellSize: CGFloat
  @State var snakeColor: SnakeColors
  @State var isHead: Bool

  init(
    position: CGPoint,
    cellSize: CGFloat,
    snakeColor: SnakeColors,
    isHead: Bool
  ) {
    self.position = position
    self.cellSize = cellSize
    self.snakeColor = snakeColor
    self.isHead = isHead
  }

  var body: some View {
    ZStack {
    }
    .frame(width: cellSize, height: cellSize)
    .background(Color(hex: snakeColor.rawValue))
    .cornerRadius(6)
    .position(position)
    .overlay {
      if isHead {
        ZStack {
        }
        .frame(width: cellSize, height: cellSize)
        .background(.black.opacity(0.3))
        .cornerRadius(6)
        .position(position)
      }
    }
  }
}
