Notes based on https://github.com/gotbletu/shownotes/blob/master/vifm.txt
color theme should be located in $HOME/.vifm/colors/

1. basic hotkeys

	za          - Toggle the showing and hiding of dot files.
    
	t           - select or unselect (tag) the current file.
	
    Esc         - clear all selected files
	
    al          - puts symbolic links with absolute paths
	
    rl          - puts symbolic links with relative paths
	
    v           - enter visual mode
	
    ZQ          - quit program; same as :q!
	
    ZZ          - quit program; same as :wq

2. other hotkeys

	Panes:
	
    Ctrl-W |  - maximize current view
    
	Ctrl-W =  - make size of two views equal
	
    Ctrl-W x  - exchange panes
	
    Ctrl-W s  - shortcut for :split (horizontal) or :sp
	
    Ctrl-W v  - shortcut for :vsplit (vertical) or :vs
	
    Ctrl-W o  - one full pane fullscreen ( same as :only or :o )

	previewing:
	
    e          - view selected files
	
    w          - preview files in the opposite pane
	
    :view      - display views of highlighted items like text files
	
    Shift-Tab  - enters view mode of selected item
	
    optional install:
	
        tree     - directory previews
		
        mp3info  - viewing information about mp3 files
		
        poppler  - pdf previews

	bookmarks
	
    :marks               - list of bookmarks
	
    :marks list <term>   - search bookmarks
	
    dd                   - delete a boomark
	
    m[a-z][A-Z][0-9]     - to set a mark for the current file
	
    '[a-z][A-Z][0-9]     - moves to the file set for the mark

	rename

    cw   - rename a file or files.
	
    cW   - change only name of file (without extension)
	
    A    - change only extension

3. custom config (~/.vifm/vifmrc)

" show all bookmarks
`nmap bb :marks <cr>`

" copy files to the opposite pane
`nmap yy :!cp %f %D<cr>`

" move files to the opposite pane
`nmap dd :!mv %f %D<cr>`

" make a backup copy file in the same pane
`nmap yp :clone <cr>`

" trash-cli to handle trash
`nmap <delete> :!trash-put %f<cr>`
`nmap u :!restore-trash <cr>`
`nmap DD :!trash-empty <cr>`

" spacebar to select files; same as t (tag)
`nmap <space> t`

" quicker quitting program; it will resume where you left off
`nmap q ZZ`

4. start at different locations

    vifm .                       - start on current folder
	
    vifm ~/Download ~/Templates  - start on specific folder



