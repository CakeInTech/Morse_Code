def decode_char(code)
  dict = {
    '.-': 'A',
    '-...': 'B',
    '-.-.': 'C',
    '-..': 'D',
    '.': 'E',
    '..-.': 'F',
    '--.': 'G',
    '....': 'H',
    '..': 'I',
    '.---': 'J',
    '-.-': 'K',
    '.-..': 'L',
    '--': 'M',
    '-.': 'N',
    '---': 'O',
    '.--.': 'P',
    '--.-': 'Q',
    '.-.': 'R',
    '...': 'S',
    '-': 'T',
    '..-': 'U',
    '...-': 'V',
    '.--': 'W',
    '-..-': 'X',
    '-.--': 'Y',
    '--..': 'Z'
  }
  dict.key(code)
end


def word(string)
    decode_words = ''
    string.split('').each { |code| decode_words += " #{decode_char(code)}" }
    decode_words
end

def decode(sentence)
  strings = ''
  sentence.split('  ').each { |code| strings += " #{word(code)}" }
  strings
end

puts decode("-- -.--   -. .- -- .")