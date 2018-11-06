package inmobiliaria

class Propiedad {

    String tipo
    String ubicacion
    String direccion
    String descripcion
    BigDecimal precio
    

    static belongsTo = [cliente: Cliente]

    static constraints = {
        
        tipo(blank: false, inList: ['Casa','Departamento','Local','Oficina'])
        ubicacion(inList: ['F.M.E.','Valle Viejo','Capital','Ambato'])
        direccion(blank: false, maxSize: 100)
        descripcion(blank: false, maxSize: 100)
        precio(blank: false)
      
    }
}
