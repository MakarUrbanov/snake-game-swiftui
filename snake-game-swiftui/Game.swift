import SwiftUI

struct Game: View {
  static let COLUMNS_COUNT = 10

  @StateObject var gameManager = GameManager()
  @StateObject var snake = Snake(color: .green, columnsCount: Game.COLUMNS_COUNT)

  var body: some View {
    ZStack {
      if gameManager.isMenuShown {
        MainMenuView(snakeColor: snake.color)
        .zIndex(1)
      }

      PlayFieldView(columnsCount: Game.COLUMNS_COUNT) { (columnsCount, cellSize) in
        ZStack {
          SnakeView(columnsCount: columnsCount, cellSize: cellSize)
        }
      }
    }
    .environmentObject(gameManager)
    .environmentObject(snake)
  }
}
