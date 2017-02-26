#!/usr/local/bin/fontforge
# Quick and dirty hack: converts a font to truetype (.ttf)
Print("Opening "+$1);
Open($1);
Print("Saving "+$2:r+".woff");
Generate($2:r+".woff");
Quit(0);
