def decode_char(char)
  morse_code = {
    '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
    '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9',
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', ' ' => ' '
  }

  morse_code[char]
end

def decode_word(string)
  spliter = ' '
  string.split(spliter).map { |char| decode_char(char) }.join
end

# decode_char(".-")

def decode(message)
  message.split('   ').map { |string| decode_word(string) }.join
end

# decode_word("-- -.--")

# decode("-- -.--   -. .- -- .")

# decode("      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
