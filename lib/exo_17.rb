puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print ">"
number = gets.chomp.to_i
if(number >= 1) && (number <= 25)
  puts " Voici la pyramide :"
    number.times do |i|
        puts " " * (number -i) + "#" * (2*i+1)
    end
  else puts "Ceci n'est pas une pyramide car ce n'est pas un numéro entre 1 et 25"
end

