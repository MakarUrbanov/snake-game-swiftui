import Foundation

class GameManager: ObservableObject {
  @Published var isMenuShown = true
  @Published var isGameStarted = false

  func startGame() {
    isGameStarted = true
    isMenuShown = false
  }
}
