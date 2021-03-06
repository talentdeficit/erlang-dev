# erlang-dev (v1.0) #

a disposable [vagrant][vagrant] enviroment for erlang development

provisioned with chef

erlang-dev is released under the terms of the [MIT][MIT] license

copyright 2013 alisdair sullivan


## index ##

* [quickstart](#quickstart)
* [configuration](#configuration)
* [description](#description)
* [acknowledgements](#acknowledgements)
* [license](#license)


## quickstart ##

install [vagrant][vagrant]

download a vagrant box
```bash
$ vagrant box add chef/ubuntu-14.04
```

start vagrant and get to work
```bash
$ vagrant up
$ vagrant ssh
```


## configuration ##

### git ###

* `USER`

    sets `git config --system user.name`

* `EMAIL`

    sets `git config --system user.email`

### locale ###

* `LOCALE`

    without an explicit locale set mix fails to work

### erlang solutions repository ###

* `ERLVSN`

    the erlang solutions' erlang version to install

* `EXVSN`

    the erlang solutions' elixir version to install

### synced directories ###

* `SYNC`

    vagrant supports syncing (mirroring) directories on the host machine with directories on the virtual machine. `SYNC` is a list of 2 element arrays that map a directory on the host machine to a directory on the virtual machine. vagrant requires the directory on the virtual machine be specified as an absolute path. the host machine directories may be specified relative to the `Vagrantfile`


## description ##

it's early days. right now it just builds an ubuntu environment with the latest erlang. stay tuned


## acknowledgements ##

all those people who can't get erlang to build on their machine


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



[vagrant]: http://www.vagrantup.com/
[MIT]: http://www.opensource.org/licenses/mit-license.html