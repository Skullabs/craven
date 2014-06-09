# craven
A tool to manage your project dependencies during C build. Maybe one day, it will
be the "maven" of your C/C++ projects.

## Sample project configuration
The following ```project.craven``` file will help you to create
a new dependency library.

```text
PROJECT]
# create an identification to your library
GROUP=com.example
VERSION=1.0-SNAPSHOT
ARTIFACT=dependency

[DEPS]
#this lib have no dependency
```

When you type ```craven build``` will take all *.o file generated by you
and will create an *.a library at ```output/```.

The following crave project file will reference your just created dependency.
```text
PROJECT]
# create an identification to your library
GROUP=com.example
VERSION=1.0-SNAPSHOT
ARTIFACT=mybinary

[DEPS]
# group     # artifact # version
com.example dependency 1.0-SNAPSHOT
```

You can easily compile your binary through the following command line.

```console
$ gcc `craven config-includes` mybinary.c `craven config-libs` -o mybinary
```

# Under early development
Craven stills under development. Right now, it can't replace your makefile
on your project. Contributions are welcome to achieve this goal! ;)

# License
craven is release under Apache License 2 terms.
