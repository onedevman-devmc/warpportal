# Warp Portal

Warp Portal is a simple datapack that allows players to create their own teleportation portals (with a nether portal style).

## Installation

To install the datapack, download one of its [releases](./releases) and copy it into the `datapacks` directory in your world directory.
For multiplayer servers, follow the same procedure.

## Uninstallation

To uninstall the datapack completely, a function is available and you just have to run it : `function warpportal:uninstall`

## Usage

You can open one portal with a `lodestone`, two `observers`, a `decorated pot`, a `compass` pointing on a lodestone of your choice (the same in two copies, one for each linked portal) and an `inflamed arrow` (so maybe a bow with flame).

1. The lodestone and the observers are completely decorative. The lodestone being a little expansive to craft, it balances the gameplay (a warp portal remains a little bit overkill after all).

2. the decorated pot is, to date, the only one-slot container and is so useful to store the key which links the two portals : the tracked compass points to the coordinates of your choice (by placing a lodestone where you want in the world), so we can imagine that these coordinates are pretty a secure way to create private key and use it to identify two warp portals as linked. This system allows to create redstone systems to switch between linking keys in real-time, so you can switch between destinations on the same portal.

3. the inflamed arrow is used to open the portal : it allows to open portals through redstone and also close them, because they are composed of the same portal block/frame than nether portals.

## Portals

### Core structure

The portal core structure is simple : a lodestone between two observers pointing on it and a pot under storing the compass private key.

### Opening

A warp portal can be opened by throwing an inflamed arrow on top of the lodestone if the core structure is correct

### Closing

A warp portal can be closed by breaking its portal frame blocks (i.e. using dispenser placing water).

### Abilities

1. A portal can teleport any kind of entity
    
2. The motion is conserved (some known bugs about it remains to be fixed).

### Teleportation behavior

1. The portal destination is on top of the linked portal lodestone, so there's no direct link between portal frames (to expansive in memory to be implemented at this point).

2. The entities yaw is conserved : when linked portals haven't the same direction/axis, yaw is conserved by rotating entities 90° more to the right (and respectively the left) when their yaw is more to the right (resp. left). Obviously, no yaw conservation fix is to apply when linked portals have the same direction/axis.

3. when an entity is teleported, the destination portal chunk is force-loaded for at least 10 seconds like nether portals. That means you can create the same chunk loading systems than with nether portals.

### Aesthetic & ambient aspect
1. portal shape is completely customizable and doesn't require specific block type (unlike nether portal with rectangular obsidian bounds).

2. ambient sound is played, reminding deep space (maybe ? I hope you'll appreciate & agree x) )

3. teleportation sound is also played (keeping the same mood than the ambient sound), at the origin portal and the destination portal and both sounds are a little bit differents.