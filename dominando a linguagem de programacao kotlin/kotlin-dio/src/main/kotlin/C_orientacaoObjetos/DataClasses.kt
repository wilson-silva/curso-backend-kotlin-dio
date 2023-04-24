package C_orientacaoObjetos

data class User(val name: String, val id: Int){
    override fun equals(other: Any?) =
        other is User && other.id == this.id
}

fun main() {
    val user = User("Alex", 1)
    println(user)
    separador()

    val secondUser = User("Alex", 1)
    val thirdUser = User("Max", 2)

    println("user == secondUser: ${user == secondUser}")
    println("user == thirdUser: ${user == thirdUser}")
    separador()

    // hashCode() function
    println(user.hashCode())
    println(secondUser.hashCode())
    println(thirdUser.hashCode())
    separador()

    // copy() function
    println(user.copy())
    println(user === user.copy())
    println(user.copy("Max"))
    println(user.copy(id = 3))
    separador()

    println("name = ${user.component1()}")
    println("id = ${user.component2()}")
}

fun separador() = println("--------------------------")
