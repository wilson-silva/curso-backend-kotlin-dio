package E_excecoes

//No Kotlin não existem exceções verificadas

class IllegalVoterException(message: String) : Throwable(message)

@Throws(IllegalVoterException::class)
fun vote(name: String, age: Int) {
    if (age < 16) {
        throw IllegalVoterException("$name não pode votar.")
    }
    println("Voto de $name realizado com sucesso!")
}

fun retornaQuantidade(name: String, age: Int) = try {
    vote(name, age)
    1
} catch (e: IllegalVoterException) {
    0
}

private fun somaVotos(quantidadeVotos: Int, x: Int): Int {
    var somaQuantVotos = quantidadeVotos
    somaQuantVotos += x
    return somaQuantVotos
}

fun main() {
    var quantidadeVotos = 0;
    quantidadeVotos = somaVotos(quantidadeVotos, retornaQuantidade("Wilson", 30))
    quantidadeVotos = somaVotos(quantidadeVotos, retornaQuantidade("Katelyn", 10))
    quantidadeVotos = somaVotos(quantidadeVotos, retornaQuantidade("Francislaine", 35))
    quantidadeVotos = somaVotos(quantidadeVotos, retornaQuantidade("Davi", 2))
    quantidadeVotos = somaVotos(quantidadeVotos, retornaQuantidade("João", 50))
    println("Quantidade de votos: $quantidadeVotos")

}

