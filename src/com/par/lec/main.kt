package com.par.lec

import kotlin.system.exitProcess

fun main(args: Array<String>) {
    if (args.isEmpty()) {
        println(" no arguments")
        exitProcess(0)
    } else if (args.size == 1) {
        println("1 argument: ${args[0]}")
        exitProcess(1)
    } else if (args.size == 2) {
        val (a, b) = args
        println("2 argument $a $b ")
        exitProcess(2)
    } else {
        args.forEach {
            println(it)
        }
        exitProcess(3)
    }
}