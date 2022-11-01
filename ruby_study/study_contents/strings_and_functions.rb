puts "hello world" #imprime e quebra linha

#function
def sum(a, b) 
    a + b  #return é opcional para um valor.
end

soma = sum(3,2)

print("A soma dos valores é: ", soma, "\n") #print n quebra linha

#String interpolation
p ("O valor da soma é: #{soma}.")
p ("Soma: " + "#{soma}. " + 
    "Soma duplicada: " + "#{2*soma}")

#substrings 
nome = "Caio"
p nome[0] #=> "C"
p nome[-1] #=> "o" pega o ultimo índice, -2 pega o penultimo.
p nome.chars #=> ["C", "a", "i", "o"] retorna vetor de char
p nome[0,2] #=> "Ca". Pega as duas primeiras letras(indice 0 e 1)

#regex substrings
p 'foo'[/o/] # => "o"
p 'hello there'[/[aeiou](.)\1/] # => "ell"
p 'hello there'[/[aeiou](.)\1/, 0] # => "ell"

#formatar numero
numero = 42
puts "O numero é: %05d" % numero #=> 00042

puts "%-5s: %016x" % ["ID", self.object_id ] # ID: 000000000000003c

#strip: formatar espaços em branco
nome = "       Caio       "
p nome.strip #=> "Caio"

#upcase
p nome.upcase #=> "     CAIO     " (imutável, vai gerar um 
#novo valor de variável pra gente)

#downcase
p nome.downcase #=> "      caio    "

#ação com !(bang)
p nome.upcase! #=> "     CAIO     " (mutável, substitui o 
#valor da variável nome já existente)

#capitalize
nome = "caio"
p nome.capitalize #=> "Caio"

#gsub(pattern, replacement) → new_string
mensagem = "ola nome"
puts mensagem.gsub("nome", "caio") #=> "ola caio" troca 
# "nome" por "caio".

#split: quebra string em array através de um delimitador.
nomes = "caio lucas alexandre"
p nomes.split() #pode colocar um outro delimitador ex: "-"
p nomes

#numbers
#Integer, Float
p 42.class
p 42.42.class

#soma int + float
soma = 5 + 3.2 #Float

#even or odd
number = 3
p number.even?
p number.odd?

#string * integer ->new string
puts "Ho! " * 3 #"Ho! Ho! Ho! "
p "-" * 10 #=> "----------"

#string + other_string -> new string
puts "Hello from " + self.to_s # => "Hello from main"

#+string → new_string or self
puts +"OI?" #self if not frozen or self.dup 
#-string → frozen_string
puts -"OI?" #frozen

#Concatenate: string << object → string
puts 'foo' << 'bar' # "foobar"

#Comparing: string <=> other_string → -1, 0, 1, or nil
# -1 if other_string is larger. 0 if the two are equal. 
# 1 if other_string is smaller. nil if the two are incomparable.
p 'foo' <=> 'foo' # => 0
p 'foo' <=> 'food' # => -1
p 'food' <=> 'foo' # => 1
p 'FOO' <=> 'foo' # => -1
p 'foo' <=> 1 # => nil

#Comparing: string == object =>true or false
p 'foo' == 'foo'
#Comparing: string === object
p 'foo' === 'foo'

#Regex 
#string =~ regexp → integer or nil; string =~ object → integer or nil
p 'foo' =~ /f/ # => 0 return the index of the first substring that 
#matches the given regex or nil.
#string =~ regexp is different from regexp =~ string
number= nil
p "no. 9" =~ /(?<number>\d+)/ #4 , index do 9
p number # => nil (not assigned)
p /(?<number>\d+)/ =~ "no. 9"
p number #=> "9"

#casecmp: casecmp(other_string) → -1, 0, 1, or nil
'foo'.casecmp('foo') # => 0
'foo'.casecmp('food') # => -1
'food'.casecmp('foo') # => 1
'FOO'.casecmp('foo') # => 0
'foo'.casecmp('FOO') # => 0
'foo'.casecmp(1) # => nil

#center
"hello".center(4)         #=> "hello"
"hello".center(20)        #=> "       hello        "
"hello".center(20, '123') #=> "1231231hello12312312"

#chomp or chomp!
"hello\n".chomp #=> "hello"
"hello".chomp("llo") #=> "he"

#chop or chop!: remove last character.
"string".chop       #=> "strin"
"string\r\n".chop   #=> "string"

#chr: return new string with first character.
'foo'.chr     # => "f"

#clear: remove the content of self.
'foo'.clear # => ""

#concat
'foo'.concat('bar', 'baz') # => "foobarbaz"
'foo'.concat(32, 'bar', 32, 'baz') #32 converted to string=>"foo bar baz"  

#count: count([other_str]+) → integer
'hello world'.count "lo" #=> 5
'hello world'.count "lo", "o" #=> 2
'hello world'.count "hello", "^l" #=> 4

