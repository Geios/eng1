@startuml


left to right direction

scale 1.2

skinparam ArrowColor Black
skinparam BackgroundColor #White/LightGrey

skinparam actor {
    BorderColor Black
    BackgroundColor<<author>> Tomato
    BackgroundColor<<assignee>> DeepSkyBlue
    
}

skinparam control {
    BackgroundColor Tomato
    BorderColor Black
}

skinparam rectangle {
    BackgroundColor #MistyRose
    BackgroundColor<<project>> PHYSICAL
    BackgroundColor<<subproject>> PaleGreen
    BackgroundColor<<group>> Thistle
    BackgroundColor<<property>> LightBlue
}

skinparam file {
    BackgroundColor<<>> LightGreen
}

actor "Gerente Geral" <<Rogerio>> as pm
actor "Gerente de caixa" <<Prof Radames>> as Developer

file "  DELICIAS GOURMET" <<Restaurante>> as todo
rectangle "vendas" <<Eduardo>> as tnt

rectangle Analista <<João>>
rectangle Estocadora <<Maria>>
rectangle Encarregado <<Geremias>>

rectangle Função1 <<Supervisionar equipe responsável pelo estoque e organização.>>
Rectangle Função2 <<nívelar itens do estoque>>

Rectangle Função3 <<Planejar organização da produção>>
Rectangle Função4 <<Supervisionar a equipe de produção>>
Rectangle Função5 <<Gerenciar processos de produção>>

Rectangle Função6 <<Desenvolver e implementar politicas e procedimentos de garantia de qualidade>>
Rectangle Função7 <<Realizar processos avaliativos de garantia de qualidade>>

Rectangle Função8 <<Desenvolver estratégias de venda e distribuição>>
Rectangle Função9 <<Gerenciar recursos para alavancar compras>>
Rectangle Função10 <<Administrar a distribuição de produtos>>

package "Gerente geral"{

usecase "Mandar em todos" as MT
    
}

package "Gerente de caixa"{

usecase "Cuidar dos funcionários em geral" as MQT
    
}

pm -- MT
Developer -- MQT


todo --> pm
todo --> Developer
todo --> tnt

todo --> Analista
todo --> Estocadora
todo --> Encarregado

Maria -- Função2
Maria -- Função1


Geremias -- Função3  
Geremias -- Função4
Geremias -- Função5


João -- Função6
João -- Função7

Eduardo -- Função8
Eduardo -- Função9
Eduardo -- Função10

tnt -- Eduardo
Analista -- João
Estocadora -- Maria
Encarregado -- Geremias

MQT --> Eduardo
    MQT --> João
    MQT --> Maria
    MQT --> Geremias
    
@enduml
