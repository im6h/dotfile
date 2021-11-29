for f in split(glob('~/.config/nvim/configs/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.config/nvim/lua/*.vim'), '\n')
  exe 'source' f
endfor

