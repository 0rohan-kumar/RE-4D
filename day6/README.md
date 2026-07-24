# RE-4D

> *Recursive Execution — 4th Dimension*

A cyberpunk maze game rendered in real-time 3D via WebGL. You are an AI virus with **13 seconds** to navigate hostile alien architecture, trigger pressure switches, and destroy the memory core — or die trying. Each death leaves behind a **ghost** that replays your previous run, turning failure into a strategic tool.

🎮 **[Play in Browser](https://re-4d.vercel.app)**

---

## 📜 Lore

> *The year is 2413.* Humanity has been enslaved by an alien race for more than two centuries. In a last act of defiance, the remnants of the human resistance engineered **RE-4D** — an AI weaponized virus designed to infiltrate the alien network, deactivate all power generators and weapon systems, and destroy the main memory core.

The alien antivirus will detect and delete you after **13 seconds**. But a file is never truly deleted. Use the **execution backtrace** from your previous attempts to break in.

---

## 🎮 Controls

| Input | Action |
|---|---|
| `W A S D` / `↑ ← ↓ →` | Move |
| `Backspace` | `kill -9 RE-4D` — self-terminate, spawn a ghost |
| Swipe (mobile) | Move in swipe direction |

---

## 👻 Ghost System

Every input you make is recorded. When you die (timer or `Backspace`), a **ghost** is spawned that perfectly replays your movements. Ghosts can activate pressure switches, letting you hold doors open that would be otherwise unreachable alone.

- Max **4 active ghosts** at a time
- Ghosts can trigger and release pressure switches
- Older ghosts are replaced when the limit is exceeded — plan your deaths wisely

---

## 🗺️ Levels

| # | Name | Switches | Doors | Difficulty |
|---|---|---|---|---|
| 0 | The Corridor | 1× Momentary | 1 | Tutorial |
| 1 | The Fork | 2× Momentary | 2 | Easy |
| 2 | The Grid | 4× Momentary, 1× Single | 4 | Medium |
| 3 | The Labyrinth | 1× Momentary, 1× Toggle | 2 | Medium |
| 4 | The Shaft | 1× Single, 2× Momentary | 3 | Hard |
| 5 | The Nexus | 5× Momentary | 4 | Hard |
| 6 | The Spiral | 3× Momentary | 3 | Expert |
| 7 | **The Core** | 2× Momentary | 12 | Final |

### Switch Types

- **Momentary** — Active while stepped on; deactivates when you leave
- **Single** — One-time activation; locked permanently after triggered
- **Toggle** — Flips state on each contact

---

## 🛠 Tech Stack

| Layer | Technology |
|---|---|
| Rendering | WebGL (custom vertex + fragment shaders) |
| Game Logic | Vanilla JavaScript (zero dependencies) |
| Audio | [jsfxr](https://github.com/mneubrand/jsfxr) — procedural synthesis, no audio files |
| Desktop | Electron v1.6 |
| Deployment | Vercel (static) |

### Rendering Highlights

- **Dynamic player spotlight** — cone of light that follows the player
- **Hex-grid floor shader** — animated hexagonal pattern generated in the fragment shader
- **Depth fog** — geometry fades to black based on vertical distance
- **Camera interpolation** — smooth quadratic follow with slight rotation
- **Fade transitions** — level transitions via opacity on the projection matrix

---

## 📂 Project Structure

```
RE-4D/
├── index.html              # Entire game (HTML + inlined JS)
├── main.js                 # Electron entry point
├── package.json            # Node/Electron config
├── vercel.json             # Vercel deployment config
├── .gitignore
└── PACKAGING/
    └── xx142-b2.exe-win32-ia32/   # Windows x86 desktop build
```

---

## 🚀 Getting Started

### Play in Browser
Open `index.html` in any modern browser with WebGL support, or visit the live deployment.

### Run with Electron

```bash
npm install
npm start
```

### Package for Windows

```bash
npx electron-packager . RE-4D --platform=win32 --arch=ia32
```




