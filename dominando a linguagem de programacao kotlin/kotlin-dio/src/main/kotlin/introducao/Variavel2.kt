package introducao

fun someCondition() = false

fun main(){
    val d: Int

    if(someCondition()){
        d = 1
    }else{
        d = 2
    }
    println(d)
}