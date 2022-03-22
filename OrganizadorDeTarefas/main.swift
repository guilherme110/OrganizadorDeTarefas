import Foundation

struct Moradoras {
    var nome: String = ""
    var horasDisponíveis: Float = 0.0
    
    
}

var moradora1 = Moradoras()
moradora1.nome = "Shirley"

var moradora2 = Moradoras()
moradora2.nome = "Emilly"

var moradora3 = Moradoras()
moradora3.nome = "Yasmin"


var pessoasDaCasa: [Moradoras] = [moradora1, moradora2, moradora3]

struct Tarefas {
    var tarefa: String = ""
    var tempoExecucao: Float = 0.0
    
    }

let t1 = Tarefas(tarefa: "Varrer casa", tempoExecucao: 0.3)
let t2 = Tarefas(tarefa: "Passar pano", tempoExecucao: 1.0)
let t3 = Tarefas(tarefa: "Lavar louça", tempoExecucao: 0.5)
let t4 = Tarefas(tarefa: "Arrumar quartos", tempoExecucao: 2.3)
let t5 = Tarefas(tarefa: "Lavar banheiro", tempoExecucao: 0.4)

let tarefasDaCasa: [Tarefas] = [t1, t2, t3, t4]

//var t1 = Tarefas(tarefa:"Varrer casa", tempoExecucao: 0.3)

//fazer um for para percorrer o array moradoras e depois adicionar as horas na variavel pessoaX.horasdisponiveis

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------


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
    for moradora in pessoasDaCasa {
        
        var aux: Moradoras
        print("\(moradora.nome), digite quantas horas disponíveis você terá essa semana (seg a sex)")
        let horasAux = Float(readLine()!)!
        aux = Moradoras(horasDisponíveis: horasAux)
        
        
    }
    for moradora in pessoasDaCasa {
        print(moradora.nome, moradora.horasDisponíveis)
    }
} else if SelecionarOpcao == 2 {
    for tarefa in tarefasDaCasa {
        print(tarefa.tarefa, tarefa.tempoExecucao)
    }
} else if SelecionarOpcao  == 3 {
    print("eu tenho que acionar o gerador da semana de tarefas")
} else if SelecionarOpcao == 4 {
    print("Eu tenho que direcionar para a página que cadastra ou exclui uma tarefa")
} else {
    print("selecione uma opçao válida")
}


