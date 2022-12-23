@dict = {
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
}

def get_letter(letter)
  @current_letter = @dict[letter]
  @current_letter
end

def decode_word(word)
  @letters = word.split
  @current_word = ''
  @letters.each do |letter|
    get_letter(letter)
    @current_word += get_letter(letter)
  end
  @current_word.to_s
end

def decode_message(message)
  @words = message.split('   ')
  decoded_sentence = ''
  @words.each do |word|
    decoded_sentence += "#{decode_word(word)} ".to_s
  end
  decoded_sentence.strip
end

print decode_message(' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
