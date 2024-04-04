import Foundation

enum SideMenuOptionModel: Int, CaseIterable{

  case treino
  case dieta
  case informacoes

var title: String{
  switch self{
    case .treino:
    return "Meu Treino"

    case .dieta:
    return "Minha Dieta"

    case .informacoes:
    return "Informações Pessoais"
  }
}

var systemImageName: String {
  switch self{
    case .treino:
    return "figure.strengthtraining.traditional"

  case .dieta:
    return "list.bullet.clipboard"

  case .informacoes:
    return "person.circle.fill"
  }
}


}
extension SideMenuOptionModel: Identifiable{
  var id: Int { return self.rawValue}
}
