# In the card game poker, a hand consists of five cards and are ranked, 
# from lowest to highest, in the following way:

# High Card: Highest value card.
# One Pair: Two cards of the same value.
# Two Pairs: Two different pairs.
# Three of a Kind: Three cards of the same value.
# Straight: All cards are consecutive values.
# Flush: All cards of the same suit.
# Full House: Three of a kind and a pair.
# Four of a Kind: Four cards of the same value.
# Straight Flush: All cards are consecutive values of same suit.
# Royal Flush: Ten, Jack, Queen, King, Ace, in same suit.
# The cards are valued in the order:
# 2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King, Ace.

# poker_hands = { high_card => 1, pair => 2, three_of_kind => 3, straight => 4, flush => 5, full_house => 6, 
#   four_kind => 7, straight_flush => 8, royal_flush => 9}

# answer: 376
# time: .152
# yes, this one is kind of a mess. I may refactor later.

__DIR__ = File.expand_path(File.dirname(__FILE__))
input = File.open(File.expand_path('p054_poker.txt', __DIR__))
data = input.read
input.close

def sanitize(data)
  @play_A = 0
  @play_B = 0
  games = []
  games = data.delete(' ').gsub('\n', ' ').split(' ')

  games.each {|game| replace_face_cards(game)}
  @play_A
end

def replace_face_cards(game)
  deal = []
  deal = game.split('')

  face_cards = { 'T' => "10", 'J' => "11", 'Q' => "12", 'K' => "13", 'A' => "14" }
  
  deal.each_with_index {| value, index|deal[index] = face_cards[value] if face_cards.has_key?(value) }

  tally_hand(deal)
end

def tally_hand(game)
  #record each player's hand and tally wins
  score_A = {}
  score_B = {}

  game.take(10).each do |i|
    if score_A.has_key?(i)
      score_A[i] += 1
    else
      score_A[i] = 1
    end
  end

  game.drop(10).each do |i|
    if score_B.has_key?(i)
      score_B[i] += 1
    else
      score_B[i] = 1
    end
  end

  if calc(score_A) > calc(score_B)
    @play_A += 1
  else
    @play_B += 1
  end
end

def calc(score_hash)
  sum = 0
  hand = []

  # check for flush
  sum += 140 if flush(score_hash)

  # remove suits
  score_hash.each_key do |k| 
    if k.to_i == 0 
      score_hash.delete(k)
    else 
      hand << k.to_i
    end
  end

  hand = hand.sort
  
  # check for straight or HC 
  if hand.length == 5 
    sum += hand[4]
    sum += 100 if straight(hand)
  end
  
  # check for full house and 4 of kind
  if score_hash.length == 2
    score_hash.each_key do |k|
      sum += (k.to_i) if score_hash[k] == 2
      sum += (180 + k.to_i) if score_hash[k] == 3
      sum += (220 + k.to_i) if score_hash[k] == 4
    end
  end

  # check for pair, 2 pair, and three of kind
  if score_hash.length == 3 || score_hash.length == 4
    score_hash.each_key do |k|
      sum += (20 + k.to_i) if score_hash[k] == 2
      sum += (60 + k.to_i) if score_hash[k] == 3
    end
  end
  
  sum
end

def flush(hand)
  return true if hand.length == 6 && hand.has_value?(5)
end

def straight(hand)
  return true if hand[4] - hand[0] == 4
end

puts sanitize(data)



# If two players have the same ranked hands then the rank made up of the highest value wins; 
# for example, a pair of eights beats a pair of fives (see example 1 below). 
# But if two ranks tie, for example, both players have a pair of queens, 
# then highest cards in each hand are compared (see example 4 below); 
# if the highest cards tie then the next highest cards are compared, and so on.

# Consider the following five hands dealt to two players:

# Hand    Player 1        Player 2        Winner
# 1   5H 5C 6S 7S KD    2C 3S 8S 8D TD
#     Pair of fives     Pair of eights    Player 2
#    
# 2   5D 8C 9S JS Ace   2C 5C 7D 8S QH     Player 1
#     Highest card Ace  Highest card Queen
#    
# 3   2D 9C AS AH A     3D 6D 7D TD QD      Player 2
#     Three Aces       Flush with Diamonds
#     
# 4   4D 6S 9H QH QC    3D 6D 7H QD queens  Player 1
#     Pair of queens      Pair of Queens
#     Highest card Nine  Highest card Seven
#     
# 5   2H 2D 4C 4D 4S    3C 3D 3S 9S 9D      Player 1
#     Full House        Full House
#   With Three Fours    with Three Threes
#   

# The file, poker.txt, contains one-thousand random hands dealt to two players. 
# Each line of the file contains ten cards (separated by a single space): 
# the first five are Player 1's cards and the last five are Player 2's cards. 
# You can assume that all hands are valid (no invalid characters or repeated cards), 
# each player's hand is in no specific order, and in each hand there is a clear winner.

# How many hands does Player 1 win?




