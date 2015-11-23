
name := "example"

organization := "com.timperrett"

scalaVersion := "2.11.7"

resolvers ++= Resolver.jcenterRepo ::
              Resolver.bintrayRepo("oncue", "releases") :: Nil

libraryDependencies += "oncue.funnel" %% "http" % "5.2.65"

mainClass in assembly := Some("example.Main")

assemblyJarName in assembly := "example.jar"
