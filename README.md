# webmachine

[![Actions Status](https://github.com/idkjs/webmachine/workflows/CI/badge.svg)](https://github.com/idkjs/webmachine/actions)

ocaml webmachine implementation

## Contributing

### Dependencies

```sh
esy install @opam/cohttp @opam/dispatch @opam/re @opam/uri @opam/ptime
```

### Developing

You need Esy, you can install the latest version from [npm](https://npmjs.com):

```bash
yarn global add esy@latest
# Or
npm install -g esy@latest
```

> NOTE: Make sure `esy --version` returns at least `0.5.8` for this project to build.

Then run the `esy` command from this project root to install and build depenencies.

```bash
esy
```

Now you can run your editor within the environment (which also includes merlin):

```bash
esy $EDITOR
esy vim
```

Alternatively you can try [vim-reasonml](https://github.com/jordwalke/vim-reasonml)
which loads esy project environments automatically.

After you make some changes to source code, you can re-run project's build
again with the same simple `esy` command.

```bash
esy
```

This project uses [Dune](https://dune.build/) as a build system, and Pesy to generate Dune's configuration files. If you change the `buildDirs` configuration in `package.json`, you will have to regenerate the configuration files using:

```bash
esy pesy
```

### Running Binary

After building the project, you can run the main binary that is produced.

```bash
esy start
```

### Running Tests

You can test compiled executable (runs `scripts.tests` specified in `package.json`):

```bash
esy test
```

### Building documentation

Documentation for the libraries in the project can be generated with:

```bash
esy doc
open-cli $(esy doc-path)
```

This assumes you have a command like [open-cli](https://github.com/sindresorhus/open-cli) installed on your system.

> NOTE: On macOS, you can use the system command `open`, for instance `open $(esy doc-path)`

### Creating release builds

`esy` allows creating prebuilt binary packages for your current platform, with no dependencies:

```bash
esy release
```

This creates a directory `_release` containing a ready-to-publish npm package. You can go to this directory and execute `npm publish`:

```bash
cd _release
npm publish
```

### Repository Structure

The following snippet describes webmachine's repository structure.

```text
.
├── bin/
|   Source for webmachine's binary. This links to the library defined in `lib/`.
│
├── lib/
|   Source for webmachine's library. Contains webmachine's core functionnalities.
│
├── test/
|   Unit tests and integration tests for webmachine.
│
├── test_runner/
|   Source for the test runner's binary.
│
├── dune-project
|   Dune file used to mark the root of the project and define project-wide parameters.
|   For the documentation of the syntax, see https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
│
├── LICENSE
│
├── package.json
|   Esy package definition.
|   To know more about creating Esy packages, see https://esy.sh/docs/en/configuration.html.
│
├── README.md
│
└── webmachine.opam
    Opam package definition.
    To know more about creating and publishing opam packages, see https://opam.ocaml.org/doc/Packaging.html.
```
