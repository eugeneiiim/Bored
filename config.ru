ACTIVITIES_TEXT = <<EOS
Prostitutes.
Stick fighting.
Mentor a child.
Arm wrestling.
Chase pigeons and squirrels.
Draw a picture of your dad.
Jump.
Tape up your face to make a funny face.
Piggy back rides.
Gay kissing chicken.
Magic the gathering.
Grease up yourself and slide around an empty pool.
Sing about your life.
Slap each other silly.
Back massage circle.
Try to put your head in your armpit.
Just go a little crazy, yeah?
Dig your own grave and lie in it and think about your life choices.
Put a bee on a leash.
Hug a bum.
Put a sausage or suspicious looking mushroom through your fly and snip parts of it off in public.
See how many moth balls you can fit in your body.
Try to confuse a police officer.
Make an onion garden.
Visit the grave of Jerry Louis.
Reminisce about 'Nam.
Cast a spell.
Make fun of xkcd.
Shine a laser pointer on a couple making out so they know someone is watching them.
Two guys hold a skipping rope between them and run up the street until you get too tired.
EOS

ACTIVITIES = ACTIVITIES_TEXT.split("\n")

run (lambda do |env|
  i = rand ACTIVITIES.size
  [200, {'Content-Type'=>'text/plain'}, StringIO.new(ACTIVITIES[i])]
end)
