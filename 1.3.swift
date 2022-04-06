import Foundation
func Operaciones(){
    print("Lista de operaciones")
}
func RaizCuadrada(_ numero:Int){    
    let resultado = sqrt(Double(numero))
    print("La raiz cuadrada de \(numero) es \(resultado)")
}
func NumeroAPotencia(_ numero:Int,_ potencia:Int){
    let resultado = pow(Double(numero), Double(potencia))
    print("El numero \(numero) elevado a \(potencia) es \(resultado)")
}
//Invocacion de funciones 
var numero = 9, potencia = 2
Operaciones()
RaizCuadrada(numero)
NumeroAPotencia(numero,potencia)