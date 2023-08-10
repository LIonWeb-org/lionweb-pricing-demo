package com.strumenta.pricing

import com.github.ajalt.clikt.core.CliktCommand
import com.github.ajalt.clikt.parameters.arguments.argument
import com.github.ajalt.clikt.parameters.arguments.multiple
import com.github.ajalt.clikt.parameters.types.file
import java.io.File
import kotlin.system.exitProcess

class PricingInterpreterCLI : CliktCommand() {
    val pricingStrategyFile: File by argument().file(mustExist = true, mustBeReadable = true, canBeDir = false)
    val orderLines: List<String> by argument().multiple(required = true)

    override fun run() {
        val order = Order(
            orderLines.map {
                val parts = it.split(":")
                if (parts.size != 2 || parts[1].toIntOrNull() == null) {
                    System.err.println("all order lines should be in the format <order-id>:<quantity>")
                    exitProcess(1)
                }
                OrderLine(parts[0], parts[1].toInt())
            }
        )
        val pricingStrategy = PricingLoader().loadPricingStrategyFromLionWebFile(pricingStrategyFile)
        val pricing = PricingInterpreter(pricingStrategy).calculatePrice(order)
        println("Base price: ${pricing.startingPrice}")
        if (pricing.discounts.isEmpty()) {
            println("  (sorry, no discounts)")
        }
        pricing.discounts.forEach {
            println(" - $it")
        }
        println("-------------------------------------")
        println("Final price: ${pricing.startingPrice}")
    }
}

fun main(args: Array<String>) = PricingInterpreterCLI().main(args)
