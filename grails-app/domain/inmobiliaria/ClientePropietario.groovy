package inmobiliaria

class ClientePropietario {

    String dni
    String nombre
    String apellido
    String sexo
    Date fechaNacimiento
    String domicilio
    String telefono
    String email
    String tipo_cliente

    static hasMany = [propiedades: Propiedad, contratos: Contrato]

    static constraints = {
        
        propiedades(blank: true)
        contratos(blank: true)

        nombre(blank: false, maxSize: 100)
        apellido(blank: false, maxSize: 100)
        sexo(blank: false, inList:['F','M'])
        dni(blank: false)
        fechaNacimiento(blank: false)
        telefono(blank: false, matches: "[0-9]{3}-[0-9]{7}")
        email(blank: true, email:true)
        

    }
}