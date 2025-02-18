# dndWorldTracker
A Dungeons and Dragons campaign manager using smalltalk that keeps tracks of associations between NPCs, reputations amongst societies, world events, and everything else that makes a D&amp;D world feel real.

## Installation

```st
Metacello new
	repository: 'github://ayechanst/dndWorldTracker:main/src';
	baseline: 'DndWorldTracker';
	load
```

## Load Lepiter

After installing with Metacello, you will be able to execute

```
#BaselineOfDndWorldTracker asClass loadLepiter
```
