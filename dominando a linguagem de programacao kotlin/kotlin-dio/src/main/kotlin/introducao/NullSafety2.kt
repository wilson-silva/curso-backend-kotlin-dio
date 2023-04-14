package introducao

fun describeString(maybeString: String?): String {
    if (!maybeString.isNullOrEmpty()){
        return "String of length ${maybeString.length}"
    } else {
        return "Empty or null string"
    }
}

fun main() {
    println(describeString(null))
    println(describeString(""))
    println(describeString("dio.me"))

}