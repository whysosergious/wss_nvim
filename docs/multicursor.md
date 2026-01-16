# Multicursor Documentation

This document explains how to use the multiple cursor editing feature, powered by the `vim-visual-multi` plugin.

## Keybindings

The following keybindings have been configured to be more friendly for a Swedish keyboard layout and to avoid conflicts with existing keymaps.

| Keybinding      | Action                                                                                         |
| --------------- | ---------------------------------------------------------------------------------------------- |
| `<M-d>` (ALT+d) | Add a new cursor on the word under the cursor or the next occurrence of the current selection. |
| `<M-a>` (ALT+a) | Select all occurrences of the current selection.                                               |
| `<M-k>`         | Add a cursor on the line above the current cursor.                                             |
| `<M-j>`         | Add a cursor on the line below the current cursor.                                             |
| `>`             | Find the next occurrence of the current selection.                                             |
| `<`             | Find the previous occurrence of the current selection.                                         |
| `g>`            | Go to the next occurrence.                                                                     |
| `g<`            | Go to the previous occurrence.                                                                 |

## Usage

1.  Place your cursor on a word you want to edit in multiple places.
2.  Press `<M-d>` to select the word and create a new cursor on the next occurrence.
3.  Press `<M-d>` again to add more cursors on subsequent occurrences.
4.  Once you have all the cursors you need, you can start typing to edit all occurrences at once.
5.  Press `<Esc>` to exit multicursor mode.

You can also use the other keybindings to select all occurrences at once, or to add cursors above or below the current line.
