import Foundation

class MainMenuViewModel {
  static func getSnakeColorFromString(_ color: String) -> SnakeColors {
    switch color.lowercased() {
      case "green":
        return .green
      case "purple":
        return .purple
      case "aqua":
        return .aqua
      case "blue":
        return .blue
      case "red":
        return .red
      case "yellow":
        return .yellow
      case "pink":
        return .pink

      default:
        fatalError("Wrong color '\(color)' in \(#function)")
    }
  }

  static func getArraySnakeColors() -> [String] {
    var keys: [String] = []
    for snakeColor in SnakeColors.allCases {
      let colorString = "\(snakeColor)".prefix(1).uppercased() + "\(snakeColor)".dropFirst()

      keys.append(colorString)
    }

    // crash the app if has no key
    keys.forEach { key in
      MainMenuViewModel.getSnakeColorFromString(key)
    }

    return keys
  }
}
