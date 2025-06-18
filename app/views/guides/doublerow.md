# Double Row Keyboards!
A term I completely made up.

But a startegy that works really well if you want to make large keyboards with lots of functions but dont want to use an io expander.
My name is Taran and I am here to teach you about a cool technique that even I don't even know how I thought up of.

## Wtf am I talking about?
So say you have a 80% keyboard with 2 encoders, an oled, and RGB. That would normally take up 23(17x6) + 4(2 per encoder) + 2(oled) + 1(RGB)

That totals to 30 pins.

Lets take a look at the raspberry pi pico.

![pico](//app/assets/images/pico-pinout.svg)

Wait a minute, the Pico only has 26 General Purpose Input Output(GPIO) pins!

*Greiving princess voice* Oh whatever could I do, I want to put all this in my keyboard but the pico doesnt give me enough pins to do it. Oh in what way could I possibly include all these, without going through the pain of an io expander.

Wait a minute

Look at how much pins the matrix takes up.

Is there any way to possibly reduce how many pins it takes?

Lets go back to maths basics(holy crap, maths being used in real life)

We are doing 2d shapes and you have a quadrilateral with a set area of lets say 64(how many switches we want).

What is the shape we can make that keeps this area but reduces the perimeter to a minimum(our pins)?

Thats right, an 8x8 square.

But a keyboard is nowhere near a square. if we go to our previous example we had a 17x6 matrix. How on earth do we turn this into a square while keeping the routing clean?

Well thats what this guide is for!

Before we get into this, no I do not know what drugs I was on when I thought of this and no I do not want to google if it already exists because I am delulu and want to convince myself that I invented it.

## The Beginning

