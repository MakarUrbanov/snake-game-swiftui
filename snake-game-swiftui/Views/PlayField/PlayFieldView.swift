import SwiftUI

struct PlayFieldView<Children: View>: View {
  let viewModel = PlayFieldViewModel()

  var columns: [GridItem] = []
  var children: Children

  init(columnsCount: Int = 10, @ViewBuilder children: () -> Children) {
    self.children = children()
    let gridItem = GridItem(.flexible(), spacing: 0)
    self.columns = viewModel.getColumns(columnsCount: columnsCount, gridItem: gridItem)
  }

  var body: some View {
    GeometryReader { geometry in
      ZStack(alignment: .center) {
        let size = viewModel.getCellItemSize(geometry: geometry, columnsCount: columns.count)

        LazyVGrid(
          columns: columns,
          alignment: .center,
          spacing: 0
        ) {
          ForEach(1...(columns.count * columns.count), id: \.self) { value in
            ZStack {
            }
            .frame(width: size, height: size)
            .background(.gray.opacity(0.5))
            .border(.white, width: 0.2)
          }
        }
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
  }
}
