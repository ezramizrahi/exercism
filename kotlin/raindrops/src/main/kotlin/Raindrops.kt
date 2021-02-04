object Raindrops {
    fun convert(n: Int): String {
      var message = ""
      if (n % 3 == 0) message += "Pling"
      if (n % 5 == 0) message += "Plang"
      if (n % 7 == 0) message += "Plong"
      if (message.isBlank()) message += n.toString()
      return message
    }
}
