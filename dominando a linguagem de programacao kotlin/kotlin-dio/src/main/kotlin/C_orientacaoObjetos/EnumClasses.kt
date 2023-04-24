package C_orientacaoObjetos

enum class State{
    IDLE, RUNNING, FINISHED
}

fun main() {
    val state = State.IDLE
    val message = when(state){
        State.IDLE -> "It´s idle"
        State.RUNNING -> "It´s running"
        State.FINISHED -> "It´s finished"
    }
    println(message)
}