package E_excecoes

fun main() {
   // throw Exception("Hi There!")
    val a = 10
    val b = 2

    try {
        val divisao = a/b
        println(divisao)
    }catch (e: ArithmeticException ){
        println("Ocorreu uma excecao aritmetica.")
    }catch (e: Throwable){
        println(e.message)
    } finally {
        println("Finally executado!")
    }

}
