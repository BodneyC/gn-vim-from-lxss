gVim / Neovim from LXSS
=======================

Open files with Windows versions of gVim or Neovim from the Windows Subsystem for Linux

### Purpose

Something I've noticed, and it may just be my setup, is that opening a file from LXSS (zsh for me) is that gVim or Neovim will open a new buffer under the same name but under 'C:\Windows\System32'.

This is clearly not the desired behaviour so I wrote a little shell function which converts Linux-style filepaths to Windows ones, or if the file exists within the /root directory (recursively) then it prepends the Windows filepath.

Perhaps not the most elegant solution but it does what I need it to.
