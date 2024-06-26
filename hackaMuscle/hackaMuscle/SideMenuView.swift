import SwiftUI

struct SideMenuView: View {
  @Binding var isShowing: Bool
  @Binding var selectedTab: Int
  @State private var selectedOption: SideMenuOptionModel?
  var body: some View {
    ZStack{
      if isShowing{
        Rectangle().opacity(0.3).ignoresSafeArea()
                   .onTapGesture{ isShowing.toggle() }
      HStack{
        VStack(alignment: .leading, spacing: 32){
          SideMenuHeaderView()

          VStack{
            ForEach(SideMenuOptionModel.allCases) { option in
                Button(action: {
                  selectedOption = option
                  selectedTab = option.rawValue
                  isShowing = false
                }, label: {
                  SideMenuRowView(option: option, selectedOption: $selectedOption)
                })
              }
        }

        Spacer()
        }
      .padding().frame(width: 270, alignment: .leading).background(.black)

      Spacer()
      }.transition(.move(edge: .leading))
    }
    }.animation(.easeInOut, value: isShowing)

    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true), selectedTab: .constant(0))
    }
}
