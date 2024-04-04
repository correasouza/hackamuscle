import SwiftUI
import Combine

struct PostTreino : Codable, Hashable{

  var treinoSegunda : [String] = []
  var treinoTerca : [String] = []
  var treinoQuarta : [String] = []
  var treinoQuinta : [String] = []
  var treinoSexta : [String] = []
  var treinoSabado : [String] = []
  var treinoDomingo : [String] = []

}


struct ListTreinos: View{

  @State var treinoSegunda: [String] = []
  @State var treinoTerca: [String] = []
  @State var treinoQuarta: [String] = []
  @State var treinoQuinta: [String] = []
  @State var treinoSexta: [String] = []
  @State var treinoSabado: [String] = []
  @State var treinoDomingo: [String] = []

 

  let globalData = GlobalVariables()

  @EnvironmentObject var diaDaSemana: GlobalVariables

  let arrayPeito = ["Supino reto com barra", "Supino reto com halteres", "Supino inclinado com barra", "Supino inclinado com halteres", "Supino declinado com barra", "Supino declinado com halteres", "Crucifixo reto", "Crucifixo inclinado", "Crucifixo declinado", "Voador(PeckDeck)", "CrossOver Superior de peito", "CrossOver Meio do peito", "CrossOver inferior do peito", "Flexões no chão", "Mergulho"]

    let arrayTriceps = ["Tríceps no cabo com corda", "Tríceps no cabo com barra", "Tríceps unilateral no cabo", "Tríceps francês no cabo", "Tríceps francês unilateral no cabo", "Tríceps testa no cabo com corda", "Tríceps testa no cabo com barra", "Tríceps testa unilateral no cabo", "Tríceps coice unilateral no cabo", "Tríceps testa com barra", "Tríceps francês com halter", "Tríceps mergulho no banco"]

    let arrayCostas = ["Puxada alta com barra (Pulley frente)", "Puxada alta com triângulo (Pulley frente)", "Puxada alta unilateral",  "Puxada alta articulado", "Remada baixa com triângulo", "Remada baixa com barra", "Remada curvada", "Remada curvada com halteres", "Remada na máquina", "Remada cavalinho na máquina", "Remada cavalinho livre", "Remada serrote", "Remada no banco inclinado com halteres", "Pullover polia", "Pullover com halter", "Barra fixa", "Posterior de ombro com halteres", "Posterior de ombro na máquina"]

    let arrayBiceps = ["Bíceps frontal com barra reta(rosca direta)", "Bíceps frontal com barra W(rosca direta)", "Bíceps frontal unilateral com halteres", "Rosca 21 (3x 7)", "Bíceps martelo", "Rosca scott na máquina", "Rosca scott com barra W", "Rosca no cabo alto (pulley)", "Rosca direta no cabo alto", "Rosca direta no cabo baixo", "Bíceps testa no cabo alto", "Bíceps com halteres no banco inclinado", "Bíceps com halteres no banco inclinado pegada neutra", "Bíceps concentrado", "Rosca direta com elástico" ]

    let arrayAntebraco = ["Flexão de punho na parede", "Flexão de punho com barra (pegada pronada)", "Flexão de punho com barra (pegada supinada)", "Rosca direta pronada na barra W", "Bíceps martelo movimento alternado", "Flexão de punho unilateral no cabo (pronada)", "Flexão de punho unilateral no cabo (supinada)"]

    let arrayLegDay = ["LegPress 180 graus", "LegPress 90 graus", "LegPress 45 graus", "LegPress 45 unilateral", "Agachamento livre", "Agachamento no Smith", "Agachamento Hack", "Agachamento com barra hexagonal", "Agachamento com halteres", "Agachamento búlgaro com halteres", "Agachamento búlgaro com barra", "Agachamento sumô com barra", "Agachamento sumô com halter", "Avanço com halteres", "Avanço com barra", "Avanço com anilhas", "Cadeira extensora", "Cadeira extensora unilateral", "Mesa flexora", "Flexora em pé unilateral", "Cadeira flexora", "Stiff", "Deadlift", "Cadeira Abdutora", "Cadeira adutora", "Afundo", "Elevação pélvica", "Extensão quadril coice", "Elevação unilateral", "Extensão quadril estendido", "Recuo", "Extensão quadril em pé", "Subida na caixa", "Panturrilha sentado na máquina", "Panturrilha em pé na máquina"]

