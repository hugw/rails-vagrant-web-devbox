# Vagrant web development box

A Virtual machine bundled with essentials tools for web development.

## Requirements

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/downloads.html)

## How to use

After you install Vagrant and VirtualBox, open your terminal and type:

```
$ git clone https://github.com/hugw/vagrant-web-devbox.git
$ cd vagrant-web-devbox/vagrant
$ vagrant up
```

Now your ready to start! Your Box has two folder, "vagrant" and "devbox":

* **/vagrant** has all the config files and provisions to boot the machine. Everytime you need to command your box to start or stop, it has to be done inside it.

* **/devbox** is your development folder that will be synced to `/devbox` inside your virtual machine.

#### Example

```
$ vagrant ssh # Enter the machine
$ cd /devbox  # Ready to work
```

#### Tips

* The Postgres server will start automatically, no need to type any command.

* There are two default users to use on Postgres
  * User: **postgres**, Pass: **postgres** (has remote access on port 5432 and host 0.0.0.0)
  * User: **root**, Pass: **root**

* To config your Redis server, enter the following commands on the terminal:

```
$ cd redis-stable/utils
$ sudo ./install_server.sh
$ sudo service redis_6379 start # To start the server
$ sudo service redis_6379 stop # To stop the server
$ sudo update-rc.d redis_6379 defaults # To run the server on startup
```

* There is no rails gem installed by default so you can choose your own version to install.


* For rails 4.2+ you need to use the alias `rs` to start the server because it will bind by default to 127.0.0.1/localhost instead of 0.0.0.0.

```
 $ rs # is the same as typing rails s -b 0.0.0.0
```

* There is a `.profile` inside /devbox folder that is linked to the virtual machine, any script you put on it, will be executed.

* If you wish to customize your box, `/vagrant/Vagrantfile` is your aswner. If you need more help with configuring your box, access the [vagrant docs](https://docs.vagrantup.com/).

* If you use mailcatcher gem, the port 1080 is already been forwarded by vagrant. But to work properly, you need to start mailcatcher binding to all IPs addresses.

```
$ mailcatcher --http-ip 0.0.0.0
```

## Useful commands

SSH into a running Vagrant machine and give you access to a shell.

```
$ vagrant ssh
```

Creates and configures the machine.

```
$ vagrant up
```

Shuts down the running machine.

```
$ vagrant halt
```

Stops the running machine Vagrant is managing and destroys all resources.

```
$ vagrant destroy
```

## What's inside

* Git
* NodeJs / Npm
* SQlite3
* PostgreSQL
* RVM with Ruby 2.1.1
* Heroku Toolbelt
* Redis Server

## Version history

- 0.0.1

## The MIT License (MIT)

Copyright (c) 2014. Hugo W. - hugo.wnt@gmail.com

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
