ACTIVITIES_TEXT = <<EOS
prostitutes
stick fighting
mentor a child
arm wrestling
chase pigeons and squirrels
draw a picture of your dad
jump
tape up your face to make a funny face
piggy back rides
gay kissing chicken
magic the gathering
grease up yourself and slide around an empty pool
sing about your life
slap each other silly
back massage circle
try to put your head in your armpit
just go a little crazy, yeah?
dig your own grave and lie in it and think about your life choices
put a bee on a leash
hug a bum
put a sausage or suspicious looking mushroom through your fly and snip parts of it off in public
see how many moth balls you can fit in your body
try to confuse a police officer
make an onion garden
visit the grave of Jerry Louis
reminisce about 'Nam
cast a spell
make fun of xkcd
shine a laser pointer on a couple making out so they know someone is watching them
two guys hold a skipping rope between them and run up the street until you get too tired
EOS

ACTIVITIES = ACTIVITIES_TEXT.split("\n")

run (lambda do |env|
  i = rand ACTIVITIES.size
  [200, {'Content-Type'=>'text/plain'}, StringIO.new(ACTIVITIES[i])]
end)
