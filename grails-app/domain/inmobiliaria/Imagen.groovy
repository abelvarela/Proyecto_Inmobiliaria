package inmobiliaria

class Imagen {
    byte[] imagen
    // String nombre
    static constraints = {
    }
    static mapping = {
        imagen sqlType: 'bytea' 
    }
}

