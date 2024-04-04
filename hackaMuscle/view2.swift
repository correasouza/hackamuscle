//
//  view2.swift
//  View2
//
//  Created by Turma02-22 on 02/02/24.
//
import SwiftUI
import GIFImage
struct view2: View {

    @State private var randomInt = Int.random(in: 0...20)
    @State private var isTimerActive = false
    @State private var isTransitioning = false

    var arrayFrases = ["Don´t skip leg day", "Nunca pule o cardio.", "Confie no processo", "A pressa é inimiga da perfeição. NÃO use anabolizantes!", "Natural é a fonte da juventude.", "Stay natty, kids!", "Este app não substitui um personal trainer e nem um nutricionista.", "Sem esforço não há recompensa.", "Atletas naturais precisam descansar. Não treine todos os dias!", "Natural precisa treinar até a falha ,", "Um volume alto de treinos pode não ser interessante, cuidado.", "Em caso de dores nas articulações, PARE com os treinos temporariamente.", "Não coma alimentos processados e açucarados, vai acabar com o seu shape.", "Mantenha sempre o foco e a disciplina.", "Beba pelo menos 3L de água por dia.", "Seguir a dieta é tão importante quanto treinar.", "Não confie na balança, você pode estar perdendo gordura e ganhando massa muscular ao mesmo tempo.", "Bulking para ectomorfos: coma limpo até a falha ", "Creatina ajuda no ganho de força.", "Não sabe tal exercício? Chame o instrutor da sua academia", "Faça cardio, mas cuidado com o cardio em excesso", "As repetições ideais para hipertrofia são de 8 a 15 até a falha"]

    var body: some View {
        NavigationStack{
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("Image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500, height: 200)
                    Text("HackaMuscle")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .font(.system(size: 36))
                        .bold()
                    Text("Hacking your body")
                        .foregroundColor(.white)
                    Spacer()
                    Spacer()
                    GIFImage(url: "https://upload.wikimedia.org/wikipedia/commons/b/b9/Youtube_loading_symbol_1_(wobbly).gif")?.frame(width: 30, height: 30)
                  Spacer()

                }
                VStack {
                    Spacer()
                    Spacer()
                    Text(arrayFrases[randomInt])
                        .frame(maxWidth: 350, maxHeight: 100)
                        .foregroundColor(.white)
                        .truncationMode(/*@START_MENU_TOKEN@*/.tail/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                    Spacer()
                }
                VStack{
                    Spacer()
                    Text("Criado e desenvolvido por: Alexsander, Raquel, Rhuan, Igor e Gustavo")
                        .frame(maxWidth: 250, maxHeight: 50)
                        .foregroundColor(.white)
                        .font(.caption)
                }
            }
            .onAppear {
                startTimer()
            }

            .fullScreenCover(isPresented: $isTransitioning) {
                // Add the destination view after 30 seconds
                Text("")
                ContentView()
            }
        }
    }
    private func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 4, repeats: false) { _ in
            isTransitioning = true
        }
    }

}

struct view2_Previews: PreviewProvider {
    static var previews: some View {
        view2()
    }
}
