# Conway's Game of Life

![game of life example](../public/Gospers_glider_gun.gif)

The Game of life is a zero player game developed in the 70s by John Horton Conway. Check out the [wikipedia article](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) for a full description.
The evolving state of the game is determined by the initial configuration - some configurations become infinitely evolving constellations, others eventually evolve into a stable patterns, whilst others die off completely.
It is commonly used as a tech test as it can be solved in many different ways that clearly show the level of the programmer.

### The Brief

The rules are as follows:

* The game evolves in turns, commonly known as 'ticks'.
* All changes occur at the same time.
* Any live cell with 2 or 3 live neighbours survives until next tick.
* Any live cell with less than 2 live neighbours dies (underpopulation).
* Any live cell with more than 3 live neighbours dies (overpopulation).
* Any dead cell with exactly 3 neighbours becomes a live cell (reproduction).

Write code that is capable of calculating each new generation, given a starter board. Although you don't have to build a visualisation tool to be able to see the evolution, it should be easy to extend the program to add on a web or command line ui.


# Approach

## Pre starting notes
It seems that you will need to run through the grid and calculate how many neighbours each tile has, making sure you don't update
the grid until you know what the next generation will be, as any changes will make the calculation of the new grid incorrect. So maybe two 2d arrays are needed, one for the current generation and one for the generation that will soon replace the current.

I know I will need methods such as calculateneighbors() and printgrid() so I will test drive those methods into existence once I have the variables in the game sorted.