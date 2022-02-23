MORSE_CODE_ALPHABET = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(char)
  MORSE_CODE_ALPHABET.each do |key, value|
    return value if key == char
  end
end

puts decode_char('.-')

def decode_word(string)
  alphabet_array = []
  split_string = string.split
  split_string.each do |letter|
    alphabet_array << if letter == '/'
                        ' '
                      else
                        decode_char(letter)
                      end
  end
  alphabet_array.join
end

puts decode_word('-- -.--')

def decode(msg)
  msg.split('   ')
    .map { |word| decode_word(word) }.join(' ')
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
