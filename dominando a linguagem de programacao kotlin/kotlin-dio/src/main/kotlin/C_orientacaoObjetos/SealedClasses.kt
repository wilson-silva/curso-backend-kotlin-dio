package C_orientacaoObjetos

sealed class Mammal(val name: String)

class Cat(val catName: String) : Mammal(catName)
class Human(val humanName: String, val job: String) : Mammal(humanName)

fun greetMammal(mammal: Mammal): String{
    when(mammal){
        is Human -> return "Hello ${mammal.name}; You´re working as a ${mammal.job}"
        is Cat -> return "Hello ${mammal.name}"
    }
}

fun main() {
    val cat = Cat("Snowy")
    val human = Human("Wilson","Dev")

    println(greetMammal(cat))
    println(greetMammal(human))
}