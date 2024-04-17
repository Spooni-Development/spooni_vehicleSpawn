# 🛞 Vehicle Spawner
Documentation relating to the spooni_vehicleSpawn.

## 1. Installation
spooni_vehicleSpawn works Standalone. 

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

Config.Vehicles = {
    [1] = {
        Model = 'coach4',
        Coords = vector4(2868.16455078125, -1277.342529296875, 46.27022552490234, -0.01608848385512),
        Freeze = true,
    },
    [2] = {
        Model = 'buggy02',
        Coords = vector4(2865.683837890625, -1280.9537353515625, 46.12458801269531, 0.46325546503067),
        Freeze = true,
    },
    [3] = {
        Model = 'cart08',
        Coords = vector4(2863.5400390625, -1283.2271728515625, 46.15234756469726, -0.31786274909973),
        Freeze = true,
    },
    [4] = {
        Model = 'cart07',
        Coords = vector4(2861.540283203125, -1285.509765625, 46.1566047668457, -0.06948190927505),
        Freeze = true,
    },
    [5] = {
        Model = 'cart07',
        Coords = vector4(2859.373291015625, -1287.4688720703125, 46.45942306518555, 0.19907681643962),
        Freeze = true,
    },
    [6] = {
        Model = 'cart03',
        Coords = vector4(2857.141845703125, -1290.582275390625, 46.15568542480469, -0.0461681894958),
        Freeze = true,
    },
    [7] = {
        Model = 'cart01',
        Coords = vector4(2855.06201171875, -1292.9053955078125, 46.20621490478515, 0.02916552685201),
        Freeze = true,
    },
    [8] = {
        Model = 'cart01',
        Coords = vector4(2852.85205078125, -1295.2117919921875, 46.02605438232422, 0.06367810815572),
        Freeze = true,
    },
}
```