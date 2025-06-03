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

Here's a very simple BOM and explanation to get you on your feet:  
(Please take this with a giant grain of salt. You'll need to do massive amounts of research for what you have in mind, and I'm 99% sure you won't be using every part I recommend.)

### Printhead
| Part                        | Cost        | Notes                                                                                                                                                      |
|-----------------------------|-------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Hotend                      | $20         | An E3D V6 clone is good for non-high-speed printing, otherwise check out the TZ E6/V6                                                                      |
| Extruder                    | $40         | The Orbiter v2 is very good, also the Sherpa Mini                                                                                                          |
| Part cooling fans           | $10         | Please get two 5015's. I'm begging you.                                                                                                                    |
| Heat sink fan               | $3          | 3010 is good for basically everything. If you plan to print super fast maybe 4010.                                                                         |
| Z-Probe                     | $7-$37      | For seven bucks, the PCB Klicky probe is amazing. For more high-quality, check out the GENUINE BLTouch. Never ever ever buy a "3DTouch," it's a fake scam. |
| Printhead Lights (optional) | $5          | There are PCB kits out there, or you can just use some white LEDs and resistors                                                                            |
| **Total**                   | **$85-115** |                                                                                                                                            

I personally would go with the Klicky probe. The way it works is it's a tiny microswitch with a dock at the back of the printer. The printhead moves back to the dock and picks it up with magnets, which also convey the voltage + and - (for an LED) and signal for button presses. The microswitch sticks out from the printhead, and acts as a Z-probe and as the Z-limit switch. The printhead then docks the Klicky, so that the nozzle isn't blocked anymore, and goes on to printing. It's only 7 bucks as compared to the BLTouch's $30-$40 price mark, making it great for its price.

The reason a lot of people choose BLTouch instead is that it's plug and play with most mainboards, unlike the Klicky which needs some fancy wiring, and instead of having to dock it, you just fasten it to the printhead and it automatically pushes out a little probing stick every time you need to probe. It's very very handy, but beware: knockoffs abound. If you get a BLTouch, you _must_ get one that says "BLTouch" on the side. Not "3DTouch," "BLTouch"!! People have done tests, and 3DTouches are the least accurate, most worthless probes you can buy. The list of authorized sellers and legitimate BLTouches is at their website, [https://antclabs.com/](https://antclabs.com/).

In my own CoreXY design, I failed to put two 5015 blower fans for the part cooling. This rookie mistake is costing me now, due to a lack of cooling with dual 4010 blowers. Dual 5015s are more than enough for any printer.

The hotend is a crucial component, and you should dedicate much time to researching one. One of the most common is an E3D V6 clone (the original is too expensive and the clones are just as good), which is capable of a flow rate of up to 15mm<sup>3</sup>/s. This equates to approximately 180mm/s printing speed with 0.4mm width and 0.2mm layer height, or 120mm/s with 0.6mm line width and 0.2mm layer height.
```
Tip:
Print speed = (flow rate ÷ line width) ÷ layer height
e.g. (15 ÷ 0.4) ÷ 0.2 ≈ 180
or (15 ÷ 0.6) ÷ 0.3 ≈ 125
```
This is decent, but not very fast. If this speed is OK with you, go ahead! The E3D V6 is a favorite among many, and you'll be in good company.  
But I know one thing for sure: it wasn't fast enough for me.

I used the TZ E3 2.0, a great (and very small!) hotend that the manufacturers claim can achieve 33mm<sup>3</sup>/s, meaning it likely gets around 30 with high-flow filament and a good extruder. Using the formula above, that equates to 375mm/s with 0.4 line width and 0.2 height. That's definitely better! The TZ E3 2.0's brother, the TZ V6 2.0, has the same specs but boasts faster cooling with a cylindrical heatsink instead of the E3's rectangular one.

Extruders, while a fundamental part of any printer, aren't quite as nitpicky. The Orbiter line is quite good, with their most recent being the Orbiter v2.5. In my opinion, v2.0 is plenty good enough for any scenario, and v1.5 should work well for slower printers. Many people feel, however, that the Orbiters are overpriced. The v2.0 I bought for my printer cost $40 and some change, which might be hard on a tight budget. In that case, you might check out the Sherpa Mini, beloved by many. To be clear, I haven't done very much research on the Sherpa line, so exactly what it can do is outside my scope.

Printhead lights, while totally optional, can help illuminate your prints, whether for timelapses or simply for checking on prints. Vorons use these, in the form of small PCBs mounted at an angle to the hotend. Alternatively, you can simply wire small LED bulbs and add resistors so that you can wire them directly to your 24V output.

### Gantry and Kinematics
Keep in mind, the gantry can be very different across printers. The Voron 2.4, for example, uses a gantry with an open front, and an intriguing belt path. The way you route your belts is totally up to you! This BOM goes over the parts I used in mine, which follows [this](https://reprap.org/forum/thumbcache/8ae/885/da4/f6b/336/1c4/d2c/8c7/34d/c71/d5_800x400.png) diagram more or less.

| **Part**               | **Cost**      | **Notes**                                             |
|------------------------|---------------|-------------------------------------------------------|
| Toothed Idlers (4 pcs) | $5            | The teeth help route the toothed side of the belts    |
| Smooth Idlers (2 pcs)  | $3            | To route the smooth side of the belt                  |
| 2GT Belt               | $30           | Check the length needed after your design is done.    |
| Linear rails/rods      | $15-$60       | More on these down below                              |
| Pulleys                | $5            | These attach to your motors to pull the belts         |
| X/Y Motors             | $25           | Motors are a very tough part to research. More below. |
| **Total**              | **$98 - 155** |                                                       |

All of your idlers and pulleys should be 20T, except for the pulleys used in a belt drive Z system (one motor, three screws,) which, if you should choose it, should be 40T. (The T just means how many teeth it has; the most common are 16T and 20T. 20T are better for gripping the belts.)

The belt should be either a genuine Gates brand belt or a POWGE brand belt from AliExpress. POWGE is the most common choice, and they make pretty good-quality stuff. 6mm is fine for most builds, but if you're going to go fast (300mm/s or more I'd say) you might want to look at 9mm belts. The idlers and pulleys should be 7mm or 10mm wide respectively.

Linear rails vs rods are a tough one. Rails can get very expensive, but they're very smooth and make zero noise.
