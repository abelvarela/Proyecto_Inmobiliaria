package inmobiliaria

class Contrato {


    Date fechaOperacion
    BigDecimal monto
    BigDecimal comision
    // String periodo
    Date fechaCaducidad

    Propiedad propiedad
    ClientePropietario propietario
    Cliente cliente


    static constraints = {
        fechaOperacion(blank: false)
        monto(blank: false)
        comision(blank: false)
        fechaCaducidad(blank: true)
        
        propiedad(blank: false)
        propietario(blank: false)
        cliente(blank: false)
    }

    String toString(){
        fechaOperacion
    }

}