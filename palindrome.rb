#puts "Hello world!"
require 'pry'
def is_a_palindrome?(string)
 new_string = string.delete(" ")
 new_string == new_string.reverse
end



def is_a_palindrome?(string)
  new_string = string.delete(' ')
  left = 0
  right = -1
 (new_string.length / 2).times do
   if new_string[left] != new_string[right]
     return false
   else
     left += 1
     right -= 1
   end
 end
 true
end
  
puts is_a_palindrome?("racecar")

'toot'

'oo'

''

'radar'
'ada'
'd'

'wordw'
'ord'

puts is_a_palindrome?('a nut for a jar of tuna')

puts is_a_palindrome?('word')

def palindrome?(string)
  
  new_string = string.split(' ').join('')
  
    if new_string.length == 1 || new_string.length == 0
      true
    else
      if new_string[0] == new_string[-1]
        palindrome?(new_string[1..-2])
      else
        false
      end
    end
  end