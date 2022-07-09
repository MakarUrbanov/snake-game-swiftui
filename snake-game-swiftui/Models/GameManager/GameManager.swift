import Foundation

class GameManager: ObservableObject {
  @Published var isMenuShown = true
  @Published var isGameStarted = false

  @Published var snakeColor = SnakeColors.green

  func startGame() {
    isGameStarted = true
    isMenuShown = false
  }
}
