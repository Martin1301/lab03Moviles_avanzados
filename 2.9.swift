struct Notas{
  private let porcentajeTeo = 0.3
  private let porcentajeLab = 0.7
  var promedioTeo = 0.0
  var promedioLab = 0.0

  func promedioFinal()->Double{
    let promedio = self.promedioTeo*self.porcentajeTeo + self.promedioLab*self.porcentajeLab
    return promedio
  }
}
class Curso{
  var nombre:String=""
  var notas = Notas()
}
class Alumno{
  var nombre : String
  var cursos : [Curso]
  init(nombre:String, cursos:[Curso]){
    self.nombre = nombre
    self.cursos = cursos
  }

  func listaCursosNotas(){
    for curso in self.cursos{
      print("-----------------------------------------------------------------------------")
      let nombreCurso = curso.nombre
      let notaTeoria = curso.notas.promedioTeo
      let notaLaboratorio = curso.notas.promedioLab
      let notaFinal = curso.notas.promedioFinal()
      print("Curso: \(nombreCurso)")
      print("Teoria: \(notaTeoria)")
      print("Laboratorio: \(notaLaboratorio)")
      print("Promedio Final: \(notaFinal)")
    }
  }
  func listarPromedioGeneral (){
    var totalSum = Double(0)
    var promedioFin = Double(0)
    var number = Double(0)
    print(".............................................................................")
    for curso in self.cursos{ 
    let notaFinal = curso.notas.promedioFinal()
    let notafinalahorasi = Double(notaFinal)
    totalSum = (totalSum + notafinalahorasi)
    number += 1
}
    promedioFin = totalSum/number
    print("Promedio General: \(promedioFin)")
  }  
  }

//instancias
var cursos = [Curso]()
var cursos2 = [Curso]()
//curso 1
var curso1 = Curso()
var nota1 = Notas()
curso1.nombre = "Desarrollo de aplicaciones moviles"
nota1.promedioTeo = 12.5
nota1.promedioLab = 13
curso1.notas = nota1

//curso a lista
cursos.append(curso1)

//curso 2
var curso2 = Curso()
var nota2 = Notas()
curso2.nombre = "Desarollo de aplicaciones moviles Avanzado"
nota2.promedioTeo = 16.4
nota2.promedioLab = 10
curso2.notas = nota2

//curso a lista
cursos.append(curso2)

//curso 3
var curso3 = Curso()
var nota3 = Notas()
curso3.nombre = "Desarollo de en la nube"
nota3.promedioTeo = 13
nota3.promedioLab = 20
curso3.notas = nota3

//curso a lista
cursos2.append(curso3)
//curso 4
var curso4 = Curso()
var nota4 = Notas()
curso4.nombre = "Desarollo de en la nube Avanzado"
nota4.promedioTeo = 11
nota4.promedioLab = 12
curso4.notas = nota4

//curso a lista
cursos2.append(curso4)

//instancia alumno
var alumno = Alumno(nombre:"Juan Perez", cursos: cursos)
var alumno2 = Alumno(nombre:"Pepe Pancho", cursos: cursos2)

//lista de alumnos
var alumnos = [Alumno]()
alumnos.append(alumno)
alumnos.append(alumno2)

//lista de alumnos
for 
alumno in alumnos{
  print("-----------------------------------------------------------------------------")
  print("Alumno: \(alumno.nombre)")
  alumno.listaCursosNotas()
  alumno.listarPromedioGeneral()
  print()
}