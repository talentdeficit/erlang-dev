# basicest (v0.9) #

a really basic vagrant config for ubuntu (precise32) dev envs with apt, build-essential and git


## usage ##


```bash
$ vagrant up
$ vagrant ssh
```


## configuration ##

all configuration is accessed via `settings.rb`

### git configuration ###

* `GIT_USER`
    sets `git config --system user.name`
* `GIT_EMAIL`
    sets `git config --system user.email`

### synced directories ###

vagrant supports syncing (mirroring) directories on the host machine with
directories on the virtual machine. `SYNCED_DIRS` is a list of 2 element
arrays that map a directory on the host machine to a directory on the
virtual machine. vagrant requires the directory on the virtual machine
be specified as an absolute path. the host machine directories may be specified
relative to the `Vagrantfile`


## license ##

The MIT License (MIT)

Copyright (c) 2013 alisdair sullivan

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.