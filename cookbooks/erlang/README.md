# chef-erlang (v0.1) #

a chef recipe for erlang

## usage ##

### installing erlang ###

include `recipe[erlang]` in your `run_list` and add releases to the `releases`
attribute list. for example:

```ruby
node.default['erlang']['releases'] = [
  {
    "otp_git_ref" => "OTP_R16B",
    "prefix" => "/home/talentdeficit/.erlenv/releases/r16b",
    "skip_apps" => [
      "cosTime",
      "cosEvent",
      "cosEventDomain",
      "cosFileTransfer",
      "cosNotification",
      "cosProperty",
      "cosTransactions",
      "orber"
    ],
    "config_flags" => [
      "--without-javac"
    ]
  },
  {
    "otp_git_ref" => "OTP_R15B03-1",
    "prefix" => "/home/talentdeficit/.erlenv/releases/r15b03-1",
    "rebar" => false
  }
]
```

this will install `r16b` and `r15b03-1` in the specified locations

leaving `releases` empty will result in installing `r16b03` in the `/usr/local`
with the default configure options

the following attributes are available to override:

* `prefix`
  the dir to install `erlang` to. this sets `--prefix` in the
  configure script
* `otp_git_url`
  the url of the git repository to clone the release from
* `rebar_git_url`
  the url of the git repository to clone rebar from
* `otp_git_ref`
  the git reference to checkout from the otp git repo
* `rebar_git_ref`
  the git reference to checkout from the rebar git repo
* `skip_apps`
  a list of applications to skip during compilation
* `config_flags`
  a list of flags to pass to the configure script
* `rebar`
  whether to install rebar, `true` or `false`

## license ##

The MIT License (MIT)

Copyright (c) 2013 alisdair sullivan <alisdairsullivan@yahoo.ca>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.