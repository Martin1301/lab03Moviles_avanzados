//Funcion con retorno
func esPar(numero:Int)->Bool{
  if numero % 2==0{
    return true
  }else{
    return false
  }
}
func dividePalabra(palabra:String)->[Character]{
  var letras = [Character]()
  for letra in palabra {
    letras.append(letra)
  }
  return letras
}
//Invocacion de funciones
var numero2=11
var palabra:String = "hola"
print("El numero \(numero2) es par?: \(esPar(numero:numero2))")

var letras = dividePalabra(palabra:palabra)
for i in 0...letras.capacity-1{
  print("\(i)[\(letras[i])]",separator: " ", terminator: ",")
}