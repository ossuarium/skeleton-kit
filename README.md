# skeleton-kit

_You should rewrite this and the other README.rdoc files to document your kit._

This is a kit skeleton you can use as a template for building your own kit.
For more information about Kit, visit the [project homepage](https://github.com/razor-x/kit).

## Building your own kit

You can build your own kit by using the skeleton kit as a template.
Just clone this with

````bash
$ git clone git://github.com/razor-x/skeleton-kit.git my-kit
````

and then install gem dependencies using

````bash
$ bundle
````

Next, you can create the database with

````bash
$ rake db:migrate
````

Each file and directory is individually documented if you want to dive in,
otherwise you can start with some more [comprehensive documentation](https://github.com/razor-x/kit/wiki/Building-your-own-kit).

### Add future update support

If you want to merge in future updates from this project and have your own origin,
set up a separate branch to track this.

````bash
$ git remote rename origin skeleton-kit
$ git branch skeleton-kit
$ git branch -u skeleton-kit/master skeleton-kit
````

Then add an origin and push master

````bash
$ git remote add origin git@github.com:username/my-kit.git
$ git push -u origin master
````

Now, the `skeleton-kit` branch will pull changes from this project,
which you can then merge into your other branches.

## Development

### Source Repository

The [skeleton-kit source](https://github.com/razor-x/skeleton-kit) is currently hosted at github.
To clone the project run

````bash
$ git clone git://github.com/razor-x/skeleton-kit.git
````

## License

skeleton-kit is licensed under the MIT license.

## Warranty

This software is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantibility and fitness for a particular
purpose.
