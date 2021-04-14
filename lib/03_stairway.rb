marche = 0

def dice
  des = rand(6) + 1
  return des
end

def etat(marche)
  puts "Tu es sur la marche #{number}"
end 

def start
  puts "Ecrivez START pour lancer le jeu !"
  start = gets.chomp.downcase
  print ">"
  while start != "start"
    puts "Réessayez à nouveau :"
    start = gets.chomp.downcase  
  end 
end

def game(marche)
  while marche == 10
    puts "Victoire !"
  end
end

def dess(dice, marche)
  if des == 1
    puts "Vous reculez !"
    return marche -= 1
  
  elsif des == 2 || des == 3 || des == 4
    puts "Vous restez ici !"
    return marche += 0
  
  else des == 5 || des == 6
    puts "Vous avancez !"
    return marche += 1
  end
end

def program
  while 

def all
  start
  etat(1)
  

end
 
all