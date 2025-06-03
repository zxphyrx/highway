# CoreXY 3D Printer

### Tier 1 project (10 points)

Written by: anicetus

Hello! When it comes to 3D printers, CoreXY's are the best. They're the most high-quality and fast, but tend to be much more expensive and complicated than a Cartesian 3D printer.  
But first, here's an overview about the differences between Cartesian and CoreXY 3D printers, and how they work.

## Safety

3D printers are fire hazards. Their hotends heat very hot, and the beds heat hot on a large surface area. They use a lot of power. Here are _mandatory_ things you must do to ensure that you don't ruin the printer, injure yourself, or start a fire.  
1. Always buy your power supply from a trusted brand. Never ever buy from a no-name or knockoff brand. Mean Well is the best brand on the market and are widely used for their safety and quality.  
2. Never solder AC wire connections. Use spade disconnect connectors for your power inlet and spade terminals for your PSU. More about this later.  
3. Never tin (add a shell of solder around) your wires. Tinning wires is illegal in California and some of Europe because it starts fires. Due to a process called creep, the solder deforms and wires can come loose and start electrical fires. Instead, use ferrules or even just twist the wire before putting it in.  
4. Never modify the PSU. There are capacitors inside that carry enough voltage to kill you. This is not a joke. Never open it unless you know exactly where not to touch it and are wearing electrical gloves.  
5. Quadruple-check all wire connections and make sure everything is tight.  
6. Never leave the 3D printer unattended for long periods of time. The truth is, this is a DIY 3D printer cobbled together by (likely) an amateur. Things can go wrong that you would never expect, and if you don't catch it, you could pay severely.  
7. Use the right size wires. If you use a gauge of wire too low to power your PSU or mainboard, it could start a fire. 14 to 12 AWG (3mm<sup>2</sup> to 2.5mm<sup>2</sup>) is great for your 3D printer. Anything smaller than 16 AWG (~3.3mm<sup>2</sup>) is likely not to work.

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
| Part                        | Cost        | Notes                                                                                                                               |
|-----------------------------|-------------|-------------------------------------------------------------------------------------------------------------------------------------|
| Hotend                      | $20         | An E3D V6 clone is good for non-high-speed printing, otherwise check out the TZ E6/V6                                               |
| Extruder                    | $40         | The Orbiter v2 is very good, also the Sherpa Mini                                                                                   |
| Part cooling fans           | $10         | Please get two 5015's. I'm begging you.                                                                                             |
| Heat sink fan               | $3          | 3010 is good for basically everything. If you plan to print super fast maybe 4010.                                                  |
| Z-Probe                     | $7-$37      | For seven bucks, the PCB Klicky probe is super. For higher quality, check out the BLTouch. Never ever buy a "3DTouch," it's a scam. |
| PTFE Tubing                 | $5          | To route filament to your printhead. Two meters is plenty (with extra in case you mess up)                                          |
| ADXL345                     | $3          | An accelerometer for input shaping                                                                                                  |
| Printhead Lights (optional) | $5          | There are PCB kits out there, or you can just use some white LEDs and resistors                                                     |
| **Total**                   | **$93-123** |                                                                                                                                            

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

I used the TZ E3 2.0, a great (and very small!) hotend that the manufacturers claim can achieve 33mm<sup>3</sup>/s, meaning it likely gets around 30 with high-flow filament and a good extruder. Using the formula above, that equates to 375mm/s with 0.4 line width and 0.2 height. That's definitely better! The TZ E3 2.0's brother, the TZ V6 2.0, has the same specs but boasts faster cooling with a cylindrical heatsink instead of the E3's rectangular one. Additionally, the TZ line can all get up to 300°C. This is great for PLA, PETG, TPU, and others. I have no knowledge about higher-temp hotends. The ones on AliExpress have 40W heaters, so not very fast,

Extruders, while a fundamental part of any printer, aren't quite as nitpicky. The Orbiter line is quite good, with their most recent being the Orbiter v2.5. In my opinion, v2.0 is plenty good enough for any scenario, and v1.5 should work well for slower printers. Many people feel, however, that the Orbiters are overpriced. The v2.0 I bought for my printer cost $40 and some change, which might be hard on a tight budget. In that case, you might check out the Sherpa Mini, beloved by many. To be clear, I haven't done very much research on the Sherpa line, so exactly what it can do is outside my scope.

