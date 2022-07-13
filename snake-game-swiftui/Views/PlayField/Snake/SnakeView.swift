import SwiftUI

struct SnakeView: View {
  @StateObject var viewModel = SnakeViewModel()
  @EnvironmentObject var gameManager: GameManager
  @EnvironmentObject var snake: Snake

  var columnsCount: Int
  var cellSize: CGFloat

  var body: some View {
    ZStack {
      ForEach(snake.cells) { snakeCell in
        let isHead = snakeCell.id == snake.cells[0].id

        SnakeCell(
          position: viewModel.getPositionByCoordinates(cellSize: cellSize, coordinates: snakeCell.position),
          cellSize: cellSize,
          snakeColor: snake.color,
          isHead: isHead
        )

      }
    }
  }
}
