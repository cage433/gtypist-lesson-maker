#!/usr/bin/ruby -w
#
require 'optparse'
require 'ostruct'

def parse_args(args)
  options = OpenStruct.new
  options.num_lines = 3
  options.max_word_length = 6
  options.text = "lskdjflksjdlkfj"

  opt_parser = OptionParser.new do |opts|
    opts.on("-l", "--lines [N]", Integer, "Number of lines of typing") do |n|
      options.num_lines = n
    end
    opts.on("-t", "--text TEXT", "Text to randomly generate words from") do |text|
      options.text = text
    end

    opts.on("-w", "--max-word-length [N]", Integer, "Max word length") do |w|
      options.max_word_length = w
    end

  end

  opt_parser.parse(args)
  options
end

$options = parse_args(ARGV)

$rng = Random.new()

def random_word()
  min_length = $options.max_word_length / 2
  len = min_length + $rng.rand($options.max_word_length - min_length)
  ($options.text * 5).split("").shuffle(random: $rng).join.slice(0, len)
end

def random_line()
  line = ""
  while line.size < 80
    next_word = random_word()
    if line == ""
      line = next_word
    else
      line += " "
      line += next_word
    end
  end
  line
end

(0...$options.num_lines).each do |i|
  if i == 0
    full_line = "D:" + random_line()
  else
    full_line = " :" + random_line()
  end
  puts(full_line)
end
