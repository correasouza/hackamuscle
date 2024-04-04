import SwiftUI

struct ForEachTreinos: View {
    init() {
            UIStepper.appearance().setDecrementImage(UIImage(systemName: "minus"), for: .normal)
            UIStepper.appearance().setIncrementImage(UIImage(systemName: "plus"), for: .normal)
        }



    @State var teste: Int = 0

    @State var recordePessoal : [String] = []

    @State var arrayPrLocal : [Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    
    let globalData = GlobalVariables()
   @EnvironmentObject var diaDaSemana: GlobalVariables

    var body: some View {
      NavigationStack{
        ScrollView{
            ZStack{
            VStack{

              HStack{
                Spacer()

                NavigationLink(destination: {ListTreinos()}, label: {
                  Text("Add / Edit Treino")
                })

              }

              Text("").padding(20)
              ForEach(Array(recordePessoal.enumerated()), id: \.offset){ index, element in
                    HStack{

                        Spacer()

                        Stepper(value: $teste, in: 0...300, onEditingChanged: { didChange in
                            Global.arrayPr[index] += teste

                            teste = 0
                            Global.arrayPr[index] -= teste
                        } )
                        {
                            Text(element)
                            Text("\(arrayPrLocal[index]) Kg")

                        }.accentColor(.white)
                            .foregroundColor(.white)

                    }
                }.padding(10).background(Color("corSecond")).border(.gray)
              }
            }
        }.background(.black).edgesIgnoringSafeArea(.all).onAppear(){
          Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true){_ in
            arrayPrLocal = Global.arrayPr
          }
        }
      }.onAppear(){
      }
    }

}

struct ForEachTreinos_Previews: PreviewProvider {
    static var previews: some View {
        ForEachTreinos()
    }
}
