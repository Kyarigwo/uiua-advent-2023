DayOneInput ← &fras "day-1-input.txt"

# part one
ExampleOne ← $ 1abc2
             $ pqr3stu8vwx
             $ a1b2c3d4e5f
             $ treb7uchet

# part two
ExampleTwo ← $ two1nine
             $ eightwothree
             $ abcone2threexyz
             $ xtwone3four
             $ 4nineeightseven2
             $ zoneight234
             $ 7pqrstsixteen

Names ← {"zero"
         "one"
         "two"
         "three"
         "four"
         "five"
         "six"
         "seven"
         "eight"
         "nine"}

Digits ← ≡$"_" ⇡10

ToGrid ← /+ ×⇡10 ⊠⊐⌕

ExampleTwo
⬚@ ⊜∘ ≠ @\n.

≠0.+∩ToGrid Digits, Names
∩(/+≡⋕+@0 ≡(⊟ ⊃⊢ (⊢ ⇌) ▽) ≠0.)
