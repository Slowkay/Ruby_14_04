def half_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print ">"
  number = gets.to_i
  if(number >= 1) && (number <= 25)
    puts " Voici la pyramide :"
      number.times do |i|
        puts "#" * (i+1)
      end
    else puts "Ceci n'est pas une pyramide car ce n'est pas un numéro entre 1 et 25"
  end
end

def full_pyramid
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
end

def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print ">"
  number = gets.chomp.to_i
  number_impair = number.even?
  x = 0
  y = -1
  number.times do |i|
    if !number_impair
      if i < number * 0.5
          puts "\s" * ((number -i)) + "#" * (i * 2 +1 )
      
      else 
          x += 1
          y -= 1
          puts "\s" * (number / 2 - y) + "#" * (number - (2 * x ))
      end
    else puts "Chosis un chiffre impair"
      break
    end
  end
end


wtf_pyramid

