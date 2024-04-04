//
//  CardsTreinos.swift
//  projetofinal2
//
//  Created by Turma02-1 on 08/02/24.
//

import SwiftUI

struct CardsTreinos: View {
@State var showNextScreen = false

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
                      Text("Segunda-feira").font(.title2)
                      Text("Exercicios: ")
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
                      Text("Terça-feira").font(.title2)
                      Text("Exercicios: ")
                    }
                    Spacer()

                    NavigationLink(destination: {ForEachDieta()}, label: {
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
                      Text("Quarta-feira").font(.title2)
                      Text("Exercicios: ")
                    }
                    Spacer()

                    NavigationLink(destination: {ForEachDieta()}, label: {
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
                      Text("Quinta-feira").font(.title2)
                      Text("Exercicios: ")
                    }
                    Spacer()

                    NavigationLink(destination: {ForEachDieta()}, label: {
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
                      Text("Sexta-feira").font(.title2)
                      Text("Exercicios: ")
                    }
                    Spacer()

                    NavigationLink(destination: {ForEachDieta()}, label: {
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
                      Text("Sábado").font(.title2)
                      Text("Exercicios: ")
                    }
                    Spacer()

                    NavigationLink(destination: {ForEachDieta()}, label: {
                      Image(systemName: "arrowtriangle.right").font(.system(size: 35)).foregroundColor(.black)
                    })


                  } .padding(40).border(.black)
                    .background(.gray).opacity(0.8).cornerRadius(20).shadow(radius: 10)
                  Spacer()
                }

                HStack{
                  Text(" ")

                  HStack{
                    VStack{
                      Text("Domingo").font(.title2)
                      Text("Exercicios: ")
                    }
                    Spacer()

                    NavigationLink(destination: {ForEachDieta()}, label: {
                      Image(systemName: "arrowtriangle.right").font(.system(size: 35)).foregroundColor(.black)
                    })


                  } .padding(40).border(.black)
                    .background(.gray).opacity(0.8).cornerRadius(20)
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

struct CardsTreinos_Previews: PreviewProvider {
    static var previews: some View {
        CardsTreinos()
    }
}
