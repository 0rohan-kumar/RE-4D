# RE-4D

> **Category:** Solo Indie Game
>
> *Recursive Execution - 4th Dimension*

A puzzle game made use of the mechanics of time manipulation. We have found that, in addition to the three dimensions that we can access, there is the fourth dimension, TIME. What if we used time to our advantage in order to carry out tasks which are normally impossible?

At every instance when a file is deleted, traces of it still remain.

You take on the role of **RE-4D**, a virus that has been implanted and have only **13 seconds** before the alien antivirus erases you. Each time you fail, that failure becomes part of the following attempt and leaves a ghost which replays your earlier try. The whole game is based on using these ghosts to solve puzzles that could not be solved by yourself.

🎮 **Play in your browser:** https://re-4d.vercel.app

---

> [!NOTE]
> **RE-4D is still being developed.**
>
> This version of the browser is being used as a prototype in order to test the fundamental gameplay mechanism. The aim over the long term is to redevelop the project using Unity, adding more mechanics, a longer campaign, better visuals, and support for levels created by the community.

---

# Story / Lore (1st Draft)

It's the year **2413**.

People have been under slavery for more than two centuries; as their last act of resistance, the scientists developed RE-4D, an AI virus meant for infiltrating the alien network, switching off their defences, and destroying the main memory core.

**The problem?**

The alien antivirus will detect you and delete you after **13 seconds**.

Luckily, deleted code leaves traces.

Each time a run fails it generates another execution backtrace which can then be used on the next run.

---

# Gameplay

All the actions that you take are recorded.

When you die, whether due to time running out or by pressing **Backspace**, the recording reappears as a ghost and plays back all of your exact inputs.

It is possible for ghosts to operate pressure switches, open doors, and interact with the level while you are exploring somewhere else.

The answer doesn't have to be to survive.

There are instances when it dies in the correct place.

## Ghost Rules

- Maximum **4 active ghosts**
- New ghosts replace the oldest recording
- Every ghost can interact with switches just like the player

---

# Controls

| Key | Action |
|------|--------|
| WASD / Arrow Keys | Move |
| Backspace | Self-destruct |
| Swipe | Mobile controls |

---

# Levels

| # | Name | Mechanics |
|--:|------|-----------|
| 0 | The Corridor | Tutorial |
| 1 | The Fork | Two switches |
| 2 | The Grid | Multiple switch types |
| 3 | The Labyrinth | Toggle switches |
| 4 | The Shaft | Mixed mechanics |
| 5 | The Nexus | Larger layouts |
| 6 | The Spiral | Timing-heavy |
| 7 | The Core | Final level |

## Switch Types

- Only active for a moment when something is standing on it.
- Can only be activated once.
- Switches state each time it is touched.

---

# Inspiration

A major source of inspiration for RE-4D was portal by valve

Portal proved that a complete puzzle game could be constructed on the basis of a single mechanic; rather than constantly adding new abilities, each level looked at a different possibility based on that same fundamental concept.

RE-4D takes a comparable approach.

The only thing is that each time an attempt fails it becomes another ghost/echo.

All the rest consists of finding new ways to apply that single rule.

---

# Why WebGL?

This is not meant to be the final version of RE-4D.

I used WebGL since it allowed me to quickly prototype ideas without having to commit to a full game engine; the browser version is primarily intended for testing mechanics, level design, and obtaining feedback.

When the way the game works is satisfactory, my intention will be to redevelop all of it in Unity as a bigger standalone game.

---

# Built With

| Part | Technology |
|------|------------|
| Rendering | Raw WebGL + custom shaders |
| Gameplay | Vanilla JavaScript |
| Audio | jsfxr |
| Desktop Build | Electron |
| Hosting | Vercel |

Some things I experimented with while building it:

- Animated hex-grid floor shader
- Player spotlight
- Distance fog
- Camera interpolation
- Fade transitions
- Procedural sound generation

No game engine was used.

---

# Dev Log

## Day 1 - Project Skeleton

I set up the Node.js project, made an empty `index.html` file, and then began experimenting with WebGL.

The first working title was `xx142-b2.exe`.

---

## Day 2 - UI & HUD

Constructed the terminal-style interface, the intro sequence, and the HUD.

Although the game didn't really exist, I still wanted the atmosphere to be present right from the start.

---

## Day 3 - WebGL Renderer

Built the rendering pipeline from the ground up.

Added:

- Custom shaders
- Animated hex floor
- Depth fog
- Camera interpolation

The first 3D scene render probably represented the project's greatest achievement.

---

## Day 4 - Gameplay

Implemented:

- Collision detection
- Level loading
- Doors
- Pressure switches
- The 13-second timer
- Ghost recording and playback

I've also incorporated jsfxr in order to generate all the sound effects procedurally.

It was on the first day that it actually started to feel like a game.

---

## Day 5 - Desktop Build

I wrapped the browser version using Electron so that it could function as a native Windows application.

---

## Day 6 - First Playable Build

We renamed the project from `xx142-b2.exe` to **RE-4D**.

I sorted out the code, prepared the documentation, deployed it to Vercel, and released the first playable version.

---

# Roadmap

The next important feature is the inclusion of a level editor.

The aim is for the players to make their own puzzles, publish them by using a seed ID, and then compete to achieve the fastest completion times.

Planned features:

- Visual level editor
- Shareable level IDs
- Community puzzle browser
- Online leaderboards
- Ghost replays from the fastest players

---

# Project Structure

```text
RE-4D/
├── index.html      # Handles rendering and gameplay
├── main.js         # Electron entry point
├── package.json
├── vercel.json
├── .gitignore
└── PACKAGING/
````

The majority of the game is currently contained in `index.html`.

At first it was just a simple experiment, but it then developed into the prototype that you are playing nowadays.

---

# Running Locally

Copy the repository and then either open `index.html` in any web browser that has WebGL support or run the Electron version.

```bash
npm install
npm start
```

To package the Windows build:

```bash
npx electron-packager . RE-4D --platform=win32 --arch=ia32
```

You can play it in your browser at:

https://re-4d.vercel.app

---

# Why I Made This

I wanted to find out how far a puzzle game could proceed by using just one mechanic.

Instead of giving the player more abilities, every new level asks them to think differently about the same rule:

> **You are your own team.**

This is the first time I have tried to look into that idea.

---

## With love,

**Rohan**

https://roh1.vercel.app/

---

# AI Usage Disclaimer

The code was produced by me.

AI was used only for assistance with formatting, debugging, and brainstorming.

```
```
