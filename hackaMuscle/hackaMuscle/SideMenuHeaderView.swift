import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
      HStack{
        Image(systemName: "dumbbell.fill")
        .imageScale(.large)
        .foregroundStyle(.white)
        .frame(width: 48, height: 48)
        .background(Color.red)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.vertical)

        VStack(alignment: .leading, spacing: 6){
          Text("HackaMuscle").font(.subheadline).foregroundColor(.white)

          Text("hacking your body").font(.footnote).foregroundColor(.white).opacity(0.8)
        }
      }

    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView()
    }
}
