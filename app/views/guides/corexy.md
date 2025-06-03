# CoreXY 3D Printer

### Tier 1 project (10 points)

Written by: anicetus

Hello! When it comes to 3D printers, CoreXY's are the best. They're the most high-quality and fast, but tend to be much more expensive and complicated than a Cartesian 3D printer.  
But first, here's an overview about the differences between Cartesian and CoreXY 3D printers, and how they work.

## About CoreXY's

A good example of a CoreXY printer is the Bambu Lab X1 series. They look like big cubes, and the Bambu line has an enclosure around the entire thing. A Cartesian printer is like an Ender 3 or a Bambu Lab A1 Mini. Cartesian printers come in two main types: bedslingers and cantilevers. A Ender 3 is a bedslinger (named because it slings the bed back and forth) and a Bambu Lab A1 Mini is a cantilever (because there is only one "pole" supporting the "arm".)

But back to CoreXY's. Here are the pros and cons as compared to a bedslinger or cantilever printer:

### Pros
1. Very fast: The average CoreXY can print at least twice as fast as the average bedslinger. This is because:  
2. Printhead X/Y movement: Only the printhead moves sideways and forwards, instead of the entire bed, and  
3. Dual X/Y motors: Two motors drive the printhead, collaborating together and reducing strain on both. This also improves accuracy.  
4. Bigger: CoreXY's can be built bigger than Cartesians while preserving the same quality (again, due to the bed not moving nearly as much)  
5. Enclosable: Cartesians require much more space than CoreXY's because of the bed that moves back and forth. The size of the CoreXY doesn't depend on the bed position.
### Cons
1. Complicated: CoreXY's require many times the amount of components that Cartesians do, making them more complex to assemble and maintain, let alone design.  
2. Long belt paths: Tensioning CoreXY belts can be difficult, and routing them in your design can be incredibly hard.  
3. Expensive: More components means more price, and since the frame of a CoreXY is a cube instead of just an upside-down T, the frame is much larger.

A CoreXY is no task for the weak of spirit. It will require perserverence, focus, and vigilance. It's going to be really hard sometimes, and you're going to want to quit. But if you stay strong and power through it, you'll be well rewarded. It's gonna take the entire $350, and likely more out of your own pocket, but you'll be left with your _own_ 3D printer. You'll be able to tell people, "I made this!" Besides that, it might get you into MIT :3

But, without further ado, here's how to design your own CoreXY.

(Note: This guide will not be a step-by-step building your own 3D printer, but simply some tips and tricks I learned making [my own](https://github.com/invictus-anic3tus/anicept-vex).

## Step One: Research
Researching parts is at least the second hardest part of making a CoreXY--or any 3D printer for that matter--but very, very important. First you're going to chose what kind of specs you want. Speed, size, enclosure, multi-filament system, etc. If you plan to make some sort of cool gimmick, like an enclosure or a toolhead changer, be prepared to spend a bunch of money out of pocket. As it stands, it'll be difficult enough to make it without any special stuff.

Also note that speed and size are mortal enemies; it's quite difficult to put both in the same machine. For a budget build with the $350 provided by Hack Club, I'd only do one. If you want fast, like 350mm/s or above, I'd recommend a 180x180mm plate. For incredibly fast printing, i.e. 500mm/s or even more, even as small as a 120mm printer would be beneficial. If you couldn't care less about speed but want it to be big enough to make, say, 7" drones, you could make it 400x400mm build size (or bigger!) and only print at around ~100mm/s.

The main reason that speed and size are so exclusivev is stability. If you have a printhead moving the length of a 500x500mm build plate in one second, multiple times in a row, it's going to rattle like crazy. To counter this, you'd need wider aluminum extrusions, making it even more expensive than it was already. A smaller printer has less length for the extrusions to twist or bend, and is thus more stable. For future reference, when I say stablity I don't mean how much the printer shakes or rattles, but how well it keeps its shape.

AliExpress is your friend when researching parts, (sorry Indian people!) and it has plenty of good products. Just make sure (and this is good advice for any project) to always sort by orders. You do _not_ want to be the first--or seventh--order on a product. And if it's possible, always try to order from a well-aged seller, ideally pre-Covid. The best seller for hotends and extruders is [Triangle-Lab](https://trianglelab.net), (sometimes called trianglelabs) and [here's](https://trianglelab.aliexpress.com/store/1101010407) their official store on AliExpress, open since 2015. As far as I know, there aren't any name-brand aluminum extrusions or linear rails, but again just try to find well-rated ones (be sure to check for fake reviews) with many orders. I'd advise against Dollar Express, as the number of orders can be very misleading.

One strategy you might try is buying broken 3D printers off of eBay. People tend to sell them cheap, and you can get an easy heated bed, aluminum extrusions, and more out of it. However if you choose to do it like this, you'll have to center your design around the parts you'll be getting from the seller. For example, the aluminum extrusions in your design will have to be the ones that the broken 3D printer uses. Sometimes this can be a problem, especially since most 3D printers for parts out there are bedslingers with all sorts of different lengths.

Here's a very simple BOM to get you on your feet:  
(Please take this with a giant grain of salt. You'll need to do massive amounts of research for what you have in mind, and I'm 99% sure you won't be using every part I recommend.)

### Printhead
| Part                        | Cost        | Notes                                                                                                                                                      |
|-----------------------------|-------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Hotend                      | $20         | An E3D V6 clone is good for non-high speed printing, otherwise check out the TZ E3/E6                                                                      |
| Extruder                    | $40         | The Orbiter v2 is very good, also the Sherpa Mini                                                                                                          |
| Part cooling fans           | $10         | Please get two 5015's. I'm begging you.                                                                                                                    |
| Heat sink fan               | $3          | 3010 is good for basically everything. If you plan to print super fast maybe 4010.                                                                         |
| Z-Probe                     | $7-$37      | For seven bucks, the PCB Klicky probe is amazing. For more high-quality, check out the GENUINE BLTouch. Never ever ever buy a "3DTouch," it's a fake scam. |
| Printhead Lights (optional) | $5          | There are PCB kits out there, or you can just use some white LEDs and resistors                                                                            |
| **Total**                   | **$85-115** |                                                                                                                                                            |
