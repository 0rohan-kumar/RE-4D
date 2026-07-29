# RE-4D
> category : solo indie game
> *Recursive Execution — 4th Dimension*

A puzzle game based on the mechanics of time manipulation.
We have studied that apart from the 3 dimensions we can access there is the 4th dimension TIME.
what if we used time to our advantage to do tasks normally impossible?

Whenever a file is deleted..its trace remains

You play as **RE-4D**, an implanted virus with only **13 seconds** before the alien antivirus wipes you out. Every failed run becomes part of the next one, leaving behind a ghost that replays your previous attempt. The entire game revolves around using those ghosts to solve puzzles that would be impossible alone.

🎮 **Play in your browser:** https://re-4d.vercel.app

---

> [!NOTE]
> **RE-4D is still a work in progress.**
>
> This browser version exists as a prototype to test the core gameplay mechanic. The long-term goal is to rebuild the project in Unity with more mechanics, a longer campaign, improved visuals, and support for community-made levels.

---

## Story/Lore (1st draft)

It's the year **2413**.

Humanity has been enslaved for over two centuries. As a final act of resistance, scientists created **RE-4D**—an AI virus designed to infiltrate the alien network, disable their defenses, and destroy the central memory core.

The problem?

The alien antivirus detects and deletes you after **13 seconds**.

Fortunately, deleted code leaves traces.

Every failed attempt becomes another execution backtrace you can use on the next run.

---

## Gameplay

Every movement you make is recorded.

When you die—either by running out of time or pressing **Backspace**—that recording comes back as a ghost, replaying your exact inputs.

Ghosts can hold pressure switches, open doors, and interact with the level while you explore somewhere else.

Sometimes the solution isn't surviving.

Sometimes it's dying in the right place.

### Ghost Rules

* Maximum **4 active ghosts**
* New ghosts replace the oldest recording
* Every ghost can interact with switches just like the player

---

## Controls

| Key                   | Action          |
| --------------------- | --------------- |
| **WASD / Arrow Keys** | Move            |
| **Backspace**         | Self-destruct   |
| **Swipe**             | Mobile controls |

---

## Levels

|  # | Name          | Mechanics             |
| -: | ------------- | --------------------- |
|  0 | The Corridor  | Tutorial              |
|  1 | The Fork      | Two switches          |
|  2 | The Grid      | Multiple switch types |
|  3 | The Labyrinth | Toggle switches       |
|  4 | The Shaft     | Mixed mechanics       |
|  5 | The Nexus     | Larger layouts        |
|  6 | The Spiral    | Timing-heavy          |
|  7 | The Core      | Final level           |

### Switch Types

* **Momentary** — Active only while something stands on it.
* **Single** — Can only be activated once.
* **Toggle** — Changes state every time it's touched.

---

## Inspiration

One of the biggest inspirations behind RE-4D was **Portal**.

Portal showed that an entire puzzle game could be built around a single mechanic. Instead of constantly introducing new abilities, every level explored another possibility using the same core idea.

RE-4D follows a similar approach.

The only mechanic is that every failed attempt becomes another ghost/echo.

Everything else is built around finding new ways to use that one rule.

---

## Why WebGL?

This isn't intended to be the final version of RE-4D.

I chose WebGL because it let me prototype ideas quickly without committing to a full game engine. The browser version is mainly for testing mechanics, level design, and getting feedback.

Once the gameplay feels right, I plan to rebuild everything in Unity as a larger standalone game.

---

## Built With

| Part          | Technology                 |
| ------------- | -------------------------- |
| Rendering     | Raw WebGL + custom shaders |
| Gameplay      | Vanilla JavaScript         |
| Audio         | jsfxr                      |
| Desktop Build | Electron                   |
| Hosting       | Vercel                     |

Some things I experimented with while building it:

* Animated hex-grid floor shader
* Player spotlight
* Distance fog
* Camera interpolation
* Fade transitions
* Procedural sound generation

No game engine was used.

---

## Development Log

### Day 1 — Project Skeleton

Set up the Node.js project, created an empty `index.html`, and started experimenting with WebGL.

The original working title was `xx142-b2.exe`.

### Day 2 — UI & HUD

Built the terminal-inspired interface, intro sequence, and HUD.

The game itself barely existed, but I wanted the atmosphere to be there from the beginning.

### Day 3 — WebGL Renderer

Implemented the rendering pipeline from scratch.

Added:

* Custom shaders
* Animated hex floor
* Depth fog
* Camera interpolation

Seeing the first 3D scene render was probably the biggest milestone of the project.

### Day 4 — Gameplay

Implemented:

* Collision detection
* Level loading
* Doors
* Pressure switches
* The 13-second timer
* Ghost recording and playback

Also integrated **jsfxr** to generate all sound effects procedurally.

This was the first day it actually felt like a game.

### Day 5 — Desktop Build

Wrapped the browser version with Electron so it could run as a native Windows application.

### Day 6 — First Playable Build

Renamed the project from `xx142-b2.exe` to **RE-4D**.

Cleaned up the code, wrote documentation, deployed it to Vercel, and published the first playable version.

---

## Roadmap

The next major feature is a built-in level editor.

The goal is to let players create their own puzzles, publish them using a seed ID, and compete for the fastest completion times.

Planned features:

* Visual level editor
* Shareable level IDs
* Community puzzle browser
* Online leaderboards
* Ghost replays from the fastest players

---

## Project Structure

```text
RE-4D/
├── index.html      # Rendering + gameplay
├── main.js         # Electron entry point
├── package.json
├── vercel.json
├── .gitignore
└── PACKAGING/
```

Most of the game currently lives inside `index.html`.

It started as a quick experiment and slowly grew into the prototype you're playing now.

---

## Running Locally

Clone the repository and either open `index.html` in any browser with WebGL support, or run the Electron version.

```bash
npm install
npm start
```

To package the Windows build:

```bash
npx electron-packager . RE-4D --platform=win32 --arch=ia32
```

---
OR
**Play in your browser:** https://re-4d.vercel.app

## Why I Made This

I wanted to see how far a puzzle game could go using a single mechanic.

Instead of giving the player more abilities, every new level asks them to think differently about the same rule:

**You are your own team**

This project is my first attempt at exploring that idea.

with love by rohan(https://roh1.vercel.app/)

# AI usage disclaimer
the code inst ai generated however documentation..formatting and debugging was assisted by AI 
