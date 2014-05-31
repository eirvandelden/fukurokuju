# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

quotes = [
{ quote: "One man's intelligence is like a tree that has been simply stuck in the ground", author: "Yamamoto Tsunetomo", favorite: true },
{ quote: "Science is organised knowledge. Wisdom is organised life", author: "Immanual Kant" },
{ quote: "You yourself, as much as anybody in the entire universe, deserves your love and affection", author: "Buddha" },
{ quote: "The next 30 days are guaranteed to pass, why not use it to do something you’ve always wanted to do?", author: "Matt Cutts" },
{ quote: "There are only two mistakes one can make along the road to truth; not going all the way and not starting", author: "Buddha" },
{ quote: "He who never made a mistake, never made a discovery", author: "Samual Smiles" },
{ quote: "Unforgiving is like take poison, hoping the other person will die", author: "Mark Gungor", favorite: true },
{ quote: "Never waste a minute thinking about people you don't like", author: "Dwight D. Eisenhower", },
{ quote: "DFTBA! \n (Don't Forget to be Awesome)", author: "John Green", favorite: true },
{ quote: "Everything has its beauty, but not everyone sees it", author: "Confucius" },
{ quote: "Amateurs sit and wait for inspiration, the rest of us just get up and go to work", author: "Stephen King", favorite: true }
]

quotes.each do |quote|
    Quote.create( quote ) unless Quote.exists?( quote: quote[ :quote ] )
end