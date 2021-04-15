# marche = 0

# def dice
#   des = rand(6) + 1
#   return des
# end

# def etat(marche)
#   puts "Tu es sur la marche #{number}"
# end 

def start
  puts "Ecrivez START pour lancer le jeu !"
  start = gets.chomp.downcase
  print ">"
  while start != "start"
    puts "Réessayez à nouveau :"
    start = gets.chomp.downcase  
  end 
end

# def game(marche)
#   while marche == 10
#     puts "Victoire !"
#   end
# end

# def dess(dice, marche)
#   if des == 1
#     puts "Vous reculez !"
#     return marche -= 1
  
#   elsif des == 2 || des == 3 || des == 4
#     puts "Vous restez ici !"
#     return marche += 0
  
#   else des == 5 || des == 6
#     puts "Vous avancez !"
#     return marche += 1
#   end
# end

# def program
#   while 

# def all
#   start
#   etat(1)
  

# end
 
# all

# ****************************************

# Lancer un dé virtuel
def roll_dice
  return rand(6) + 1
end

# Analiser le dé
def analyze_dice(dice)
  if dice >= 5
    puts "Vous avancez !"
    return 1
  elsif dice == 1
    puts "Vous reculez !"
    return -1
  else 
    puts "rien ne se passe"
    return 0
  end
end

# Afficher un état des lieux 
def show_state(num)
  puts "Vous êtes sur la marche n° #{num}"
end

# Vérifier si la partie doit se finir 
def is_over?(num)
  if num == 10
    return true
  else 
    return false
  end 
end 

# Lier les méthodes entre elles
def play 
  start

  step = 1
  show_state(step)

  while(!is_over?(step)) do
    puts "Appuyez sur 'entrée' pour jouer !"
    gets.chomp
    step += analyze_dice(roll_dice)
    show_state(step)
  end
  
  puts " "
  puts "==========VICTOIRE=========="
end

play