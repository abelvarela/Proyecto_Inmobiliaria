package inmobiliaria

class ClientePropietario {

    String nombre
    String apellido
    String sexo
    String dni
    Date fechaNacimiento
    String domicilio
    String telefono
    String email

    static hasMany = [propiedades: Propiedad, contratos: Contrato]

    static constraints = {
        
        contratos(blank: true)
        propiedades(blank: true)

        nombre(blank: false, maxSize: 100)
        apellido(blank: false, maxSize: 100)
        sexo(blank: false, inList:['F','M'])
        dni(blank: false, minSize: 7, maxSize: 8)
        fechaNacimiento(blank: false)
        domicilio(blank: true)
        telefono(blank: false, matches: "[0-9]{3}-[0-9]{7}")
        email(blank: true, email:true)
    }

    String toString(){
        nombre + " " + apellido
    }

}