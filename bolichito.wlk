import colores.*
import materiales.*
import objetos.*
import personas.*

object bolichito {
  var objetoEnVidriera = remera
  var objetoEnMostrador = pelota

  method esBrillante() {
    return objetoEnVidriera.material().esBrillante()
           && objetoEnMostrador.material().esBrillante()
  }

  method esMonocromatico() {
    return objetoEnVidriera.color() == objetoEnMostrador.color()
  }
  
  method esEquilibrado() {
    return objetoEnVidriera.peso() < objetoEnMostrador.peso()
  }

  method hayObjetoDeColor(unColor) {
    return objetoEnVidriera.color() == unColor || 
           objetoEnMostrador.color() == unColor
  }

  method puedeMejorar() {
    return self.esMonocromatico() || not self.esEquilibrado()
  }

  method puedeOfrecerAlgoA(unaPersona) {
    return unaPersona.leGusta(objetoEnVidriera) ||
           unaPersona.leGusta(objetoEnMostrador)
  }
}