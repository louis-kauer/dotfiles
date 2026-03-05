# Configurations

## HERO

### Keybindings

#### General

Leader key: `Space`
| Keybind | Function |
|---------- | ---------- |
| C-u | Move down and center the view |
| C-d | Move up and center the view |
| <leader>nh | Clear search heilights |
| <leader>p | Paste text over other text without replaceing the registers content |

#### LSP

| Keybind    | Function                                        |
| ---------- | ----------------------------------------------- |
| gR         | Toggle Telescope search for lsp_references      |
| gD         | Go to declaraion                                |
| gd         | Find declaraion with telescope                  |
| gi         | window                                          |
| gt         | window                                          |
| <leader>ca | window                                          |
| <leader>D  | window                                          |
| <leader>d  | window                                          |
| [d         | Go to previous diagnostics                      |
| ]d         | Go to next diagnostic                           |
| K          | Show documentation for what is under the cursor |
| <leader>rs | Restart LSP                                     |

#### Windows

| Keybind    | Function                      |
| ---------- | ----------------------------- |
| <leader>sv | Split the window vertically   |
| <leader>sh | Split window horizontally     |
| <leader>se | Make split windows equal size |
| <leader>sx | Close the current window      |

#### Comments

| Keybind                   | Function                      |
| ------------------------- | ----------------------------- |
| <leader>gcc               | Toggle Comment current line   |
| <leader>gc[count]{motion} | Toggle lines with vim motions |

#### Formatting

| Keybind    | Function                                     |
| ---------- | -------------------------------------------- |
| <leader>mp | Formt file or range in visual or normal mode |

#### Git

| Keybind    | Function                                            |
| ---------- | --------------------------------------------------- |
| <leader>]h | Move to next hunk                                   |
| <leader>[h | Move to previous hunk                               |
| <leader>hs | Stage **hunk**                                      |
| <leader>hr | Reset **hunk**                                      |
| <leader>hS | Stage **buffer**                                    |
| <leader>hR | Reset **buffer**                                    |
| <leader>hu | Undo stage hunk                                     |
| <leader>hp | Preview hunk                                        |
| <leader>hb | Show blame for line                                 |
| <leader>hB | Toggle line blame                                   |
| <leader>hd | Show diff for buffer                                |
| <leader>hD | Show diff for idk TODO: Check what this is used for |

#### Harpoon

| Keybind    | Function                    |
| ---------- | --------------------------- |
| <leader>ha | Add buffer to harpoon list  |
| <C-e>      | Toggle Harpoon Overlay menu |

#### Linting

| Keybind   | Function                         |
| --------- | -------------------------------- |
| <leader>l | Trigger linting for current file |

#### Nvim Tree

| Keybind    | Function                                             |
| ---------- | ---------------------------------------------------- |
| <leader>ee | Toggle File Tree                                     |
| <leader>ef | Toggle File Tree and Find File                       |
| <leader>ec | Collapse all folders                                 |
| <leader>er | Refresh file tree                                    |
| <leader>ej | Jump from any buffer directly to the NvimTree window |

#### Telescope

| Keybind    | Function                                          |
| ---------- | ------------------------------------------------- |
| <leader>ff | Show telescope fzf overlay. Search files.         |
| <leader>fg | Show live grep, i.e. search through file contents |
| <leader>fb | Search through buffers.                           |
| <leader>fh | Search through help tags                          |
| <leader>fc | Telescope grep_string                             |

#### TODO-Comments

| Keybind | Function                      |
| ------- | ----------------------------- |
| ]t      | Jump to the next TODO comment |
| ]t      | Jump to the previous comment  |

#### Trouble

| Keybind    | Function             |
| ---------- | -------------------- |
| <leader>xx | Show diagnostics     |
| <leader>xX | Hide Diagnostics     |
| <leader>cs | Toggle symbol window |
| <leader>cl | TODO                 |
| <leader>xL | TODO                 |
| <leader>xQ | Show Quickfix List   |

#### Undo-Tree

| Keybind   | Function         |
| --------- | ---------------- |
| <leader>u | Toggle Undo-Tree |

#### Vim-Maximizer

| Keybind    | Function                                |
| ---------- | --------------------------------------- |
| <leader>sm | Maximise the view on the current window |

### Options

### Requirements

#### Telescope

Requires: - RipGrep for live grep: `brew install ripgrep`
