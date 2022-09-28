# rubocop:disable Metrics/MethodLength
def decode_char(char)
  morse_code = { '.-' => 'A',
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
                 '--..' => 'Z' }
  morse_code[char]
end

def decode_word(code)
  word = ' '
  code.split(/ /).each do |chr|
    word = "#{word}#{decode_char(chr)}"
  end
  word
end

def decode_sentence(sentence)
  sentence.split('  ').map { |morse_word| decode_word(morse_word) }.join(' ')
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode_sentence('-- -.--  -. .- -- .')
puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# rubocop:enable  Metrics/MethodLength
