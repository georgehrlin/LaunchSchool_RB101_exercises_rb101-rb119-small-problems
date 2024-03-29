require "yaml"
sentences = YAML.load_file("7_madlibs.yml")

print 'Enter a noun: '
noun = gets.chomp
print 'Enter a verb: '
verb = gets.chomp
print 'Enter an adjective: '
adjective = gets.chomp
print 'Enter an adverb: '
adverb = gets.chomp

puts format(sentences.sample,
            noun: noun,
            verb: verb,
            adjective: adjective,
            adverb: adverb)