#delete: delete([other_str]+) → new_str
"hello".delete "l","lo" #=> "heo"
"hello".delete "lo" #=> "he"

#delete_prefix(prefix) → new_str or delete_prefix!(prefix)
"hello".delete_prefix("hel") #=> "lo"
"hello".delete_prefix("llo") #=> "hello"

#delete_suffix(suffix) → new_str
#delete_suffix!(suffix) → self or nil
"hello".delete_suffix("llo") #=> "he"
"hello".delete_suffix("hel") #=> "hello"

#dump: Returns a printable version of self
"hello \n ''".dump    # => "\"hello \\n ''\""

#each_line
"hello\nworld".each_line('l') {|s| p s}
# prints:
#   "hel"
#   "l"
#   "o\nworl"
#   "d"

#each_char.with_index
"text".each_char.with_index do |letter, index|
    p letter, index
end

#empty? → true or false
"hello".empty? # => false

#end_with?([suffixes]+) → true or false
"hello".end_with?("ello") #=> true
"hello".end_with?("heaven", "ello") #=> true if one of suff matches.

#eql?(object) → true or false
'foo'.eql?('foo') # => true

#include? other_string → true or false
'foo'.include?('f') # => true

#index(substring, offset = 0) → integer or nil
#index(regexp, offset = 0) → integer or nil
'foo'.index('f') # => 0
'foo'.index('oo') # => 1
'foo'.index('ooo') # => nil
'foo'.index(/f/) # => 0
'foo'.index('o', 2) # => 2, specifies the position in the string 
#to begin the search.

#replace(other_string) → self
'foo'.replace('bar') # => "bar"

#insert(index, other_string) → self
'foo'.insert 1, 'bar'

#intern → symbol
"Koala".intern         #=> :Koala
s = 'cat'.to_sym       #=> :cat
s == :cat              #=> true
s = '@cat'.to_sym      #=> :@cat
s == :@cat             #=> true

#length → integer
'foo'.length

#lines(separator=$/, chomp: false) → an_array
"hello\nworld\n".lines              #=> ["hello\n", "world\n"]
"hello  world".lines(' ')           #=> ["hello ", " ", "world"]
"hello\nworld\n".lines(chomp: true) #=> ["hello", "world"]

#ljust(integer, padstr=' ') → new_str
"hello".ljust(4)            #=> "hello"
"hello".ljust(20)           #=> "hello               "
"hello".ljust(20, '1234')   #=> "hello123412341234123"

#match(pattern, offset = 0) → matchdata or nil
'foo'.match('f') # => #<MatchData "f">

#succ → new_str
'09'.succ # => "10"
'aa'.succ # => "ab"

#partition(sep) → [head, sep, tail]
"hello".partition("l") #=> ["he", "l", "lo"]

#prepend(*other_strings) → string
'foo'.prepend('bar', 'baz') # => "barbazfoo"

#replace(other_string) → self
'foo'.replace('bar') # => "bar"

#reverse → string
'foo'.reverse # => "oof"

#rindex(substring, offset = self.length) → integer or nil
'foo'.rindex('o') # => 2 , index of the last occurrence.

#rpartition(sep) → [head, sep, tail]
"hello".rpartition("l") #=> ["hel", "l", "o"] ,search from the end.

#slice!(index) → new_string or nil
#slice!(start, length) → new_string or nil
#slice!(substring) → new_string or nil
#slice: Removes the substring of self specified by the arguments; 
#returns the removed substring.
string = "This is a string"
string.slice!(2)        #=> "i"
string.slice!(3..6)     #=> " is "

#split(pattern=nil, [limit]) → an_array
#Divides str into substrings based on a delimiter, 
#returning an array of these substrings.
" now's  the time ".split #=> ["now's", "the", "time"]
"hello".split(//) #=> ["h", "e", "l", "l", "o"]
"hello".split(//, 3) #=> ["h", "e", "llo"] (max 3 substrings)

#start_with?([prefixes]+) → true or false
"hello".start_with?("hell") #=> true

#swapcase(*options) → string
'Hello World!'.swapcase # => "hELLO wORLD!"

#to_c → complex
'9'.to_c #=> (9+0i)

#to_f → float
'3.14159'.to_f  # => 3.14159
'1.234e-2'.to_f # => 0.01234

#to_i(base = 10) → integer
'12.345'.to_i   # => 12
'123def'.to_i(16) # => 1195503 , base 16

#to_r → rational
'  2  '.to_r       #=> (2/1)
'300/2'.to_r       #=> (150/1)

#to_s → self or string
4.to_s

#tr(from_str, to_str) => new_str
"hello".tr('el', 'ip')      #=> "hippo"
"hello".tr('aeiou', '*')    #=> "h*ll*"

#upto(other_string, exclusive = false) {|string| ... } → self
'a8'.upto('b6') {|s| print s, ' ' }#=> a8 a9 b0 b1 b2 b3 b4 b5 b6 "a8"