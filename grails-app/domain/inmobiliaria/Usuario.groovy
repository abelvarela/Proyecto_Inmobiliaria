package inmobiliaria

import java.security.MessageDigest

class Usuario implements Serializable {

    private static final long serialVersionUID = 1

    String nombreUsuario
    String tipoUsuario
    String nombre
    String apellido
    String contrasena
    String email

    static constraints = {

        nombreUsuario(minSize: 4)
        tipoUsuario(inList: ['Administrador','Operador'])
        nombre(maxSize: 100)
        apellido(maxSize: 100)
        contrasena(password: true)
        email(email:true)

    }

    def generateMD5_A(String s){
        return MessageDigest.getInstance("MD5").digest(s.bytes).encodeHex().toString()
    }

    boolean equals(usu) {
        is(usu) || (usu instanceof Usuario && usu.email == email)
    }


    String toString() {
        nombreUsuario
    }

    // Set<Rol> getRoles() {
    //     if (nombreUsuario!=null) {
    //         UsuarioRol.findAllByUsuario(this)*.rol
    //     } else {
    //         new TreeSet<Rol>()
    //     }
    // }

    // Set<UsuarioRol> getUsuarioRol() {
    //     UsuarioRol.findAllByUsuario(this)
    // }

    def beforeInsert() {
        contrasena = generateMD5_A(contrasena)
    }

    // def beforeUpdate() {
    //     if (isDirty('contrasena')) {
    //     contrasena=generateMD5_A(contrasena)
    //     }
    // }

    // def beforeValidate() {
    //     nombreUsuario=nombreUsuario?.toUpperCase()
    //     email=email?.toLowerCase()

    // }




}