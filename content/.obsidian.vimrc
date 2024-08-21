" Have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk
nnoremap ; :
nnoremap : ;
" I like using H and L for beginning/end of line
nnoremap H ^
nnoremap L $
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <c-p> :pu<CR>
nnoremap i zzi
nnoremap a zza
nnoremap A zzA
nnoremap o zzo
nnoremap O zzO
nmap <F9> :nohl
nnoremap <Space> i
" Yank to system clipboard
set clipboard=unnamedplus
nnoremap <silent>? :set hls!<CR>
inoremap <C-e> <C-o>a
" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
nmap <C-o> :back
exmap forward obcommand app:go-forward
nmap <C-i> :forward
" Emulate Folding https://vimhelp.org/fold.txt.html#fold-commands
exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold
nmap zc :togglefold
nmap za :togglefold

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall

exmap foldall obcommand editor:fold-all
nmap zM :foldall

" Emulate Tab Switching https://vimhelp.org/tabpage.txt.html#gt
" requires Cycle Through Panes Plugins https://obsidian.md/plugins?id=cycle-through-panes
exmap tabnext obcommand cycle-through-panes:cycle-through-panes
nmap gt :tabnext
exmap tabprev obcommand cycle-through-panes:cycle-through-panes-reverse
nmap gT :tabprev
