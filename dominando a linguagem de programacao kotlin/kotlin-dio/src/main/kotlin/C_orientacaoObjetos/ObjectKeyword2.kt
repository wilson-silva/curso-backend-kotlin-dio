package C_orientacaoObjetos

//Object Declaration
object DoAuth{
    fun takeParams(username: String, password: String){
        println("input Auth parameters = $username:$password")
    }
}

fun main() {
    DoAuth.takeParams("foo", "qwerty")
}
