
import SwiftUI



struct NavigationBarModifier: ViewModifier {


    var backgroundColor: UIColor?
    var titleColor: UIColor?

    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}

extension View {

    func navigationBarColor(backgroundColor: UIColor?, titleColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor, titleColor: titleColor))
    }

}

struct InformacoesPessoais: View {

    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.gray)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
    }


    @State var nome = ""
    @State var altura: Double = 0.0
    @State var peso: Double = 0.0
    @State var genero = ""
    @State var nivel = 0
    @State var isFormFilled = false
    @State var idade: Double = 0
    @State var TMB: Double = 0.0
    @State var calorias: Double = 0.0
    @State var fatorAtividade: Double = 0.0

    @State var alturaS: String = ""
    @State var pesoS: String = ""
    @State var idadeS: String = ""




    @State var nivelAtividade = ["Sedentario", "Levemente ativo", "Moderadamente ativo", "Muito ativo"]
    @State var selectedNivelAtividade: String = ""


    var body: some View {

        NavigationView {

            ZStack {

                Color.black.edgesIgnoringSafeArea(.all)

                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 140)

                    Form {
                        Section(header: Text("Informações Pessoais").foregroundColor(.white)) {
                            TextField("", text: $nome, prompt: Text("Nome").foregroundColor(.white.opacity(0.5)))
                                .foregroundColor(.white)



                            TextField("", text: $alturaS, prompt: Text("Altura (Cm)")
                                .foregroundColor(.white
                                    .opacity(0.5)))
                            .keyboardType(.numberPad)
                            .foregroundColor(.white)

                            TextField("", text: $pesoS, prompt: Text("Peso (Kg)").foregroundColor(.white.opacity(0.5)))
                                .keyboardType(.numberPad)
                                .foregroundColor(.white)

                            TextField("", text: $idadeS, prompt: Text("Idade")
                                .foregroundColor(.white
                                    .opacity(0.5)))
                            .keyboardType(.numberPad)
                            .foregroundColor(.white)

                        }

                        .foregroundColor(.white.opacity(0.5))
                        .listRowBackground(Color("corSecond"))




                        Section(header: Text("Gênero").foregroundColor(.white)) {
                            Picker("Gênero", selection: $genero) {

                                Text("Masculino").tag(0)
                                Text("Feminino").tag(1)

                            }
                            .pickerStyle(.segmented)
                            .foregroundColor(.white)
                            .pickerStyle(SegmentedPickerStyle())

                        }
                        //.colorMultiply(.gray)
                        .listRowBackground(Color("corSecond"))
                        //.listRowSeparatorTint(Color.red)

                        Picker("Selecione o nivel de atividade fisica", selection: $selectedNivelAtividade, content: {

                            ForEach( ["Sedentario", "Levemente ativo", "Moderadamente ativo", "Muito ativo"], id:\.self){ nivel in
                                Text(nivel)

                            }
                        }).foregroundColor(.white).listRowBackground(Color("corSecond"))

                    }.background(.black)
                        .scrollContentBackground(.hidden)
                        .foregroundColor(.white)


                    Button("Salvar") {

                        altura = Double(alturaS) ?? 0.0
                        peso = Double(pesoS) ?? 0.0
                        idade = Double(idadeS) ?? 0.0

                        if genero == "masculino" {
                            TMB = 88.362 + (13.397 * peso) + (4.799 * altura) - (5.677 * idade)
                        } else if genero == "feminino" {
                            TMB = 447.593 + (9.247 * peso) + (3.098 * altura) - (4.330 * idade)
                        }
                        var fatorAtividade: Double = 0.0

                        if selectedNivelAtividade == nivelAtividade[0] {
                            fatorAtividade = 1.2
                        } else if selectedNivelAtividade == nivelAtividade[1] {
                            fatorAtividade = 1.375
                        } else if selectedNivelAtividade == nivelAtividade[2] {
                            fatorAtividade = 1.55
                        } else if selectedNivelAtividade == nivelAtividade[3]{
                            fatorAtividade = 1.725
                        } else if selectedNivelAtividade == nivelAtividade[4] {
                            fatorAtividade = 1.9
                        }
                        calorias = TMB * fatorAtividade
                        print(calorias)
                        isFormFilled = true
                    }.frame(width: 80, height: 40)
                        .foregroundColor(.white)
                        .background(Color("corSecond"))
                        .cornerRadius(4)
                        .padding(2)



                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }

}





struct InformacoesPessoais_Previews: PreviewProvider {
    static var previews: some View {
        InformacoesPessoais()
    }
}
