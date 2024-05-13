# 🛞 Vehicle Spawner
Documentation relating to the spooni_vehicleSpawn.

## 1. Installation
spooni_vehicleSpawn works only with VORP, RSG, QBR, RPX & RedEM. 

- Download the resource
  - On [Github](https://github.com/Spooni-Development/spooni_vehicleSpawn)
- Drag and drop the resource into your resources folder
  - `spooni_vehicleSpawn`
- Add this ensure in your server.cfg
  - `ensure spooni_vehicleSpawn`
- At the end
  - Restart the server

If you have any problems, you can always open a ticket in the [Spooni Discord](https://discord.gg/spooni).

## 2. Usage
This tool allows you to spawn vehicles on the map. 

## 3. For developers
```lua
Config = {}

Config.DevMode = true
Config.Framework = 'vorp' -- vorp, rsg, qbr, redem

Config.Vehicles = {
    [1] = {
        Model = "coach2",
        Coords = vector4(2858.03466796875, -1273.0557861328125, 46.19336700439453, 180),
        Freeze = true,
    },
    [2] = {
        Model = "coach3",
        Coords = vector4(2855.201171875, -1275.8800048828125, 46.23566055297851, 176),
        Freeze = true,
    },
    [3] = {
        Model = "chuckwagon000x",
        Coords = vector4(2852.521728515625, -1278.7496337890625, 46.33550262451172, 174),
        Freeze = true,
    },
    [4] = {
        Model = "wagon03x",
        Coords = vector4(2850.109375, -1282.364990234375, 46.40999984741211, 178),
        Freeze = true,
    },
    [5] = {
        Model = "cart06",
        Coords = vector4(2847.41845703125, -1285.7510986328125, 46.54072189331055, 8),
        Freeze = true,
    },
    [6] = {
        Model = "cart05",
        Coords = vector4(2845.089599609375, -1287.78076171875, 46.12346649169922, 12),
        Freeze = true,
    },
    [7] = {
        Model = "cart02",
        Coords = vector4(2852.852294921875, -1295.19677734375, 46.21446990966797, 7),
        Freeze = true,
    },
    [8] = {
        Model = "cart01",
        Coords = vector4(2855.060791015625, -1292.98828125, 46.22467422485351, 7),
        Freeze = true,
    },
    [9] = {
        Model = "cart03",
        Coords = vector4(2857.1435546875, -1290.5640869140625, 46.17642211914062, 7),
        Freeze = true,
    },
    [10] = {
        Model = "cart04",
        Coords = vector4(2859.374267578125, -1287.492919921875, 46.64240264892578, 7),
        Freeze = true,
    },
    [11] = {
        Model = "cart07",
        Coords = vector4(2861.5439453125, -1285.492431640625, 46.1851921081543, 7),
        Freeze = true,
    },
    [12] = {
        Model = "cart08",
        Coords = vector4(2863.549560546875, -1283.215576171875, 46.17266082763672, 7),
        Freeze = true,
    },
    [13] = {
        Model = "buggy02",
        Coords = vector4(2865.695068359375, -1280.9420166015625, 46.1500015258789, 7),
        Freeze = true,
    },
    [14] = {
        Model = "coach6",
        Coords = vector4(2860.536865234375, -1270.8538818359375, 46.00592422485351, 7),
        Freeze = true,
    },
    [15] = {
        Model = "coach4",
        Coords = vector4(2868.17529296875, -1277.35888671875, 46.27145767211914, 7),
        Freeze = true,
    },
}
```