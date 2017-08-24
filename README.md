## `modules` 

Contains shared Jellyfish modules.

For now, Jellyfish compiler is not smart enough to work with modules, but I still keep them as if they are fully implemented.

Every module is either:

 - In its own directory `<module_name>`
 - In its own directory `<module_name>-<version>`
 - In a directory `<module_name>/<version>`
 - In a directory `<module_name>/latest`

Module root is a directory containing the file `<name>.jfmodule` (currently empty).

Module root directory must contain a directory named `src` where (possibly in subdirectories as well) all the Jellyfish source code resides.

## `projects`

Contains Jellyfish projects and project specific modules.

Project is defined by a `<name>.jfproject` file.

Projects are not currently implemented, so instead of a project file format, I'm using a very simple format:

  - `<name> <path>` in every line, where `name` is a module name, and `path` is a module path.

Path can be a relative path, or a path starting with `modules:/`, relative to the `modules` directory.





