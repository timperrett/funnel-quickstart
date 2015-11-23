package example

import funnel.Monitoring
import funnel.instruments._
import funnel.http.MonitoringServer

object Main {

  val rnd = new scala.util.Random
  val range = 0 to 500

  val a = counter("example/foo")
  val b = timer("example/bar")
  val c = numericGauge("example/baz", 0d)

  def nextInt = rnd.nextInt(range.length)

  def main(args: Array[String]): Unit = {
    MonitoringServer.start(Monitoring.default, 5775)

    /* send some dummy information, forever */
    while(true){
      a.increment
      c.set(nextInt)
      b.time {
        // sleep for a random amount of time
        Thread.sleep(nextInt)
      }

      // just so we're not thrashing the cpu too hard
      Thread.sleep(300)
    }
  }
}
