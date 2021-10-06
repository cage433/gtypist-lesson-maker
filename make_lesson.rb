#!/usr/bin/ruby -w
#
require 'optparse'
require 'ostruct'

def parse_args(args)
  options = OpenStruct.new
  options.num_lines = 3
  options.max_word_length = 6
  options.num_lessons = 2

  opt_parser = OptionParser.new do |opts|
    opts.on("-t", "--text TEXT", "Text to randomly generate words from") do |text|
      options.text = text
    end

    opts.on("-l", "--lines [N]", Integer, "Number of lines of typing (default 3)") do |n|
      options.num_lines = n
    end

    opts.on("-w", "--max-word-length [N]", Integer, "Max word length (default 6)") do |w|
      options.max_word_length = w
    end

    opts.on("-n", "--num-lessons [N]", Integer, "Number of lessons (default 2)") do |n|
      options.num_lessons = n
    end

  end

  opt_parser.parse(args)
  options
end

$options = parse_args(ARGV)

raise "Missing text argument, see usage" if $options.text.nil?

$rng = Random.new()

if not $options.text
  puts(opt_parser)
  exit(-1)
end

def random_word()
  min_length = $options.max_word_length * 2 / 3
  len = min_length + $rng.rand($options.max_word_length - min_length)
  ($options.text * 5).split("").shuffle(random: $rng).join.slice(0, len)
end

def random_line()
  words = []
  while words.collect { |w| w.size }.sum < 80
    words.push(random_word())
  end
  words.join(" ")
end

def random_lesson()
  lines = Array.new($options.num_lines, random_line).collect { |l| ":" + l }
  "D" + lines.join("\n ")

end
lessons = Array.new($options.num_lessons, random_lesson)
puts lessons.join("\n\n")
