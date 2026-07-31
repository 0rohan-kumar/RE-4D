# RE-4D
![Status](https://img.shields.io/badge/Status-Prototype-orange)
![Platform](https://img.shields.io/badge/Platform-WebGL-blue)
![Made With](https://img.shields.io/badge/Made%20With-JavaScript-yellow)
![License](https://img.shields.io/badge/License-MIT-green) 
> Category: Indie Game
>
> Recursive Execution - 4th Dimension
A puzzle game built around one mechanic: time.

We've always been taught that there are three spatial dimensions, but what if we could use the fourth dimension, **time**, as a gameplay mechanic instead of just something that passes?
THAT is the key mechanic time manipulation

You play as **RE-4D**, an experimental virus sent into an alien network. You only have **13 seconds** before the antivirus deletes you.

Luckily, deleted files leave traces behind.

Every time you fail, your previous attempt comes back as a ghost and repeats everything you did. Those ghosts become the key to solving puzzles that would be impossible alone.

**Play in your browser:** https://re-4d.vercel.app

---

> [!NOTE]
> **RE-4D is still being developed.**
>
> This browser version is just a prototype. I wanted to see if the core mechanic was actually fun before rebuilding everything in Unity.
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

Sometimes the correct move is to let yourself get deleted.

The game isn't about surviving every run. It's about leaving ghosts exactly where you need them.
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
Portal was probably my biggest inspiration.

I liked how Portal kept introducing new puzzles using the same core mechanic instead of constantly giving the player new abilities.

I wanted to try doing something similar, except the mechanic is your own previous attempts.
---

# Why WebGL?

This is not meant to be the final version of RE-4D.

I used WebGL since it allowed me to quickly prototype ideas without having to commit to a full game engine; the browser version is primarily intended for testing mechanics, level design, and obtaining feedback.

If the prototype works well, I'll rebuild the game in Unity with better graphics, more mechanics and a proper campaign.

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
**Rohan**

https://roh1.vercel.app/

---

## AI Usage

The gameplay, programming, shaders, level design and overall game were created by me.

AI was only used occasionally to help debug code and answer programming questions.

```
```
