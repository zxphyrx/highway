# How to design your own footprint and symbol for KiCad!!
by @espcaa

Who never encountered the eternal component that didn't have a footprint or symbol in KiCad? That's why i'm trying to teach you how to design your owns today!
To do this, i'll use [this button](https://lcsc.com/product-detail/Pushbutton-Switches_HanElectricity-KFC585875-W_C22459507.html?s_z=n_KFC585875) as an example, but you can use any component you want!

## Step 1: Find the datasheet

If you don't have any footprint or symbol to refer to, the first step is to find the datasheet where you'll likely also find the measurements of the component. In this case, the datasheet can be easily found because this is LCSC and is even in english!!
See it [here](https://lcsc.com/datasheet/lcsc_datasheet_2410121553_HanElectricity-KFC585875-W_C22459507.pdf).

## Step 2: Create the symbol

To create the symbol, you can use the KiCad Symbol Editor. Open it like this: \
<img src="https://files.catbox.moe/hwi0si.png" width="400">

Then, create a new library where you'll store that custom symbol. You can do this by clicking on the "File" menu and selecting "New Library". \
<img src="https://files.catbox.moe/epe6d2.png" width="400">

Select project and continue \
<img src="https://files.catbox.moe/82rkvj.png" width="400">

Name it however you want and save it in the project folder

Now you're ready to start creating the symbol! Click on the "Create Symbol" button in the "File" menu or use the shortcut Ctrl+N. \
Then just change the name to whatever you want, in this case, "button" (please name yours better sob) and click "OK". (don't touch at the other values  it should be fine for now) \
<img src="https://files.catbox.moe/hjk0le.png" width="400">
