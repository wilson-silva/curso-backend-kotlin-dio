package D_funcoes.funcoesDeEscopo

fun writeCreationLog(p: Person){
    println("A new person ${p.name} was created.")
}

fun main() {
    val jake = Person("Jake", 30, "Android developer")
        .also {
            writeCreationLog(it)
        }
}