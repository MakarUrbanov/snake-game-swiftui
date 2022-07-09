import SwiftUI

struct MainMenuView: View {
  @Environment(\.colorScheme) var colorScheme

  @EnvironmentObject var gameManager: GameManager
  @EnvironmentObject var snake: Snake

  @State var colors = MainMenuViewModel.getArraySnakeColors()
  @State var selectedColor: String

  init(snakeColor: SnakeColors) {
    self._selectedColor = State(initialValue: snakeColor.rawValue)
  }

  var body: some View {
    ZStack {

      VStack {
        HStack {
          Text("Select snake color:")

          Picker(selection: $selectedColor, label: Text("")) {
            ForEach(colors, id: \.self) {
              Text($0)
            }
          }
          .onChange(of: selectedColor) { newValue in
            snake.color = MainMenuViewModel.getSnakeColorFromString(selectedColor)
          }
        }

        Button(action: {
          gameManager.startGame()
        }, label: {
          Text("Start")
        })
      }
      .padding(.vertical)
      .frame(maxWidth: .infinity)
      .background(colorScheme == .dark ? .black : .white)
      .cornerRadius(8)

    }
    .frame(maxWidth: .infinity)
    .padding()
  }
}
