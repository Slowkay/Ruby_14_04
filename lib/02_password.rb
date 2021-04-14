# User qui définit le mdp
def signup
  puts "Définit un nouveau mot de passe:"
  print ">"
  new_user_mdp = gets.chomp
  puts " "
  puts "Votre nouveau mot de passe est:"
  puts "#{new_user_mdp}"
  login(new_user_mdp) 
end

# User qui rentre son mdp 
def login(new_user_mdp)
  puts " "
  puts "Entrez votre mot de passe:"
  print ">"
  login_user = gets.chomp
  while login_user != new_user_mdp
    puts " "
    puts "Réessayez à nouveau :"
    login_user = gets.chomp
  end
  puts " "
  puts "Tu peux accéder à l'accueil : "
  welcome_screen
end

# Affichage écran de bienvenue 
def welcome_screen
  puts " "
  puts "Bienvenue bouffon !"
end

signup

