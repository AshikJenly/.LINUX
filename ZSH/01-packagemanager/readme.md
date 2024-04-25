### Package Management
To install packages using `pacman`, the package manager for Arch Linux:

```bash
sudo pacman -S <package_name>
```

Replace `<package_name>` with the name of the package you want to install.

For example, to install the `git` package, you would run:

```bash
sudo pacman -S git
```

If you want to install multiple packages at once, you can specify their names separated by spaces:

```bash
sudo pacman -S package1 package2 package3
```

For example:

```bash
sudo pacman -S vim neofetch htop
```

After running the `pacman -S` command, you may be prompted to confirm the installation by typing `Y` and then pressing Enter. Once confirmed, `pacman` will download and install the specified package(s) along with their dependencies.

Remember to prefix the command with `sudo` if you need administrative privileges to install packages.

If you want to search for packages before installing them, you can use the `pacman -Ss` command followed by a keyword:

```bash
pacman -Ss <keyword>
```


Once you find the package you want to install, you can use `pacman -S`.
