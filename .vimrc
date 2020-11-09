" set leader
let mapleader=','

" always show 2 lines above and below the cursor
set scrolloff=2

set history=999

set relativenumber
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
set nohlsearch
set ignorecase
set smartcase
set incsearch

" : is kinda laggy in vsvim
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>

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

" surround the current line in { }
nnoremap s{ I{<CR><Esc>A<CR>}<Esc>k_

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

" Surround full line bindings
nnoremap yss" I"<Esc>A"<Esc>
nnoremap yss' I'<Esc>A'<Esc>
nnoremap yss) I(<Esc>A)<Esc>
nnoremap yss] I[<Esc>A]<Esc>
nnoremap yss} I{<Esc>A}<Esc>
nnoremap yss( I( <Esc>A )<Esc>
nnoremap yss[ I[ <Esc>A ]<Esc>
nnoremap yss{ I{ <Esc>A }<Esc>

" Surround visual selected text
vnoremap S" c"<C-r>""<Esc>
vnoremap S' c"<C-r>"'<Esc>
vnoremap S) c(<C-r>")<Esc>
vnoremap S] c[<C-r>"]<Esc>
vnoremap S} c{<C-r>"}<Esc>
vnoremap S> c<lt><C-r>"><Esc>
vnoremap S* c/*<C-r>"*/<Esc>

" folding
nnoremap zm :vsc Edit.CollapseCurrentRegion<CR>
nnoremap zM :vsc Edit.CollapsetoDefinitions<CR>

" unfolding
nnoremap zr :vsc Edit.ExpandCurrentRegion<CR>
nnoremap zR :vsc Edit.ExpandAllOutlining<CR>

" faster semicolon
nnoremap ; A;<ESC>_

" NERDCommenter replacements
nnoremap <leader>cc :vsc Edit.CommentSelection<CR>
vnoremap <leader>cc :vsc Edit.CommentSelection<CR>
nnoremap <leader>cu :vsc Edit.UncommentSelection<CR>
vnoremap <leader>cu :vsc Edit.UncommentSelection<CR>

" go to errors
nnoremap <leader>ee :vsc View.ErrorList<CR>
nnoremap <leader>e :vsc View.NextError<CR>
nnoremap <leader>E :vsc View.PreviousError<CR>

" tab navigation
nnoremap K :vsc Window.NextDocumentWindow<CR>
nnoremap J :vsc Window.PreviousDocumentWindow<CR>
nnoremap <c-w><c-w> :vsc Window.NextDocumentWindow<CR>

" use the visual studio forward and backward navigation
nnoremap <C-O> :vsc View.NavigateBackward<CR>
nnoremap <C-I> :vsc View.NavigateForward<CR>

" start the solution script
nnoremap <C-n> :csx solution<CR>

" save and close all open documents
nnoremap <leader>qa :vsc File.SaveAll<CR> :vsc Window.CloseAllDocuments<CR>

" function navigation
nnoremap gd :vsc Edit.GoToDefinition<CR>
nnoremap gi :vsc Edit.GoToImplementation<CR>
nnoremap gr :vsc Edit.FindAllReferences<CR>

" indent lines and reselect block
vnoremap > >gv
vnoremap < <gv

" run tests and open test explorer
nnoremap ,tt :vsc TestExplorer.ShowTestExplorer<CR>
nnoremap ,tdb :vsc TestExplorer.DebugAllTestsInContext<CR>
nnoremap ,ta :vsc TestExplorer.RunAllTests<CR>
nnoremap ,tr :vsc TestExplorer.RepeatLastRun<CR>

" show info
nnoremap ,k :vsc Edit.QuickInfo<CR>

" make lower/upper case
map gU :vsc Edit.MakeUppercase<CR>
map gu :vsc Edit.MakeLowercase<CR>

" debugging shortcuts
map <leader>b :vsc Debug.ToggleBreakpoint<CR>
map <leader>dl :vsc Debug.StepInto<CR>
map <leader>dj :vsc Debug.StepOver<CR>
map <leader>dk :vsc Debug.StepOut<CR>
map <leader>drc :vsc Debug.RunToCursor<CR>
map <leader>d_ :vsc Debug.Restart<CR>
