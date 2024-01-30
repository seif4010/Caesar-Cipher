def caesar_cipher(input_string, shift_factor)
  result = ""  # Initialize an empty string to store the encrypted result.

  # Iterate through each character in the input string.
  input_string.each_char do |char|
    # Check if the character is an alphabetical letter.
    if char.match(/[a-zA-Z]/)
      base = char.match(/[a-z]/) ? 'a' : 'A'  # Determine the base value for lowercase or uppercase letters.
      # Calculate the new character using the Caesar Cipher formula.
      result += (((char.ord - base.ord + shift_factor) % 26) + base.ord).chr
    else
      # If the character is not an alphabetical letter, leave it unchanged.
      result += char
    end
  end

  # Return the final encrypted string.
  result
end

# Example usage:
puts caesar_cipher("Hello, World!", 3)