The ADXL345 is an accelerometer, which just means it tells you how fast you're going in all three directions. It's used for input shaping, a complicated and interesting process that is explained very well [here](https://all3dp.com/2/klipper-input-shaping-simply-explained/).

Printhead lights, while totally optional, can help illuminate your prints, whether for timelapses or simply for checking on prints. Vorons use these, in the form of small PCBs mounted at an angle to the hotend. Alternatively, you can simply wire small LED bulbs and add resistors so that you can wire them directly to your 24V output.

### Gantry and Kinematics
Keep in mind, the gantry can be very different across printers. The Voron 2.4, for example, uses a gantry with an open front, and an intriguing belt path. The way you route your belts is totally up to you! This BOM goes over the parts I used in mine, which follows [this](https://reprap.org/forum/thumbcache/8ae/885/da4/f6b/336/1c4/d2c/8c7/34d/c71/d5_800x400.png) diagram more or less.

| **Part**               | **Cost**      | **Notes**                                             |
|------------------------|---------------|-------------------------------------------------------|
| Toothed Idlers (4 pcs) | $5            | The teeth help route the toothed side of the belts    |
| Smooth Idlers (2 pcs)  | $3            | To route the smooth side of the belt                  |
| 2GT Belt               | $30           | Check the length needed after your design is done.    |
| Linear rails/rods      | $30-$60       | More on these down below                              |
| Pulleys                | $5            | These attach to your motors to pull the belts         |
| X/Y Motors             | $25           | Motors are a very tough part to research. More below. |
| **Total**              | **$98 - 155** |                                                       |

All of your idlers and pulleys should be 20T, except for the pulleys used in a belt drive Z system (one motor, three screws,) which, if you should choose it, should be 40T. (The T just means how many teeth it has; the most common are 16T and 20T. 20T are better for gripping the belts.)

The belt should be either a genuine Gates brand belt or a POWGE brand belt from AliExpress. POWGE is the most common choice, and they make pretty good-quality stuff. 6mm is fine for most builds, but if you're going to go fast (300mm/s or more I'd say) you might want to look at 9mm belts. The idlers and pulleys should be 7mm or 10mm wide respectively.

Linear rails vs rods are a tough one. Rails can get very expensive, but they're very smooth and make zero noise. In hindsight, I could have done rods to make my printer more budget, but rails are realllly satisfying. If you go rods, use 8mm diameter and LM8UU bearings. They're what everybody uses. If you're over budget, you can try buying or 3D printing bushings. Bushings are like bearings, but instead of little balls inside them, they simply have minimal surface area on the rod. They'll wear down faster but are good if you're just substituting until you can afford actual bearings.

Motors are a very hard thing to research, namely for a faster printer. Everybody uses Nema17s, and will thus be the easiest to incorporate into your design. I wish I'd had [this link](https://reprap.org/wiki/NEMA_17_Stepper_motor) when I was researching my motors. It lays out a select few with good specs. If you're printing slower (100-200mm/s) you hardly need to research them at all; any inductance of 4mH or under is fine, and you should have about 44+ Ncm holding torque.

For a 300mm/s printer, an inductance of 2-3mH is better, and a holding torque of 44 or more is still good. Then we get into high-speed CoreXY's. A 400-500mm/s printer should have 55 or more holding torque and max 2.5mH inductance. For incredible speeds like 600mm/s or more, you'll need 60-ish holding torque and very low inductance, like less than 1.5mH. It's in the high-speed world that you'll want higher-voltage stepper motors. Especially when going high accelerations, like 40k or more, 48V or even 60V can be huge. For this, you'll probably need another PSU to power the 60V, as well as a mainboard that has a dedicated motor input for those high voltages. However, it is still possibly to run it at 24V. [This](https://www.youtube.com/watch?v=cjXhLow9jRg) video is worth a watch.

TL;DR: Printing over ~450mm/s is likely to set you ~$120 back in budget.

### Z-Axis
If you're doing a three motor three screw setup, it might look like this:
| **Part**            | **Cost** | **Notes**                                                     |
|---------------------|----------|---------------------------------------------------------------|
| Z-Motors            | $28      | These motors don't need to be very powerful                   |
| Lead screws (3 pcs) | $20      | T8, 4mm or 2mm pitch                                          |
| Linear rods         | $15      | 8 or 16mm diameter                                            |
| Linear bearings     | $10      | Really any 8mm bearings. Some have screw-hole flanges as well |
| Flexible couplers   | $7       | 5mm to 8mm diameter, for connecting motors to screws          |
| **Total**           | **~$80** |                                                               |

Z-motors for a triple Z motor setup don't need to be very powerful, as all three are helping. Keep in mind that you may need either a stepper motor splitter or a mainboard with three synced Z-axis motor outputs, which many do not offer.

Lead screws should always be 8mm in diameter. A smaller pitch means more precise but slower, and 4mm is a great middle ground. I used 2mm pitch (mistake) and it takes forever to move the bed!

There are two types of flexible couplers for the Z-axis: beam couplings (they look a little like springs) and jaw couplings (they usually have little orange flexible pieces inside). When searching for them, just search "flexible coupler [or coupling]" and both types should appear.

For a one-motor, three-screw setup, your BOM might look like this instead:
| **Part**              | **Cost** | **Notes**                                                            |
|-----------------------|----------|----------------------------------------------------------------------|
| Z-Motor               | $20      | This motor should be more powerful to be able to move the entire bed |
| Lead screws (3 pcs)   | $20      | T8, 4mm or 2mm pitch                                                 |
| Linear rods           | $15      | 8 or 16mm diameter                                                   |
| Linear bearings       | $10      | Really any 8mm bearings. Some have screw-hole flanges as well        |
| 5mm Inner Dia. Pulley | $5       | To put on the motor to drive the belt. Should get 40T                |
| 8mm Inner Dia. Pulley | $10      | Need three, one for each screw. Should also be 40T                   |
| **Total**             | **~$80** |                                                                      |

If both come out at the same price, I'd go with three motors and three screws. Far more reliable, and easier to design.

### Electronics

| **Part**                    | **Cost** | **Notes**                                                            |
|-----------------------------|----------|----------------------------------------------------------------------|
| PSU                         | $50      | 450+W should be enough in most cases--get 24V                        |
| Mainboard                   | $30      | For an ordinary printer, the BigTreeTech SKR Mini E3 V3 is great!    |
| Mainboard Fan               | $3       | You don't need to be picky here, anything 4010+ axial is good        |
| Heated Bed                  | $20-40   | Build size heavily influences price                                  |
| Build plate                 | $20      | Most commonly used is textured PEI. Glass is also good.              |
| Power inlet + fuse          | $5       | Make sure that the fuse is 250V. IEC320 C14 is a good size           |
| Power plug                  | $7       | 5-15P to IEC320 C13 is good                                          |
| Spade disconnect connectors | $5       | For connecting wires to the power inlet--never solder!               |
| Spade terminals             | $5       | For connecting wires to and from the PSU                             |
| Ferrules                    | $5       | For connecting wires to and from mainboard                           |
| Ferrule crimper if needed   | $20      | For crimping ferrules                                                |
| **Total**                   | **~$150-190** |                                                                 |

The very best PSU brand is Mean Well. They make the most high-quality ones out there. Never ever buy a knockoff or a sketchy-looking PSU! You could kill yourself. I am not joking.

The most popular mainboard out there is the BigTreeTech SKR Mini E3 V3. It's super powerful, small, and has a ton of features. It's fast and has dual Z motor outputs, for only $30.

I didn't do much research on heated beds, as I just bought mine from Kieran in Hack Club. From what I've seen, however, there are two types: the metal types you see on commercial printers and silicone bed plates. Silicone ones are orange and look flexible, while the metal ones have a black underside. I don't know much else about these, unfortunately. The build plate is relatively easy. The tried-and-true type is textured PEI coated, with a sort of grainy appearance. If you don't like that graininess, you might check out glass or dual-sided textured PEI+PEO. The one I bought had PEI on one side and PEO on the other. PEO is a smooth, shiny coating usually engraved with reflective designs that imprint onto your parts.

Never solder AC voltage. It's dangerous and unreliable. Instead, use spade disconnect connectors, which grip tightly onto the pins on the back of the power inlet. Before buying, make sure that the pins on your inlet will fit in the connectors. Similarly, spade terminals look like forks and grab onto the screw terminals on your PSU. Again, make sure these fit before buying.

Ferrules, while optional, can be very helpful. I didn't get them due to budget problems, but they are recommended by basically everybody.

But if you cannot use ferrules, _never ever tin your wires._ Over time and under the stress of the terminals on your mainboard, the solder on the tinned wires will begin to crack and deform. If this continues long enough, the solder can fully come off the wire, the wire can come out, and 24V at 20A directly from your PSU could short on the mainboard. Not only will your 3D printer be ruined, it could easily start an electrical fire. The funny thing about electrical fires is that, unlike regular fires, they can't be put out by simply extinguishing the heat. As long as the wire is shorting, it has more than enough fuel and heat to just keep burning.

[This](https://www.reddit.com/r/ender3/comments/nbdd99/friendly_reminder_check_your_3d_printer_for/) is a great post about tinned wires on a 3D printer (reddit warning lol)

