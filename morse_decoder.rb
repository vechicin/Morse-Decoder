MORSE_CODE_ALPHABET = {
  ".-" => "A",
  "-..." => "B",
  "-.-." => "C",
  "-.." => "D",
  "." => "E",
  "..-." => "F",
  "--." => "G",
  "...." => "H",
  ".." => "I",
  ".---" => "J",
  "-.-" => "K",
  ".-.." => "L",
  "--" => "M",
  "-." => "N",
  "---" => "O",
  ".--." => "P",
  "--.-" => "Q",
  ".-." => "R",
  "..." => "S",
  "-" => "T",
  "..-" => "U",
  "...-" => "V",
  ".--" => "W",
  "-..-" => "X",
  "-.--" => "Y",
  "--.." => "Z"
}

def decode_char(char)
  MORSE_CODE_ALPHABET.each do |key, value|
    return value if key == char
  end
end

puts decode_char(".-")