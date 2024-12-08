# Battleship Game in MIPS Assembly Language

## Overview
This project implements a two-player Battleship game using MIPS assembly language. The game simulates a 7x7 grid where players strategically place ships and take turns guessing their opponent's ship positions.

## Features
- **MIPS Architecture**: Built using MIPS assembly, executed on the MARS simulator.
- **Interactive Gameplay**: Two-player mode with real-time grid updates.
- **Error Handling**: Validates player inputs for correctness.
- **Game States**:
  - **Setup Phase**: Players place their ships on the grid.
  - **Playing Phase**: Players take turns guessing coordinates to hit opponent ships.
  - **End Game**: The game concludes when one player sinks all opponent ships.

## How to Run
1. Open the MARS simulator.
2. Load the `Battleship.asm` file.
3. Run the program to see the main menu.
4. Follow the on-screen instructions to play the game.

## Rules
1. **Grid Size**: 7x7.
2. **Ship Types**:
   - 3 ships of size 2x1
   - 2 ships of size 3x1
   - 1 ship of size 4x1
3. **Placement Rules**:
   - Ships cannot overlap or touch.
   - Players must input coordinates for each ship during the setup phase.
4. **Gameplay**:
   - Players take turns entering coordinates to attack.
   - Hits and misses are indicated on the grid.

