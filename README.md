# LionWeb Pricing Demo

This demo project is presented in a tutorial about [LionWeb](https://github.com/LionWeb-io).

The tutorial is available at [https://tomassetti.me/using-lionweb-to-combine-jetbrain-mps-with-kotlin/](https://tomassetti.me/using-lionweb-to-combine-jetbrain-mps-with-kotlin/).

_Note that we may have updated the code with respect to the tutorial, but you can find the exact code corresponding to the tutorial under the tag **first-tutorial**_

This demo shows how a language can be defined and used in MPS, and later exported so that an interpreter for that language
can be written in Kotlin. This interpreter will also be able to receive models defined in MPS (and exported to LionWeb)
and process them.

## Scenario

The scenario this enables is the following:
- The Language Engineers quickly sketch a DSL using MPS (the Pricing DSL)
- The Language Users use MPS to define their pricing strategies, by using the Pricing DSL
- The Language Engineer export the DSL definition to Kotlin, and then use it to write an interpreter for the DSL
- A Software Engineer/DevOps person setup the system so that the models defined by Language Users in MPS are regularly
  exported to LionWeb and deployed on a web server controlled by the Acme Inc., company using the Pricing DSL
  (this bit is not yet supported, as exporting requires manual actions) 
- The clients of Acme Inc. visits the website and submit orders. The web application invoke the Pricing Engine to
  calculate the price and apply it to the order submitted. In other words, the execution of the pricing strategies
  defined in MPS happen outside of MPS with no dependencies with MPS

## Structure of the project

The project is composed by two modules:

1. The MPS Pricing DSL: this defines the language and logic to export the language and the models written in that
   language to LionWeb
3. The Pricing Engine: this is an interpreter for the Pricing DSL which is written in Kotlin

The two components are discussed in the respective folders.

## Setup

From the root of the project run:

```
gradle wrapper
```

This will install the Gradle Wrapper.
