package inmobiliaria

class Consulta {

    String nombreApellido
    String telefono
    String email
    String textoConsulta

    Date fecha
    String estado
    Propiedad propiedad

    static constraints = {
        nombreApellido(blank: false, maxSize: 100)
        telefono(blank: false, matches: "[0-9]{3}-[0-9]{7}")
        email(blank: false, email:true)
        textoConsulta(blank: false)
        estado(inList:['Pendiente','Atendido'])
    }

    String toString(){
        nombreApellido + " " + estado
    }

}
