import SwiftUI

struct SideMenuRowView: View {
  let option: SideMenuOptionModel
  @Binding var selectedOption: SideMenuOptionModel?

  private var isSelected: Bool {
    return selectedOption == option
  }

  var body: some View {
    HStack{
      Image(systemName: option.systemImageName).imageScale(.large).foregroundColor(.white)
      Text(option.title).font(.subheadline).foregroundColor(.white)

      Spacer()
    }.padding(.leading)
    .foregroundStyle(isSelected ? .black: .primary)
    .frame(width: 216, height: 44)
    .background(isSelected ? .white.opacity(0.15): .clear)
    .clipShape(RoundedRectangle(cornerRadius: 10))

    }
}

struct SideMenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuRowView(option: .treino, selectedOption: .constant(.treino))
    }
}
