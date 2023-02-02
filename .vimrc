" set leader
let mapleader=","

" always show 2 lines above and below the cursor
set scrolloff=2

set history=999

" set relativenumber
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
nnoremap zm :vscmd Edit.CollapseCurrentRegion<CR>
nnoremap zM :vscmd Edit.CollapsetoDefinitions<CR>

" unfolding
nnoremap zr :vscmd Edit.ExpandCurrentRegion<CR>
nnoremap zR :vscmd Edit.ExpandAllOutlining<CR>

" NERDCommenter replacements
nnoremap <leader>cc :vscmd Edit.CommentSelection<CR>
vnoremap <leader>cc :vscmd Edit.CommentSelection<CR>
nnoremap <leader>cu :vscmd Edit.UncommentSelection<CR>
vnoremap <leader>cu :vscmd Edit.UncommentSelection<CR>

" go to errors
nnoremap <leader>ee :vscmd View.ErrorList<CR>
nnoremap <leader>e :vscmd View.NextError<CR>
nnoremap <leader>E :vscmd View.PreviousError<CR>

" tab navigation
nnoremap K :vscmd Window.NextDocumentWindow<CR>
nnoremap J :vscmd Window.PreviousDocumentWindow<CR>
nnoremap <c-w><c-w> :vscmd Window.NextDocumentWindow<CR>

" use the visual studio forward and backward navigation
nnoremap <C-O> :vscmd View.NavigateBackward<CR>
nnoremap <C-I> :vscmd View.NavigateForward<CR>

" start the solution script
nnoremap <C-n> :vscmd View.SolutionExplorer<CR>

" save and close open documents
nnoremap <leader>qq :vscmd File.SaveSelectedItems<CR> :vsc File.Close<CR>
nnoremap <leader>qa :vscmd File.SaveAll<CR> :vsc Window.CloseAllDocuments<CR>
nnoremap <leader>qo :vscmd File.SaveAll<CR> :vsc File.CloseAllButThis<CR>

" function navigation
nnoremap gd :vscmd Edit.GoToDefinition<CR>
nnoremap gi :vscmd Edit.GoToImplementation<CR>
nnoremap gr :vscmd Edit.FindAllReferences<CR>

" indent lines and reselect block
vnoremap > >gv
vnoremap < <gv

" run tests and open test explorer
nnoremap <leader>te :vscmd TestExplorer.ShowTestExplorer<CR>
nnoremap <leader>tap :vscmd TestExplorer.AddToPlaylist<CR>
nnoremap <leader>tdb :vscmd TestExplorer.DebugAllTestsInContext<CR>
nnoremap <leader>tdbl :vscmd TestExplorer.DebugLastRun<CR>
nnoremap <leader>tr :vscmd TestExplorer.RepeatLastRun<CR>
nnoremap <leader>tra :vscmd TestExplorer.RunAllTests<CR>

" navigate changelist
map <leader>c :vscmd Diff.NextDifference<CR>
map <leader>C :vscmd Diff.PreviousDifference<CR>

" show info
nnoremap <leader>k :vscmd Edit.QuickInfo<CR>

" make lower/upper case
map gU :vscmd Edit.MakeUppercase<CR>
map gu :vscmd Edit.MakeLowercase<CR>

" debugging shortcuts
map <leader>b :vscmd Debug.ToggleBreakpoint<CR>
map <leader>dl :vscmd Debug.StepInto<CR>
map <leader>dj :vscmd Debug.StepOver<CR>
map <leader>dk :vscmd Debug.StepOut<CR>
map <leader>drc :vscmd Debug.RunToCursor<CR>
map <leader>dc :vscmd Debug.Start<CR>
map <leader>ds :vscmd Debug.StopDebugging<CR>
map <leader>d_ :vscmd Debug.Restart<CR>
map <leader>dw :vscmd Debug.AddWatch<CR>

" method movement & manipulation
"   \(public\|private\|protected\|internal\|virtual\|static\)[^=]\+\?(
" move to next method
nnoremap ]m /\(public\|private\|protected\|internal\|virtual\|static\)[^=]\+\?(<CR>
" move to next method end
nnoremap ]M /\(public\|private\|protected\|internal\|virtual\|static\)[^=]\+\?(<CR>j_%
" move to previous method
nnoremap [m ?\(public\|private\|protected\|internal\|virtual\|static\)[^=]\+\?(<CR>
" move to previous method end TODO: implement correctly
"nnoremap [M ?\(public\|private\|protected\|internal\|virtual\|static\)[^=]\+\?(<CR>j_%
" delete method
nnoremap dam ?\(public\|private\|protected\|internal\|virtual\|static\)[^=]\+\?(<CR>Vj_%x
" visual select method
nnoremap vam ?\(public\|private\|protected\|internal\|virtual\|static\)[^=]\+\?(<CR>Vj_%o

" go to parameter list of method
nnoremap gp ?\(public\|private\|protected\|internal\|virtual\|static\)[^=]\+\?(<CR>f(
