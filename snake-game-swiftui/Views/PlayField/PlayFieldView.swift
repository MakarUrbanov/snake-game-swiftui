import SwiftUI

struct PlayFieldView<Children: View>: View {
  let viewModel = PlayFieldViewModel()

  var columns: [GridItem] = []
  var children: (_ columnsCount: Int, _ cellSize: CGFloat) -> Children

  init(
    columnsCount: Int = 10,
    @ViewBuilder children: @escaping (_ columnsCount: Int, _ cellSize: CGFloat) -> Children
  ) {
    self.children = children
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
        .zIndex(1)
        .overlay {
          children(self.columns.count, size)
          .zIndex(2)
        }

      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
  }
}
