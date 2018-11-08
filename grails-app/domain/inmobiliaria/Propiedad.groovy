package inmobiliaria

class Propiedad {

    String tipo
    String ubicacion
    String operacion
    String direccion
    String descripcion
    BigDecimal precio
    Boolean estado
    Boolean oferta
    

    static belongsTo = [propietario: ClientePropietario]

    static constraints = {
        
        tipo(inList: ['Casa','Departamento','Local','Oficina'])
        ubicacion(inList: ['F.M.E.','Valle Viejo','Capital','Ambato'])
        operacion(inList: ['Venta','Alquiler'])
        direccion(blank: false, maxSize: 100)
        descripcion(blank: false, maxSize: 100)
        precio(blank: false)
      
    }
}
