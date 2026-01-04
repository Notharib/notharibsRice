import json
import os

with open(f"{os.getenv('HOME')}/.cache/wal/colors.json") as f:
    colourDict: dict = json.load(f)

ringColour: str = colourDict["colors"]["color7"]
keyColour: str = colourDict["colors"]["color8"]
background: str = colourDict["special"]["background"]
foreground: str = colourDict["special"]["foreground"]

with open(f"{os.getenv('HOME')}/.cache/wal/colors-sway", "a") as f:
    f.write(
        f"\nset $bgpure {background[1:]}\nset $fgpure {foreground[1:]}\nset $c7Pure {ringColour[1:]}\nset $c8Pure {keyColour[1:]}"
    )
