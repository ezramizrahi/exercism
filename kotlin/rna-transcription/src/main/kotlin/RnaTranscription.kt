fun transcribeToRna(dna: String = ""): String {
  var result = ""
  var transformed = dna.map { it.toString() }
  for (s in transformed) {
      if (s.toString() == "C") result += "G"
      if (s.toString() == "G") result += "C"
      if (s.toString() == "T") result += "A"
      if (s.toString() == "A") result += "U"
  }
  return result
}
