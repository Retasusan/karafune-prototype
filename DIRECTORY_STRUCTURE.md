# Directory Structure Documentation

This document outlines the organized directory structure for the karafune-prototype Godot project.

## New Directory Structure

```
karafune-prototype/
├── assets/                 # Asset files directory
│   ├── images/            # Image files (.png, .jpg, etc.)
│   │   ├── りんご.png        # Apple image
│   │   ├── オレンジ.png      # Orange image
│   │   └── 大砲.png         # Cannon image
│   ├── sounds/            # Audio files (.wav, .ogg, etc.)
│   └── fonts/             # Font files (.ttf, .otf, etc.)
├── scenes/                # Scene files (.tscn)
│   ├── Main.tscn          # Main game scene
│   ├── Player.tscn        # Player character scene
│   ├── Apple.tscn         # Apple fruit scene
│   ├── Orange.tscn        # Orange fruit scene
│   ├── ApplePreview.tscn  # Apple preview scene
│   ├── OrangePreview.tscn # Orange preview scene
│   └── Bascket.tscn       # Basket scene
├── scripts/               # GDScript files (.gd)
│   ├── Main.gd            # Main game logic
│   ├── Player.gd          # Player controller
│   └── Fruit.gd           # Fruit behavior logic
├── ui/                    # UI-related files
├── config/                # Configuration files (.json, .csv, etc.)
├── addons/                # External plugins and addons
├── project.godot          # Godot project file
└── README.md              # Project documentation
```

## Changes Made

### Files Moved

1. **GDScript files** moved from root to `scripts/`:
   - Main.gd → scripts/Main.gd
   - Player.gd → scripts/Player.gd
   - Fruit.gd → scripts/Fruit.gd

2. **Scene files** moved from root to `scenes/`:
   - Main.tscn → scenes/Main.tscn
   - Player.tscn → scenes/Player.tscn
   - Apple.tscn → scenes/Apple.tscn
   - Orange.tscn → scenes/Orange.tscn
   - ApplePreview.tscn → scenes/ApplePreview.tscn
   - OrangePreview.tscn → scenes/OrangePreview.tscn
   - Bascket.tscn → scenes/Bascket.tscn

3. **Image files** moved from root to `assets/images/`:
   - りんご.png → assets/images/りんご.png
   - オレンジ.png → assets/images/オレンジ.png
   - 大砲.png → assets/images/大砲.png

### References Updated

All file references in `.tscn` files and `.import` files have been updated to reflect the new directory structure:

- Script references: `res://scripts/*.gd`
- Image references: `res://assets/images/*.png`
- Scene references: `res://scenes/*.tscn`

## Benefits

- **Better Organization**: Files are now logically grouped by type and purpose
- **Scalability**: Easy to add new assets, scenes, and scripts in their appropriate directories
- **Team Collaboration**: Clear structure makes it easier for team members to find and organize files
- **Maintainability**: Reduced clutter in the root directory makes the project easier to navigate

## Notes

- All `.uid` files have been moved with their corresponding GDScript files
- All `.import` files have been moved with their corresponding image files and updated with correct paths
- The project maintains full compatibility with Godot's resource system
- Empty directories (ui/, config/, addons/) are ready for future assets