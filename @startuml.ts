@startuml

class Restaurante {
  - nome: Delicias Gourmet
  - endereço: Avenida getulio pinépolis
  - telefone: 80028922
  
}



class Gerente {
  - Salario: R$ 7500

  + Funções administrativas: Não deixar o Delicias Gourmet
  virar um restaurante de esquina qualquer.

  + Funções sociais: Passar sempre uma boa
  impressão e atrair novos clientes.
}

Package "Funcionários"{ 
class Encarregado {
  - Salario 5400
  
  -Fuções: Não deixar que os setores 
  virem uma zona. 

class Estocador {
  - turno: string
  + getTurno(): string
  + setTurno(turno: string): void
}

package "Cozinha" { 
class "Chefe De Cozinha"{

  -salario: 4150
  Funções: Gerenciar os cozinheiros e 
  formular o cardapio juntamente com a nutricionista
}

class "Nutricionista"{

  -salario: 3500
  Funções: Escolher as melhores opções de 
  cardápio.

}

class "Cozinheiros"{

  -salario: 1350
  Funções: Fazer a comida.

}
class "Garçom"{

  -salario: 1350
  Funções: Levar a comida até as pessoas.

}
}

Package "Atendentes"{

class "Barman"{
-salario: 1350

-Função: Proporcionar uma ótima experiencia 
com bebidas em geral.
}

class "Recepcionista"{
-salario: 1350

-Função: Direcionar os clientes
para o local reservado.
}

class "Atendente de caixa"{
  -salario: 1350

  -Função: Cobrar os clientes na saida

}
 
}
     
  }

"Chefe De Cozinha" -- Garçom
"Chefe De Cozinha" -- Cozinheiros
"Chefe De Cozinha" -- Nutricionista

Encarregado --> "Chefe De Cozinha"
Encarregado --> Atendentes


Restaurante --  Gerente



 Gerente --> Encarregado
 

@enduml
