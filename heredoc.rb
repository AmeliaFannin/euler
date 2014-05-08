input = <<HEREDOC
01 02 03
04 5 6
7 8 9
HEREDOC

input.split("\n").each do |line|
  line.split(' ').each do |num|
    puts Integer(num, 10)
  end
end