    let arrayOmbro = ["Elevação frontal unilateral com halter", "Elevação frontal com barra W", "Desenvolvimento militar com halteres", "Desenvolvimento militar com barra", "Desenvolvimento na máquina", "Desenvolvimento Arnold", "Elevação lateral com halteres", "Elevação lateral unilateral no cabo", "Elevação lateral na máquina", "Crucifixo invertido curvado com halteres", "Crucifixo invertido sentado com halteres", "Crucifixo invertido no banco inclinado", "Crucifixo invertido na máquina", "Crucifixo invertido curvado no cabo", "Crucifixo invertido em pé no cabo"]

    let arrayAbdomen = ["Prancha","Abdominal deitado", "Abdominal na máquina","Abdominal no cabo", "Abdominal tesoura"]

    let arrayAerobicos = ["Cardio na esteira ou na rua", "Bicicleta", "Polichinelos", "Pular corda", "Zumba (dança)", "Step", "Subir e descer escadas", "Elíptico"]


    let arrayMobilAlong = ["Alongamento de cadeia posterior", "Alongamento da panturrilha", "Alongamento de quadrado lombar", "Alongamento TFL", "Alongamento de glúteos", "Alongamento da lombar", "Mobilidade de quadril (escorpião)", "Mobilidade de tornozelo no solo", "Mobilidade dos joelhos (sapo)", "Alongamento de tríceps", "Alongamento dos bíceps", "Alongamento de punhos", "Alongamento da cintura escapular"]

    @State var aux : String?



