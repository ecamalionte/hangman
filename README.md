# Hangman

A game for two in which one player tries to guess the letters of a word,
and failed attempts are recorded by drawing a gallows and someone hanging on it, line by line.
Ps.: The gallows was not implemented.

## Example of code written in Haskell

This is an IO Monad exercise used by Erik Meijer - DelftX: FP101x Introduction to Functional Programming

## How to play

You will need to install a Haskell compiler.
I have used Glasgow Haskell Compiler - ghc

```shell
$ ghc hangman.hs
$ ./hangman
Enter a secret word: *******
Try to guess: h
h______
Try to guess: ha
ha___a_
Try to guess: hang
hang_an
Try to guess: hangman
You win!!!
```

Or

```shell
$ ghci
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
Prelude> :load hangman.hs
[1 of 1] Compiling Main             ( hangman/hangman.hs, interpreted )
Ok, modules loaded: Main.
*Main> main
Enter a secret word: *******
Try to guess: h
h______
Try to guess: ha
ha___a_
Try to guess: hang
hang_an
Try to guess: hangman
You win!!!
```

## TODO

1. Draw gallows and someone hanging on it.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/bricky/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
