# PyIDLE — Python IDLE for iPad (SwiftUI)

**PyIDLE** brings the iconic Python IDLE development environment to iPadOS, reimagined with modern SwiftUI, iPad-optimized multi-pane layouts, hardware keyboard shortcuts, an iPad coding accessory toolbar, visual Turtle graphics, and an embedded WebAssembly CPython 3.12 runtime.

---

## 🌟 Highlights & Features

### 1. Interactive Python Shell (REPL)
- Authentic classic IDLE prompt `>>> ` and continuation `... `
- Color-coded output streams:
  - **Standard Output**: Classic IDLE Blue (`#0000FF`)
  - **Standard Error & Tracebacks**: IDLE Red (`#DD0000`)
  - **Interactive Results**: IDLE Result Blue (`#0000AA`)
  - **Restart Banners**: IDLE Gray (`#777777`)
- **Interactive `input()` Prompt**: Seamless handling of `input("What is your name? ")` with modal & inline text response.
- **Command History**: Browse and recall past commands using Up/Down arrows or the history sheet.
- **IDLE Controls**: Restart Shell (`Cmd+Shift+R` / `Ctrl+F6`), Interrupt Execution (`Ctrl+C`), and Clear Shell (`Cmd+K`).

### 2. Multi-Tab Python Code Editor
- **Classic IDLE & Modern Themes**:
  - `IDLE Classic` (Official IDLE palette: Orange keywords, Purple builtins, Green strings, Red comments)
  - `IDLE Dark` (Vibrant modern dark mode)
  - `Monokai`
  - `Solarized Light` & `Solarized Dark`
- **Smart Python Editing**:
  - Auto-indentation (automatically indents 4 spaces after lines ending with `:`)
  - Smart 4-space tab insertion and smart backspace
  - Auto-pairing of brackets `()`, `[]`, `{}` and quotes `""`, `''`
  - Line numbers gutter with active position readout (`Ln X, Col Y`)
- **Find & Replace**: In-script text search and replace.
- **Multi-Document Tabs**: Open multiple `.py` files simultaneously with dirty status indicators (`*script.py`).

### 3. iPad Coding Accessory Toolbar
- Dedicated quick-access strip right above the software keyboard:
  - **Symbols**: `Tab`, `Untab`, `:`, `(`, `)`, `[`, `]`, `{`, `}`, `"`, `'`, `=`, `+`, `-`, `*`, `/`, `%`, `_`, `->`, `#`, `\`, `|`
  - **Keywords & Snippets**: `def `, `class `, `print()`, `import `, `self`, `return `, `if `, `else:`, `for `, `while `, `try:`
  - **Cursor Controls**: Move Left, Move Right, Undo, Redo, Dismiss Keyboard.

### 4. Turtle Graphics Visualizer
- Visual tab/pane that executes Python `turtle` commands (`forward`, `backward`, `right`, `left`, `circle`, `color`, `pensize`, `begin_fill`, `end_fill`, `clear`, `reset`).
- Interactive canvas with pan, pinch-to-zoom, grid background, and real-time turtle heading cursor.

### 5. Built-in Examples & Interactive Cheat Sheet
- Preloaded scripts for learning and testing:
  - *Hello & Interactive Input*
  - *Turtle Graphics Mandala*
  - *Fibonacci & Memoization Timing*
  - *OOP Bank Account System*
  - *Text Adventure Dungeon Crawler Game*
  - *Sieve of Eratosthenes Prime Generator*
- Searchable Python 3 cheat sheet with one-tap snippet insertion into the active script.

---

## 🚀 How to Run & Build

### In Xcode:
1. Open the project in Xcode:
   ```bash
   open PyIDLE/Package.swift
   ```
2. Select your run destination:
   - **iPad Pro 11-inch / 13-inch Simulator**, or
   - **Your Connected iPad Device**
3. Press **Run (Cmd+R)**.

### Via Command Line:
```bash
# Build for iPad Simulator
DEVELOPER_DIR=/Applications/Xcode-beta.app/Contents/Developer xcodebuild -scheme PyIDLE -destination 'generic/platform=iOS Simulator' build

# Run unit tests
DEVELOPER_DIR=/Applications/Xcode-beta.app/Contents/Developer xcrun swift test --package-path PyIDLE -Xswiftc -DTESTING
```

---

## ⌨️ Hardware Keyboard Shortcuts

| Shortcut | Action |
|---|---|
| `Cmd + R` or `F5` | **Run Module** (Executes active script in Shell) |
| `Cmd + Shift + R` or `Ctrl + F6` | **Restart Shell** |
| `Ctrl + C` | **Interrupt Execution** (`KeyboardInterrupt`) |
| `Cmd + S` | **Save Script** |
| `Cmd + N` | **New Python File** |
| `Cmd + K` | **Clear Shell Output** |
| `Cmd + F` | **Toggle Find & Replace** |
