MLN File Syntax Highlighting
============================

To install, I recommend pathogen or vundle.

in ~/.vimrc, add something like the following:

  autocmd BufNewFile,BufRead *.mln set syntax=mln
  autocmd BufNewFile,BufRead *.db set syntax=mln
