" set leader
let mapleader=','

" always show 2 lines above and below the cursor
set scrolloff=2

set history=999

set number
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamed

set nomodeline

" Always display the status bar
set laststatus=2

" Enable line numbers
set number

" Display the cursorline
set cursorline

" Search
set ignorecase
set smartcase
set nohlsearch
set incsearch

" disable swap and backup files
set nobackup

" Enable syntax highlihting
syntax enable

" disable arrow keys in normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" disable arrow keys in insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Surround simulating bindings
nnoremap s) ciw(<C-r>")<Esc>
nnoremap s] ciw[<C-r>"]<Esc>
nnoremap s} ciw{<C-r>"}<Esc>
nnoremap s> ciw<lt><C-r>"><Esc>
nnoremap s" ciw"<C-r>""<Esc>
nnoremap s' ciw'<C-r>"'<Esc>
nnoremap sw) ciW(<C-r>")<Esc>
nnoremap sw] ciW[<C-r>"]<Esc>
nnoremap sw} ciW{<C-r>"}<Esc>
nnoremap sw> ciW<lt><C-r>"><Esc>
nnoremap sw" ciW"<C-r>""<Esc>
nnoremap sw' ciW'<C-r>"'<Esc>

" Surround delete bindings
nnoremap ds) vi(dvhp
nnoremap ds] vi[dvhp
nnoremap ds} vi{dvhp
nnoremap ds> vi<dvhp
nnoremap ds" vi"dvhp
nnoremap ds' vi'dvhp

" Surround change bindings
nnoremap cs"' vi"oh<Esc>msvi"l<Esc>cl'<Esc>`scl'<Esc>
nnoremap cs'" vi'oh<Esc>msvi'l<Esc>cl"<Esc>`scl"<Esc>

" Surround visual selected text
vnoremap S" c"<C-r>""<Esc>
vnoremap S' c"<C-r>"'<Esc>
vnoremap S) c(<C-r>")<Esc>
vnoremap S] c[<C-r>"]<Esc>
vnoremap S} c{<C-r>"}<Esc>
vnoremap S> c<lt><C-r>"><Esc>
vnoremap S* c/*<C-r>"*/<Esc>

" NERDCommenter replacements
vnoremap <leader>cc :vsc Edit.CommentSelection<CR>
vnoremap <leader>cu :vsc Edit.UncommentSelection<CR>
nnoremap <leader>cc :vsc Edit.CommentSelection<CR>
nnoremap <leader>cu :vsc Edit.UncommentSelection<CR>

" go to Error shortcuts
nnoremap <leader>ee :vsc View.ErrorList<CR>
nnoremap <leader>e :vsc View.NextError<CR>
nnoremap <leader>ge :vsc View.PreviousError<CR>

" tab navigation
nnoremap <leader>wj :vsc Window.PreviousTab<CR>
nnoremap <leader>wl :vsc Window.NextTab<CR>

" set breakpoint
nnoremap <leader>b :vsc Debug.ToggleBreakpoint<CR>