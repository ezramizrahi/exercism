fun reverse(input: String): String {
  return if (input.length > 0) input.split("").reversed().joinToString("") else input
}
