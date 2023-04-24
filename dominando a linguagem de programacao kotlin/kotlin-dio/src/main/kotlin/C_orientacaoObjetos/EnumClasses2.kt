package C_orientacaoObjetos

enum class Color(val rgb: Int){
  RED(0xFF0000),
  GREEN(0x00FF00),
  BLUE(0x0000FF),
  YELLOW(0xFFFF00);

    fun containsRed() = (this.rgb and 0xFF0000 != 0)
}

fun main() {
    val red = Color.RED
    println(red)
    println(red.containsRed())
    println(Color.BLUE.containsRed())
    println(Color.YELLOW.containsRed())
    println(Color.RED.rgb)
    println(Color.YELLOW.rgb)
}