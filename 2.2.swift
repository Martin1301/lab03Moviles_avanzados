import Foundation
//Class
class vehiculo{
  var marca:String = ""
  var modelo:String = ""
  var color:String = ""
  var velocidad:Int = 0
  func mover(){
    print("Vehiculo \(marca) esta avanzando a una velocidad de \(velocidad) kmh.")
  }

  func detener(){
    print("Vehiculo \(marca) esta detenido.")
  }
}
//Instanciacion
var vehivulo1 = vehiculo()
vehiculo1.marca="KIA"
vehiculo1.modelo="SEDAN"
vehiculo1.color="GRIS"
vehiculo1.velocidad=20
vehiculo1.mover()
print("Color de vehiculo es: \(vehiculo1.color)")
vehiculo1.detener()
