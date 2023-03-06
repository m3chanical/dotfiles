# zshack /ˈʒæk/ (get it?)

Requires zsh 5.0.7 or better.

## "Frozen in the Past" Prompt

I have programmed my prompt to turn gray after hitting return.  This
prevents my screen from becoming insanely distracting.  I like using
Powerline fonts for my prompt, but having the powerline prompt reprinted
all over the place in full color is just too much.

Turning the prompt gray is the easy part, making it turn back to color is
apparently the hard part.  I do this inside the zle `zle-line-init` widget,
which is supposed to be called every time the prompt is setup to accept new
input.  For zsh 5.0.7+, this widget gets called right before a new prompt
is rendered, which works beautifully.  For older versions of zsh, the
`zle-line-init` widget is called only after a key has been pressed at the
prompt.  As a result, for older versions of zsh, the prompt stays gray
until you start typing.  I hate this behavior and have no been able to find
a work around for older versions of zsh.

## Space Aware, Collapsing Git Prompt

I used to use GNU screen _constantly_ for about 10 years. Now, I use tmux.
A lot.  I use horizontal and vertical splits.  A lot.  Problem is with
enough vertical splits, the number of columns starts approaching the prompt
width and it becomes awkward to type.  To partially combat this, I have
made the Git addition to the prompt automatically fold in when the number
of available columns starts getting appreciably small. When folded, the
branch symbol is still shown to let you know you are in a Git repo, and the
symbol is still colorized appropriately to let you know if you are dirty or
clean.  The branch name, however, is hidden to save space.  Since your
fingers aren't broken, you can figure out what branch you are in the old
fashion way (if you have managed to forget).
