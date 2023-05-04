@startuml


left to right direction
 

 package "Gerente de Compras" {
actor "João" as GC
usecase "Identificar necessidades de compra" as GC1
usecase "Negociar valores de compra" as GC2
usecase "Comprar itens" as GC3

 }

package "Supervisora de Estoque" { 
actor "Maria" as SE 

usecase "Supervisionar equipe responsável pelo estoque e organização." as SE1
usecase "nível de itens de estoque." as SE2

}
package "Coordenador de Produção" {
actor "Pedro" as CP

usecase "Planejar organização da produção." as CP1
usecase "Supervisionar a equipe de produção." as CP2
usecase "Gerenciar processos de produção." as CP3
}

package "Analista de Qualidade" {
actor "Ana" as AQ

usecase "Desenvolver e implementar politicas e procedimentos de garantia de qualidade." as AQ1
usecase "Realizar processos avaliativos de garantia de qualidade."  as AQ2

}
package "Responsável de Vendas e Distribuição" {
actor "Carlos" as VD

usecase "Desenvolver estratégias de venda e distribuição." as VD1
usecase "Gerenciar recursos para alavancar compras." as VD2
usecase "Administrar a distribuição de produtos" as VD3

} 
GC -- GC1
GC -- GC2
GC -- GC3

SE -- SE1
SE -- SE2

CP -- CP1
CP -- CP2
CP -- CP3
 
AQ -- AQ1
AQ -- AQ2

VD -- VD1
VD -- VD2

@enduml
