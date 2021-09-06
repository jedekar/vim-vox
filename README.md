# vim-vox
## Features
Adds basic syntax highlighting for [Vox programming language](https://github.com/MrSmith33/vox).

## Install
- Create `syntax` folder in your config folder
- Copy `vox.vim` to `syntax`
- Add the following line to your `.vimrc/init.vim`:

  ```
  au BufRead,BufNewFile *.vx set filetype=vox
  ```
