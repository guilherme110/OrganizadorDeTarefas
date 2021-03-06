import Foundation

class Moradora {
    var nome: String = ""
    var horasDisponiveis: Float = 0.0
    
    
}

//criando moradoras
var moradora1 = Moradora()
moradora1.nome = "Shirley"
moradora1.horasDisponiveis = 10

var moradora2 = Moradora()
moradora2.nome = "Emilly"
moradora2.horasDisponiveis = 5

var moradora3 = Moradora()
moradora3.nome = "Yasmin"
moradora3.horasDisponiveis = 2

//lista de Moradoras
var pessoasDaCasa: [Moradora] = [moradora1, moradora2, moradora3]

struct Tarefas {
    var tarefa: String = ""
    var tempoExecucao: Float = 0.0
    
    }
//criando tarefas
let t1 = Tarefas(tarefa: "Varrer casa", tempoExecucao: 0.3)
let t2 = Tarefas(tarefa: "Passar pano", tempoExecucao: 1.0)
let t3 = Tarefas(tarefa: "Lavar louça", tempoExecucao: 0.5)
let t4 = Tarefas(tarefa: "Arrumar quartos", tempoExecucao: 2.3)
let t5 = Tarefas(tarefa: "Lavar banheiro", tempoExecucao: 0.4)

//lista de Tarefas
let tarefasDaCasa: [Tarefas] = [t1, t2, t3, t4, t5]
//--------------------------------------------------------------------------------------------------------------------
//                                      GERANDO SEMANA DE TAREFAS - LAÇO DE REPETIÇÃO
//--------------------------------------------------------------------------------------------------------------------


//var moradoraComMenosHoras: Moradora? = nil
//
//for moradora in pessoasDaCasa {
//    if moradoraComMenosHoras == nil {
//        moradoraComMenosHoras = moradora
//    } else {
//        if moradora.horasDisponiveis < moradoraComMenosHoras!.horasDisponiveis {
//            moradoraComMenosHoras = moradora
//        }
//    }
//}

//encontrando a moradora com menos horas
let moradoraComMenosHoras = pessoasDaCasa.min { $0.horasDisponiveis < $1.horasDisponiveis }

print(moradoraComMenosHoras?.nome, moradoraComMenosHoras?.horasDisponiveis)

//encontrando a tarefa com menor tempo de execução
let tarefaComMenorTempoDeExecucao = tarefasDaCasa.min { $0.tempoExecucao < $1.tempoExecucao }

print(tarefaComMenorTempoDeExecucao?.tarefa)

//subtraindo o tempo da menor tarefa do tempo disponível da moradora com menos tempo (explicaçã0 cagada)
moradoraComMenosHoras?.horasDisponiveis -= tarefaComMenorTempoDeExecucao!.tempoExecucao

print(moradoraComMenosHoras?.nome, moradoraComMenosHoras?.horasDisponiveis)


//--------------------------------------------------------------------------------------------------------------------
//                                                            MENU
//--------------------------------------------------------------------------------------------------------------------
var bool: Bool = false
repeat {

print("-------------------ORGANIZADOR DE TAREFAS-----------------------")
print("1. Cadastrar horário das moradoras")
print("2. Tarefas")
print("3. Gerar semana de tarefas")
print("4. Cadastrar/Excluir Tarefa")
print("-----------------------------------------------------------------")
print("Selecione uma opção: ")
var OpcaoMenu: String = readLine()!
var SelecionarOpcao = Int(OpcaoMenu)

if SelecionarOpcao == 1 {
    //Pegando do usuário a quantidade de horas disponíveis na semana e atribuindo a ele.
    for moradora in pessoasDaCasa {
        print("\(moradora.nome), digite quantas horas disponíveis você terá essa semana (seg a sex)")
        let horasAux = Float(readLine()!)!
        moradora.horasDisponiveis = horasAux
        
    }
} else if SelecionarOpcao == 2 {
    for tarefa in tarefasDaCasa {
        print(tarefa.tarefa, tarefa.tempoExecucao)
    }
} else if SelecionarOpcao  == 3 {
    print("eu tenho que acionar o gerador da semana de tarefas")
} else if SelecionarOpcao == 4 {
    print("Eu tenho que direcionar para a página que cadastra ou exclui uma tarefa")
} else if SelecionarOpcao == 0{
    bool = true
}else {
    print("selecione uma opçao válida")
}

} while !bool
