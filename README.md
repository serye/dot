# dot

<S-J> - move to split down 
<S-K> - move to split up
<S-L> - move to split right
<S-H> - move to split left


<C-W>> - resize split one char right
15<C-W>> - resize split 15 chars right
<C-W> - new split

multiple cursors:
select text paste <C-N> as many times as many item you wanna select paste 'v' to exit visual mode, past 'i' for input

<S-Q> - hide line nums
<S-Y> - copy selection to clipboard
<S-V> - select whole line

ve - select to word end
vb - select to word begining


<C-O> - go to prev viewed location
<C-I> - go to next viewed location

/ - search
/\c - case insensitive search
// - search and highlight selection


:%s///n - number of search matches

:%s/foo/bar/g - find each occurrence of 'foo' (in all lines), and replace it with 'bar'. 

:s/foo/bar/g - find each occurrence of 'foo' (in the current line only), and replace it with 'bar'. 

:%s/foo/bar/gc - change each 'foo' to 'bar', but ask for confirmation first. 

:%s/\<foo\>/bar/gc - change only whole words exactly matching 'foo' to 'bar'; ask for confirmation. 

:%g/foo/d - delete all lines containing foo


<F2> - file tree
<F5> - outline
<F9> - disable/enable highlight


the next may not work if you are not in directory with file:
gf - go to file under cursor 
gsf - go to file under cursor in new split
to change dir just :cd

bn - next buffer
bp - previous buffer
bd - delete (close) buffer


ysiw" - create "" around the word under cursor
cs"( - change "foo" to ( foo )
cd") - change "foo" to (foo)
ds" - change "foo" to foo
yss" - "" around whole the line 


GREP{C,Java,Cpp,H,Src} and args the same to grep - grep by only files with extension 
to highlgiht search pattern - /<UP><ENTER> 



