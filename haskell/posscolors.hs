-- black, white, blue, yellow, red

module Main where
    possColors (first, second) = [(a,b) | a <- first, b <-second, a < b]