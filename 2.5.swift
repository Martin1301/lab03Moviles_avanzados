import Foundation
class motocicleta: vehiculo{
  var numruedas:Int = 2
  var transmision:String = "cadena"
  override func mover(){
    print("Motocicleta \(marca) esta avanzando a una velocidad de \(velocidad) kmh.")
  }
}
var motocicleta1 = motocicleta()
motocicleta1.marca = "YAMAHA"
motocicleta1.modelo = "TRICITY"
motocicleta1.color = "NEGRO"
motocicleta.velocidad = 30
motocicleta.mover()
print("Color de motocicleta es: \(motocicleta1.color)")
print("# Rueda es: \(motocicleta1.numruedas)")
print("Transmision es: \(motocicleta1.transmision)")
motocicleta1.detener()