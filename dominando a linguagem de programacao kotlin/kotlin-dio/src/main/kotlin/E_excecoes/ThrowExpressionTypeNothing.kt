package E_excecoes

import java.lang.IllegalArgumentException

data class Person(val name: String?)

fun fail(message: String): Nothing{
    throw IllegalArgumentException(message)
}

fun main() {
    //val person = Person("Wilson")
    //val s = person.name ?: throw IllegalArgumentException("Named required")

    val person = Person(null)
    val s = person.name ?: fail("Named required")

    println(s)
}