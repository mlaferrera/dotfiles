" ========================================
" Mac specific General vim sanity improvements
" ========================================
"
" ========================================
" RSI Prevention - keyboard remaps
" ========================================
" Certain things we do every day as programmers stress
" out our hands. For example, typing underscores and
" dashes are very common, and in position that require
" a lot of hand movement. Vim to the rescue
"
" Now using the middle finger of either hand you can type
" underscores with apple-k or apple-d, and add Shift
" to type dashes
imap <silent> <leader>k _
imap <silent> <leader>d _
imap <silent> <leader>K -
imap <silent> <leader>D -

" Change inside various enclosures with Cmd-" and Cmd-'
" The f makes it find the enclosure so you don't have
" to be standing inside it
nnoremap <leader>' f'ci'
nnoremap <leader>" f"ci"
nnoremap <leader>( f(ci(
nnoremap <leader>) f)ci)
nnoremap <leader>[ f[ci[
nnoremap <leader>] f]ci]

" ==== NERD tree
" Cmd-Shift-N for nerd tree
" nmap <leader>N> :NERDTreeToggle<CR>
nmap <leader>N :NERDTreeToggle<CR>

" move up/down quickly by using Cmd-j, Cmd-k
" which will move us around by functions
nnoremap <silent> <leader>j }
nnoremap <silent> <leader>k {
autocmd FileType ruby map <buffer> <leader>j ]m
autocmd FileType ruby map <buffer> <leader>k [m
autocmd FileType rspec map <buffer> <leader>j }
autocmd FileType rspec map <buffer> <leader>k {
autocmd FileType javascript map <buffer> <leader>k }
autocmd FileType javascript map <buffer> <leader>j {

" Command-/ to toggle comments
map <leader>/ :TComment<CR>
imap <leader>/ <Esc>:TComment<CR>i

" Use numbers to pick the tab you want (like iTerm)
map <silent> <leader>1 :tabn 1<cr>
map <silent> <leader>2 :tabn 2<cr>
map <silent> <leader>3 :tabn 3<cr>
map <silent> <leader>4 :tabn 4<cr>
map <silent> <leader>5 :tabn 5<cr>
map <silent> <leader>6 :tabn 6<cr>
map <silent> <leader>7 :tabn 7<cr>
map <silent> <leader>8 :tabn 8<cr>
map <silent> <leader>9 :tabn 9<cr>

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" Resize windows with arrow keys
nnoremap <leader>Up <C-w>+
nnoremap <leader>Down <C-w>-
nnoremap <leader>Left <C-w><
nnoremap <leader>Right  <C-w>>

" ============================
" Tabularize - alignment
" ============================
" Hit Cmd-Shift-A then type a character you want to align by
nmap <leader>A :Tabularize /
vmap <leader>A :Tabularize /

" Source current file Cmd-% (good for vim development)
map <leader>% :so %<CR>
