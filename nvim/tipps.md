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

- `f{char}` (`F{char}`) will jump to next (previous) occurence of char.
- `crn`: Change next search match (combine with .!)
- `P"`: Paste before cursor
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
- `<C-w>v`: Split vertical
- `<C-w>s`: Split horizontal
- `sb#`: Move buffer # to horizontal split
- `vs#`: Move buffer # to vertical split
- `<Alt>+MovementKey in insert mode` : Go back to normal mode while performing movement

## My config
- `<Space>o` (`<Space>O`) will add a line below (above) without leaving normal mode.
- Selecting lines in visual mode and using `<Shift>+MovementKeys` will move selection/line

## LSP Zero Keybinds
```
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

    vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
    vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
    vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts) 
```
