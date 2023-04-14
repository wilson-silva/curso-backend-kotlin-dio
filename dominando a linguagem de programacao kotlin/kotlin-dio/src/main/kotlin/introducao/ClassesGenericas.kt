package introducao

class MutableStack<E>(vararg items: E){
    private val elements = items.toMutableList()
    fun push(element: E) = elements.add(element)
    fun peek(): E = elements.last()
    fun pop(): E = elements.removeAt(elements.size - 1)
    fun isEmpty() = elements.isEmpty()
    fun size() = elements.size
    override fun toString() = "MutablaStack(${elements.joinToString()})"
}

fun <E> mutableStackOf(vararg elements: E) = MutableStack(*elements)

fun main() {
    val stack = MutableStack("A", "B", "C")
    //val stack = MutableStack(0.62, 3.14, 2.7)
    //stack.push(9.87)
    stack.push("D")
    println(stack)
    println()

    println("peek(): ${stack.peek()}")
    println(stack)
    println()

    for (i in 1..stack.size()){
        println("pop(): ${stack.pop()}")
        println(stack)
    }
    println()

    val stack2 = mutableStackOf(0.62, 3.14, 2.7)
    println(stack2)
    println()


}
