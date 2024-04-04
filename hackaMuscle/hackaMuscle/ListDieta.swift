import SwiftUI

struct ListDieta: View {
    var body: some View {
      NavigationStack {
        ZStack{

          ScrollView{
            VStack{

              HStack{
                VStack{

                  HStack{
                    Text(" ")

                    HStack{
                      VStack{
                        Text("Crepioca").font(.title2)
                        Text("")
                      }

                      Spacer()

                      NavigationLink(destination: {ForEachTreinos()}, label: {
                        Image(systemName: "arrowtriangle.right").font(.system(size: 35)).foregroundColor(.black)
                      })


                    }.padding(40).border(.black)
                      .background(.gray).opacity(0.8).cornerRadius(20)
                    Spacer()
                  }

                  HStack{

                    Text(" ")

                    HStack{
                      VStack{
                        Text("2 bananas nanicas").font(.title2)
                        Text("")
                      }
                      Spacer()

                      NavigationLink(destination: {ForEachTreinos()}, label: {
                        Image(systemName: "arrowtriangle.right").font(.system(size: 35)).foregroundColor(.black)
                      })


                    } .padding(40).border(.black)
                      .background(.gray).opacity(0.8).cornerRadius(20)
                    Spacer()
                  }

                  HStack{

                    Text(" ")

                    HStack{
                      VStack{
                        Text("Almoço").font(.title2)
                        Text("")
                      }
                      Spacer()

                      NavigationLink(destination: {ForEachTreinos()}, label: {
                        Image(systemName: "arrowtriangle.right").font(.system(size: 35)).foregroundColor(.black)
                      })


                    } .padding(40).border(.black)
                      .background(.gray).opacity(0.8).cornerRadius(20)
                    Spacer()
                  }

                  HStack{
                    Text(" ")

                    HStack{
                      VStack{
                        Text("Pre-treino").font(.title2)
                        Text("")
                      }
                      Spacer()

                      NavigationLink(destination: {ForEachTreinos()}, label: {
                        Image(systemName: "arrowtriangle.right").font(.system(size: 35)).foregroundColor(.black)
                      })


                    } .padding(40).border(.black)
                      .background(.gray).opacity(0.8).cornerRadius(20)
                    Spacer()
                  }

                  HStack{
                    Text(" ")

                    HStack{
                      VStack{
                        Text("Pos-treino").font(.title2)
                        Text("")
                      }
                      Spacer()

                      NavigationLink(destination: {ForEachTreinos()}, label: {
                        Image(systemName: "arrowtriangle.right").font(.system(size: 35)).foregroundColor(.black)
                      })


                    } .padding(40).border(.black)
                      .background(.gray).opacity(0.8).cornerRadius(20)
                    Spacer()
                  }

                  HStack{
                    Text(" ")

                    HStack{
                      VStack{
                        Text("Jantar").font(.title2)
                        Text("")
                      }
                      Spacer()

                      NavigationLink(destination: {ForEachTreinos()}, label: {
                        Image(systemName: "arrowtriangle.right").font(.system(size: 35)).foregroundColor(.black)
                      })


                    } .padding(40).border(.black)
                      .background(.gray).opacity(0.8).cornerRadius(20).shadow(radius: 10)
                    Spacer()
                  }

                }
                Spacer()
              }
            }
          }
        }.background(.black).opacity(0.94)
      }
    }
    }


struct ListDieta_Previews: PreviewProvider {
    static var previews: some View {
        ListDieta()
    }
}
