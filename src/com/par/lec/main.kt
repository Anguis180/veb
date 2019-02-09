package com.par.lec

fun main(args: Array<String>) {
    if (args.isEmpty()) {
        println(" no arguments")
    } else {
        args.forEach {
            println(it)
        }

    }
}