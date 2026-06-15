The configuration files are managed with [GNU Stow].

Each top-level directory is a package. To symlink a package's configs into `$HOME`:

```console
$ stow <package>
```

Use `-n` to do a dry run and see what would be linked.

[GNU Stow]: https://www.gnu.org/software/stow/
