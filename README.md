# pandoc-chapters

A template for pandoc document writing with build script.


## Prerequisites

- Pandoc (ver 1.17.0.3 as of writing)
- Git

Optional:

- fswatch, watching the file system for changes
- Browser extension to automatically reload html

## Usage

1. Clone this repo
2. (optional) Delete the .git directory and ```git init```
3. Write some stuff in the ```./docs``` directory
4. ensure ```chapters``` file includes all the files you need
	- for example ```find ./docs -name "*.*" > ./chapters```
5. run ```./build```
6. ???
7. Profit

## Known Issues

Getting ```pandoc: Duplicate link reference `[\\]' "source"``` warning.

## References

[CSS Templates](https://github.com/kjhealy/pandoc-templates)

[Other Templates](https://github.com/kjhealy/pandoc-templates/tree/master/templates)
