#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  # returns 'hello'
def say_hello
  "hello"
end

#echo
  # returns the input string
def echo input
  input
end

#eddie_izzards_height
  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result
def eddie_izzards_height(heels = 0)
  67 + heels
end

#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args
def how_many_args (*arg)
  arg.length
end

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments
def find_answer(answer = {})
  answer[:answer]
end

##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # takes in a word
  # returns the first letter of the word
  # lowercases the first letter of the word
def first_char str
  str[0].downcase
end

#polly_wanna
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated
def polly_wanna word
  word*3
end

#count_chars
  # takes in a word
  # returns the number of characters in the word
def count_chars word
  word.length
end

#yell
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message
def yell word
  word.upcase+"!"
end


## STRETCH ##
#to_telegram
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message
def to_telegram word
  word.gsub ".", " STOP"
end


#spell_out
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes
def spell_out word
  word.downcase.split("").join("-")
end


#seperate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string
def seperate(word, sep="-")
  word.split("").join(sep)
end

## STRETCH ##
#croon
  # seperates word characters with dashes
  # preserves whitespace between words
def croon word
  v = word.split(" ").map do |c|
    c.split("").join("-")
  end
  v.join(" ")
end

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false


## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

#is_vowel
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully

#add_period
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence


###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces
def count_spaces str
  count = 0
  str.each_char do |c|
    if c == " "
      count += 1
    end
  end
  count
end
#string_lengths
  # takes in an array of strings
  # returns an array containing the lengths of the strings
def string_lengths arr
  arr.map do |e|
    e.length
  end
end

#remove_falsy_values
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list
def remove_falsy_values list
  list.select do |e|
    !!e
  end
end

#exclude_last
  # takes in an array or string
  # removes the last item from the array or string
  # returns it
def exclude_last arst
  arst[0..-2]
end

#exclude_first
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)
def exclude_first arst
  arst[1..-1]
end

#exclude_ends
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string
def exclude_ends arst
  arst[1..-2]
end

#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input
def select_every_even arr
  arr.select.with_index do |e, i|
    e if i.even?
  end
end

#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items
def select_every_odd arr
  arr.select.with_index do |e, i|
    e if i.odd?
  end
end

#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1
def select_every_n(arr, n=1)
  arr.select.with_index do |e, i|
    e if i%n == 0
  end
end

## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol

##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals
def count_to num
  count = 0
  arr = []
  if num >= 0
    while count <= num do
      arr.push(count)
      count += 1
    end
  else
    while count >= num do
      arr.push(count)
      count -= 1
    end
  end
  arr
end

# def count_to(n)
#   n = n.to_i
#   if n >= 0
#     (0..n).to_a
#   else
#     0.downto(n).to_a
#   end
# end


#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers
def is_integer? num
  num.class == Fixnum || num.class == Bignum ||
    ( num.is_a?(Float) && !num.nan? && num.to_i == num )
end

#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!

# def is_prime? num
#   is_integer?(num) && num > 1 && num == 2 && (if num > 3
#     (3..(num-1)).each do |e|
#       if num%e == 0
#         false
#       end
#     end
#   else
#     true
#   end)
#
# end

def is_prime?(num)
  if !is_integer?(num) || num <= 1
    false
  elsif num <= 1
    false
  else
    (2..(num-1)).each do |n| # throwing an error to bypass is hacky yo
      if num % n == 0
        return false
      end
    end
    true
  end
end

#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number
def primes_less_than num
  arr = []
  (2..num-1).each do |e|
    if is_prime?(e)
      arr.push(e)
    end
  end
  arr
end

## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number



##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
def character_count word
  count = {}
  word!.downcase
  word.each_char do |i|
    if count[i]
      count[i] += 1
    else
      count[i] = 1
    end
  end
  count
end

## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
