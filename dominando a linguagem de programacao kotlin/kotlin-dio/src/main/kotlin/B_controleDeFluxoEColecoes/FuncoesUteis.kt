package B_controleDeFluxoEColecoes

fun main() {

    // Na documentação kotlin há muitas outras funções

    val numbers = listOf(1, -2, 3, -4, 5, -6)

    println("filter")
    println("Numbers: $numbers")
    val positives = numbers.filter { x -> x > 0 }
    val negatives = numbers.filter { it < 0 }

    println("Positive Numbers: $positives")
    println("Negative Numbers: $negatives")
    println()

    println("map")
    val doubled = numbers.map { x -> x * 2 }
    val tripled = numbers.map { it * 3 }

    println("Numbers: $numbers")
    println("Doubled Numbers: $doubled")
    println("Tripled Numbers: $tripled")
    println()

    println("any")
    val anyNegative = numbers.any { it < 0 }
    val anyGT6 = numbers.any { it > 6 }

    println("Numbers: $numbers")
    println("Is there any number less than 0: $anyNegative")
    println("Is there any number greater than 6: $anyGT6")
    println()

    println("flatMap")
    val fruitsBag = listOf("apple", "orange", "banana", "grapes")
    val clothesBag = listOf("shirts", "pants", "jeans")
    val cart = listOf(fruitsBag, clothesBag)
    val mapBag = cart.map { it }
    val flatMapBag = cart.flatMap { it }

    println("Your bags are: $mapBag")
    println("The things you bought are: $flatMapBag")


}

