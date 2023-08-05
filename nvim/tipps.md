# VIM Tipps

```
__     _____ __  __   _____ _                 
\ \   / /_ _|  \/  | |_   _(_)_ __  _ __  ___ 
 \ \ / / | || |\/| |   | | | | '_ \| '_ \/ __|
  \ V /  | || |  | |   | | | | |_) | |_) \__ \
   \_/  |___|_|  |_|   |_| |_| .__/| .__/|___/
                             |_|   |_|        
```

## Default Functionality

- `cgn`: Change next search match (combine with .!)
- `P"`: Paste before cursor
- `sb#`: Move buffer # to horizontal split
- `zz` : Center view
- `Shift+C` : Change everything on the current line after the cursor
- `g+command` : Perform command relative to visible line (not actual line)
- `gqq` : Turn long line in to multiple lines (last q is Text Object)
- `~` : Switch capitalization of current letter
- `guiw` : Uncapitalize word
- `gf` : Open path under cursor
- `J` : Join lines. `gJ` without spaces.
- `g&` : Repeat last :s on all lines
- `%` : Jump to matching (bracket ...)

## Custom Config
- `Alt+MovementKeys`: Move selection/line
- `Alt+l` : Move right in insert mode

## (Configured) Plugins
- `ds"`: Delete surrounding "
- `cs"'`: Change surrounding from " to '
- `ysiw"`: Add " left and right from "word"
- `\cc`: {comment} 
