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

## `utils`

### `build_ll_to_exe2.sh`

Usage:

`build_ll_to_exe2.sh <output-path>`

Takes the output of Jellyfish compiler and links an executable


### `compile_runtime.sh`

Compiles Jellyfish runtime.

### `jfc.sh`

Usage:

`jfc.sh [--run] <compiler-version> <project>`

Compiles a `project` with a compiler version `compiler-version`, and links it. There `stable` is a special version, which uses `known_good.exe` compiler.

If `--run` is specified, runs the resulting executable.

### `run.sh`

Usage:

`run.sh <project> [extra-args...]`

Compiles a Jellyfish compiler from the source, using a `well_known.exe` as a compiler.

Then, compiles a `project` with this new version of the compiler, and runs it with `extra-args`.

### `selfcheck.sh`

Performs a self check on the compiler in five steps:

  - Compiles a compiler with a `well_known.exe` (this step is skipped if `--no-phase1` is passed).
  - Compiles a compiler with a new version from step 1
  - Compiles a compiler with a new version from step 2
  - Compiles `test` project with a new version from step 3
  - Runs the `test` executable

### `update_compiler.sh`

Performs a self check, and if it passes, replaces `well_known.exe` with a new executable.