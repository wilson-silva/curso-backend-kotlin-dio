package introducao

import org.jetbrains.annotations.NotNull

fun main() {

    //Não aceita nulo
    var neverNull: String = "This can´t be null"
    //neverNull = null

    //aceita nulo por conta do simbolo ?
    var nullable: String? = "You can keep a null here"
    nullable = null

    //Não aceita nulo ao fazer uma inferência de tipo
    var inferredNonNull = "The compiler assumes non-null"
    //inferredNonNull = null

    fun strLength(str: String?): Int {
        return str?.length ?: 0
    }

    println(strLength(neverNull))
    println(strLength(nullable))


}