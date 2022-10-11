def palindromo?(palavra)
    palavra.downcase === palavra.downcase.reverse #return implicito.
    # if palavra === palavra.reverse
    #     return "É palindromo"
    # end

    # return "Não é palindromo"
end

puts "Digite uma palavra e direi se é palindromo: "
nome = gets.chomp

puts palindromo?(nome)