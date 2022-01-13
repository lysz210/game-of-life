# Conway's Game of Life.

The universe of the Game of Life is an infinite, two-dimensional orthogonal grid of square
cells, each of which is in one of two possible states, alive or dead, (or populated and
unpopulated, respectively). Every cell interacts with its eight neighbours, which are the
cells that are horizontally, vertically, or diagonally adjacent. At each step in time, the
following transitions occur:

* Any live cell with two or three neighbors survives.
* Any dead cell with three live neighbors becomes a live cell.
* All other live cells die in the next generation. Similarly, all other dead cells stay dead.

The initial pattern constitutes the seed of the system. The first generation is created by
applying the above rules simultaneously to every cell in the seed; births and deaths occur
simultaneously, and the discrete moment at which this happens is sometimes called a tick.
Each generation is a pure function of the preceding one. The rules continue to be applied
repeatedly to create further generations.

## Project structure

The project is composed of this main container and 2 submodules:

* **game-of-life-client** he GUI
* **game-of-life-server** the api for processing

### Infinite Universe
To make the universe virtually infinite the server will handle just cell based processing to eliminate the request as the limit.

# start the project

First clone this project with recursively to get the serve and client

```bash
git clone --recursive <this project url>
```

## Docker compose (prefered)
With docker compose you
```
docker-compose up
```

## Separately
The server il a Gradle project you have to build it and the run the generated jar

The client is a node project you can run it with Yarn or Npm

## Open the page
The client is exposed in localhost with port 3000 anche server with 8080. These are the defaults from Nuxtjs and Spring-boot respectivelyl
