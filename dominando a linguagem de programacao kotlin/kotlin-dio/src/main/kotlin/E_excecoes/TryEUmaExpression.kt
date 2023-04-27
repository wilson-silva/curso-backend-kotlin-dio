package E_excecoes

fun main() {
    val a  = 10
    val b = 2

    val divisao = try {
        println("Tentando fazer a divisão...")
        a/b
    } catch (e: ArithmeticException) {
        println("Divisão com erro!")
        null
    }
    println(divisao)
}