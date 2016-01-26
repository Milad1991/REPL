while true do

  def game_talk(prose)
    puts prose
  end

  def valid_input?(start)
    if start == "y" || start == "n"
      true
    else
      false
    end
  end

  def intro(start, name)
    until valid_input?(start)
      puts "Please only use y or n"
      start = gets.chomp.downcase
    end
    if start == "y"
      game_talk  """
      Welcome to Overtown, Miami. January, 19th 2016. It's Midnight.

      Your name is #{name}, undercover detective for MIAMI Police Department.

      You are in the middle of the street following a drug sting that fell apart.

      Your cover has been blown.

      The opposition is surronding you, regardless of the direction you choose.

      Your goal is to get three blocks down the neighborhood, where your

      partners and back up is waiting with a get away car.
      """
    elsif start == "n"
      game_talk "Thanks for playing!"
    else
      game_talk "I need an answer!"
    end
  end


  def ready(choice1)
    if choice1 == "y"
      game_talk """
      Of course you are, you don't have any other choice.

      Now we must figure out which way to go.

      Which direction? STRAIGHT, RIGHT, OR LEFT? (S / R / L)"""
    elsif choice1 == "n"
      game_talk "Thank you for playing !"
    else
      game_talk"Please choose an answer."
    end
  end

  def which_direction(direction)
    if  direction == "s"
      game_talk """
      You run into 1 armed member.

      What is your best option?

      SNEAK up close enough to disarm him or RUSH him which is more risky?

      (S / R)"""
    elsif direction == "l"
      game_talk """
      You spot two armed opposition members.

      What is your best option?

      CRAWL underneath the cars till they pass or try to out RUN them?
      (C / R)
      """
    elsif  direction == "r"
      game_talk """
      You spot three unarmed opposition memebers.

      We must find a route around them since you are outnumbered.

      You must use stealh.

      BREAK into the abandoned building and go the long way or try to out RUN

      your opposition?

      (B / R)"""
    else
      game_talk "Please choose a direction."
    end
  end

  def straight_direction(straight)
    if straight == "s"
      game_talk """
      You disarmed him!

      You made it to back up and live to fight another day on the streets of

      OVERTOWN.

      Thank you for playing!"""
    else straight == "r"
      game_talk """
      You were spotted and taken out!

      You served a repected tenure on the force.

      You didn't make it"""
    end
  end


  def left_direction(left)
    if left == "c"
      game_talk """
      Fantastic!

      Stealth was the best option. They didn't even see you.

      You live to see another day on the streets of OVERTOWN.

      Thank you for playing!"""

    else left = "r"
      game_talk """
      You have been seen and taken out.

      They were waiting for you and ambushed you.

      You won't make it"""
    end
  end

  def right_direction(right)
    if right == "b"
      game_talk """
      The building kept you out of sight. You walked out the back and made it!

      You live to see another day and serve to protect these streets.

      Thank you for playing"""

    else right == "r"
      game_talk """
      This decision cost you!

      You were spotted and taken out.

      Your service and tenure was well appreciated, but you didn't make it."""
    end
  end


  puts '
   _______ _     _ _______ ______ _______ _______ _  _  _ _______
  (_______|_)   (_|_______|_____ (_______|_______|_)(_)(_|_______)
   _     _ _     _ _____   _____) )  _    _     _ _  _  _ _     _
  | |   | | |   | |  ___) |  __  /  | |  | |   | | || || | |   | |
  | |___| |\ \ / /| |_____| |  \ \  | |  | |___| | || || | |   | |
   \_____/  \___/ |_______)_|   |_| |_|   \_____/ \_____/|_|   |_|
  Developed by Milad Zolnoor @ Wyncode Studios
  '

  game_talk "What is your name?"
  name = gets.chomp
  puts "Continue?  (Y / N)"
  start = gets.chomp.downcase
  intro(start, name)

  game_talk "Ready? (Y / N)"
  choice1 = gets.chomp.downcase
  ready(choice1)

  game_talk"""
  Which direction are you going?
  """
  direction = gets.chomp.downcase
  which_direction(direction)

  case direction

  when "s"
    straight = gets.chomp.downcase
    straight_direction(straight)

  when "l"
    left = gets.chomp.downcase
    left_direction(left)

  when "r"
    right = gets.chomp.downcase
    right_direction(right)
  end

end
