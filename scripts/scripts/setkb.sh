#!/usr/bin/env python

import os.path
import colorsys
import random
import time
import pywal

from openrazer.client import DeviceManager
from openrazer.client import constants as razer_constants

# Create a DeviceManager. This is used to get specific devices
device_manager = DeviceManager()

print("Found {} Razer devices".format(len(device_manager.devices)))
print()

wp_file= os.path.expanduser("~/.cache/wal/wal");
with open(wp_file, 'r') as file:
    wp = file.read().replace('\n', '')

# Wal stuff
def magic(s):
    s = s.lstrip("#")
    return tuple(int(s[i:i+2], 16) for i in (0, 2 ,4))

wal_colors = list(map(magic, list(pywal.colors.get(wp, False, "colorz", os.path.expanduser("~/.cache/wal/keys"), 0.5)["colors"].values())))

print("wal colors: {}".format(wal_colors))

# Remove pure black
if (0, 0, 0) in wal_colors:
    wal_colors.remove((0, 0, 0))

# Remove pure white
if (255, 255, 255) in wal_colors:
    wal_colors.remove((255, 255, 255))

# Disable daemon effect syncing.
# Without this, the daemon will try to set the lighting effect to every device.
device_manager.sync_effects = False

# Helper function to generate interesting colors
def random_color():
    color = random.choice(wal_colors)
    return color

# Set random colors for each zone of each device
for device in device_manager.devices:
    rows, cols = device.fx.advanced.rows, device.fx.advanced.cols

    for row in range(rows):

        for col in range(cols):
            rc = random_color()
            device.fx.advanced.matrix[row, col] = rc

    device.fx.advanced.draw()
