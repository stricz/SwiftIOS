//author: Salvador H.S
//: Velocimetro digital:


//Conjunto de velocidades
enum Velocidades:Int{
    
    //Tipos de velocidades
    case Apagado = 0,
         VelocidadBaja = 20,
         VelocidadMedia = 50,
         VelocidadAlta = 120
    
    //Inicializador
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

//Clase Auto
class Auto{
    //Atributo de la clase
    var velocidad: Velocidades
    
    //Inicializador
    init(){
        self.velocidad = .Apagado
    }
    
    //Funcion de cambio de velocidad gradualmente
    func cambioDeVelocidad()->(actual:Int, velocidadEnCadena: String){
        let before: Velocidades = self.velocidad
        switch self.velocidad {
        case .Apagado:
            self.velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
        }
        return (before.rawValue,"\(before)")
    }
}


//Instancia de la Clase y llamada al metodo, (20 times).


var miAutomovil = Auto()

for i in 1...20{
    let velocidadActual = miAutomovil.cambioDeVelocidad()
    print("\(i).\t\(velocidadActual.actual), \(velocidadActual.velocidadEnCadena)")
}
