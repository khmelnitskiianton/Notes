# Tmux

All commands in tmux are triggered by a **prefix key** followed by a **command key** (all you `emacs` weirdos out there will feel right at home). By default, tmux uses `C-b` as prefix key. This notation might read a little weird if you’re not used to it. In “emacs” notation `C-` means “press and hold the `Ctrl` key. Thus `C-b` simply means press the `Ctrl` and `b` keys at the same time.
## Panels

The shortcut to split panes into a left and a right pane is `C-b %`
To split a pane into top and bottom panes use the `C-b "`
Switching to a different pane uses the `C-b <arrow key>`
Closing a pane type `exit` or hit `Ctrl-d`
## Windows

Creating new windows is as easy as typing `C-b c`
To switch to the _previous_ window (according to the order in your status bar) use `C-b p`, to switch to the _next_ window use `C-b n`
 If you’ve created many windows you might find it useful to go to a window directly by typing its number (the status bar will tell you which window has which number), just use `C-b <number>` where `<number>` is the number in front of the window’s name in your status bar.
## Sessions

To detach your current session use `C-b d`. You can also use `C-b D` to let tmux give you a choice which of your sessions you want to detach. Detaching from a session will leave everything you’re doing in that session running in the background. You can come back to this session at a later point in time.

List currently running sessions 
`tmux ls`
To connect to that session you start tmux again but this time tell it which session to attach to 
`tmux attach -t 0`
If you prefer to give your sessions a more meaningful name (instead of a numerical one starting with 0) you can create your next session using
`tmux new -s database`
This will create a new session with the name “database”.
You could also rename your existing session:
`tmux rename-session -t 0 database`
The next time you attach to that session you simply use `tmux attach -t database`. If you’re using multiple sessions at once this can become an essential feature.
## Hotkeys

`C-b ?` to see a list of all available commands and start experimenting.
Some of the commands that I’m using myself quite often are:
+ `C-b z`: make a pane go full screen. Hit `C-b z` again to shrink it back to its previous size
+ `C-b C-<arrow key>`: Resize pane in direction of `<arrow key>`
+ `C-b ,`: Rename the current window