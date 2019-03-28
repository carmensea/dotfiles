navigating my jawn:

VIM:

:%s/SEARCH/REPLACE/gc - this finds and replaces while asking you per instance  
ctrl ]  = jumps to definition  
ctrl a = moves items up  
ctrl z = moves items down  
ctrl t = jumps back to where you were  
ctrl ^ = lists where the method is defined
ds( = deletes outer parenthesis  
i = insert mode  
o = insert on new line  
p = paste on new line  
ciw = cut inner word (puts you in INSERT mode)  
ct * = cut to WHATEVER CHAR U WANT. (ex: ct" will cut everything out until you get to quote. very nifty)  
ctr t = yank (copy)  
ctr v = visual block (ycan highlight by characters (up, down, left/right))  
shift v = highlights an entire line (use this in conjuction with yank or delete)  
ctrl n = open and close nerd tree  
j = moves down  
k = moves up    
l = moves right  
h = moves left  
shift a = moves cursor to end of line in INSERT mode  
shift i = moves cursor to beginning of line in INSERT mode  
w = moves cursor forward one whole word  
b = moves cursor backward one whole word  
u = undo  
ctr r = redo  
shift d = deletes from cursor to the end of line  
dd = deletes an entire line  
ctrl u = page up  
ctrl d = page down  
gg = goes to the top of file  
shift g = goes to the bottom of file  
.   = repeats whatever you just did. helps with tedious tasks  
fn f10 = setinvnumber (gets rid of line count.)  
;q = quit  
;w = write  
;wq = write quit  
;q! = force quit  
;wq! = force write quite  
;vs [file] = vertical split (put a space and you can tab into a new file)  
;e [file] = change into new file    
;Gblame = git blame  
> - highlighting a block of code and hitting `shift + .` block indents

FILE SEARCH WITHIN VIM  
ctrl p = find a file by name  
\a = fuzzy search without filename

TMUX:

ctr f | = adds another pane vertically. good for debugging, irb, running ruby.  
ctrl l = moves from your pane to the right pane  
ctrl h = moves from your pane to the left pane  
ctrl j = moves from your pane down  
ctrl k = moves from your pane up  
ctrl r = search previous commands  
ctrl w = delete word  
ctrl e = move to end of line  
ctrl a = move to beginning of line  

OUTSIDE WORLD:  
cmd v: paste
