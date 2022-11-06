# v_standalone_template
A V template for **standalone executables**, including MIT license, a dev container and GitHub Actions workflows.
If you want to create a package, you can see [v_package_template](https://github.com/sakkke/v_package_template).

## Quick start guide

1. [Create a repository with this repository as a template](https://github.com/sakkke/v_standalone_template/generate).
2. Clone a created package to a local environment.
3. Run a command `git ls-files | xargs -I{} sed -i s/v_standalone_template/your_executable_name/g {}`.
4. Rename a file `./v_standalone_template.v` to `./your_executable_name.v`.
5. Clean up a file `./your_executable_name.v` and `./README.md`.

## License

MIT
