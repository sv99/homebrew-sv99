# homebrew-sv99

[Homebrew](http://brew.sh/) My formulas.

## Installing

```
brew tap sv99/sv99
brew untap sv99/sv99
```

## Formula duplicate names

If your tap contains a formula that is also present in master, that's fine,
but it means that you must install it explicitly by default.

If you would like to prioritize a tap over master, you can use
`brew tap-pin sv99/sv99` to pin the tap,
and use `brew tap-unpin sv99/sv99` to revert the pin.

Whenever a `brew install foo` command is issued, brew will find which formula
to use by searching in the following order:

* Pinned taps
* Core formulae
* Other taps

If you need a formula to be installed from a particular tap, you can use fully
qualified names to refer to them.

For example, you can create a tap for an alternative `vim` formula. Without
pinning it, the behavior will be

```bash
brew install vim                     # installs from Homebrew/homebrew
brew install username/repo/vim       # installs from your custom repo
```

## apg

apg - formula from [jzaleski/homebrew-jzaleski](https://github.com/jzaleski/homebrew-jzaleski)

```bash
brew install apg
```

## fb2converter

[fb2converter](https://github.com/rupor-github/fb2converter) Unified converter of FB2 files into epub2, kepub, mobi and azw3 formats

```bash
brew install fb2converter
```

## Contributing

See [CONTRIBUTING](CONTRIBUTING.md)

## License

See [LICENSE](LICENSE)