  var body: some View {

        VStack {
            NavigationView{

              ZStack {

                  List{

                    if globalData.isSegunda {
                      Section(header: Text("Meus treinos de Segunda-Feira").font(.subheadline).bold()){

                        ForEach(treinoSegunda, id: \.self) {
                          ex in

                          Text(ex)

                        }.onDelete(perform: delete)
                          .onMove(perform: move)

                      }.listRowBackground(Color("corSection"))
                        .foregroundColor(.white)
                    }


                    if globalData.isTerca {

                      Section(header: Text("Meus treinos de Terça-feira").font(.subheadline).bold()){

                        ForEach(treinoTerca, id: \.self) {
                          ex in

                          Text(ex)

                        }.onDelete(perform: delete)
                          .onMove(perform: move)

                      }.listRowBackground(Color("corSection"))
                        .foregroundColor(.white)

                    }

                    if globalData.isQuarta{

                      Section(header: Text("Meus treinos de Quarta-Feira").font(.subheadline).bold()){

                        ForEach(treinoQuarta, id: \.self) {
                          ex in

                          Text(ex)

                        }.onDelete(perform: delete)
                          .onMove(perform: move)

                      }.listRowBackground(Color("corSection"))
                        .foregroundColor(.white)

                    }

                    if globalData.isQuinta{

                      Section(header: Text("Meus treinos de Quinta-Feira").font(.subheadline).bold()){

                        ForEach(treinoQuinta, id: \.self) {
                          ex in

                          Text(ex)

                        }.onDelete(perform: delete)
                          .onMove(perform: move)

                      }.listRowBackground(Color("corSection"))
                        .foregroundColor(.white)

                    }

                    if globalData.isSexta{

                      Section(header: Text("Meus treinos de Sexta-Feira").font(.subheadline).bold()){

                        ForEach(treinoSexta, id: \.self) {
                          ex in

                          Text(ex)

                        }.onDelete(perform: delete)
                          .onMove(perform: move)

                      }.listRowBackground(Color("corSection"))
                        .foregroundColor(.white)

                    }


                    if globalData.isSabado{

                      Section(header: Text("Meus treinos de Sábado").font(.subheadline).bold()){

                        ForEach(treinoSabado, id: \.self) {
                          ex in

                          Text(ex)

                        }.onDelete(perform: delete)
                          .onMove(perform: move)

                      }.listRowBackground(Color("corSection"))
                        .foregroundColor(.white)

                    }


                    if globalData.isDomingo{

                      Section(header: Text("Meus treinos de Domingo").font(.subheadline).bold()){

                        ForEach(treinoDomingo, id: \.self) {
                          ex in

                          Text(ex)

                        }.onDelete(perform: delete)
                          .onMove(perform: move)

                      }.listRowBackground(Color("corSection"))
                        .foregroundColor(.white)

                    }


                  }.background(.black)
                      .scrollContentBackground(.hidden)

                  }
                .navigationTitle("Adicionar treino")
                .navigationBarItems(leading: EditButton())
                .foregroundColor(.white)

            }
            NavigationView{
                ZStack{
                    List{
                        Section(header: Text("Peito").font(.subheadline).bold()){
                            ForEach(arrayPeito, id: \.self) { exercicio in
                                HStack{

                                    Button(exercicio){

                                        treinoSegunda.append(exercicio)

                                    }
                                    Spacer()
                                    Image(systemName: "plus").foregroundColor(.white)
                                }
                            }

                        }.listRowBackground(Color("corSection"))
                            .foregroundColor(.white)

                        Section(header: Text("Tríceps").font(.subheadline).bold()){
                            ForEach(arrayTriceps, id: \.self) { exercicio in
                                HStack {
                                    Button(exercicio){

                                        treinoSegunda.append(exercicio)

                                    }
                                    Spacer()
                                    Image(systemName: "plus").foregroundColor(.white)
                                }
                            }

                        }.listRowBackground(Color("corSection"))
                            .foregroundColor(.white)

                        Section(header: Text("Costas").font(.subheadline).bold()){
                            ForEach(arrayCostas, id: \.self) { exercicio in
                                HStack {
                                    Button(exercicio){

                                        treinoSegunda.append(exercicio)

                                    }
                                    Spacer()
                                    Image(systemName: "plus").foregroundColor(.white)

                                }
                            }

                        }.listRowBackground(Color("corSection"))
                            .foregroundColor(.white)

                        Section(header: Text("Biceps").font(.subheadline).bold()){
                            ForEach(arrayBiceps, id: \.self) { exercicio in
                                HStack {
                                    Button(exercicio){

                                        treinoSegunda.append(exercicio)

                                    }
                                    Spacer()
                                    Image(systemName: "plus").foregroundColor(.white)

                                }
                            }

                        }.listRowBackground(Color("corSection"))
                            .foregroundColor(.white)

                        Section(header: Text("Antebraço").font(.subheadline).bold()){
                            ForEach(arrayAntebraco, id: \.self) { exercicio in
                                HStack {
                                    Button(exercicio){

                                        treinoSegunda.append(exercicio)

                                    }
                                    Spacer()
                                    Image(systemName: "plus").foregroundColor(.white)

                                }
                            }

                        }.listRowBackground(Color("corSection"))
                            .foregroundColor(.white)

                        Section(header: Text("LegDay").font(.subheadline).bold()){
                            ForEach(arrayLegDay, id: \.self) { exercicio in
                                HStack {
                                    Button(exercicio){

                                        treinoSegunda.append(exercicio)

                                    }
                                    Spacer()
                                    Image(systemName: "plus").foregroundColor(.white)

                                }
                            }

                        }.listRowBackground(Color("corSection"))
                            .foregroundColor(.white)

                        Section(header: Text("Ombro").font(.subheadline).bold()){
                            ForEach(arrayOmbro, id: \.self) { exercicio in
                                HStack {
                                    Button(exercicio){

                                        treinoSegunda.append(exercicio)

                                    }
                                    Spacer()
                                    Image(systemName: "plus").foregroundColor(.white)

                                }
                            }

                        }.listRowBackground(Color("corSection"))
                            .foregroundColor(.white)

                        Section(header: Text("Abdomen").font(.subheadline).bold()){
                            ForEach(arrayAbdomen, id: \.self) { exercicio in
                                HStack {
                                    Button(exercicio){

                                        treinoSegunda.append(exercicio)

                                    }
                                    Spacer()
                                    Image(systemName: "plus").foregroundColor(.white)

                                }
                            }

                        }.listRowBackground(Color("corSection"))
                            .foregroundColor(.white)

                        Section(header: Text("Aeróbicos").font(.subheadline).bold()){
                            ForEach(arrayAerobicos, id: \.self) { exercicio in
                                HStack {
                                    Button(exercicio){

                                        treinoSegunda.append(exercicio)

                                    }
                                    Spacer()
                                    Image(systemName: "plus").foregroundColor(.white)

                                }
                            }

                        }.listRowBackground(Color("corSection"))
                            .foregroundColor(.white)

                        Section(header: Text("Mobilidade e Alongamento").font(.subheadline).bold()){
                            ForEach(arrayMobilAlong, id: \.self) { exercicio in
                                HStack {
                                    Button(exercicio){

                                        treinoSegunda.append(exercicio)

                                    }
                                    Spacer()
                                    Image(systemName: "plus").foregroundColor(.white)

                                }
                            }

                        }.listRowBackground(Color("corSection"))
                            .foregroundColor(.white)

                    }.background(.black)
                        .scrollContentBackground(.hidden)
                }
            }
        }
}
    func delete(indexSet: IndexSet){
            treinoSegunda.remove(atOffsets: indexSet)
        }

    func move(indices: IndexSet, newOffset: Int){
        treinoSegunda.move(fromOffsets: indices, toOffset: newOffset)
    }

    }


struct ListTreinos_Previews: PreviewProvider {
    static var previews: some View {
        ListTreinos()
    }
}
