DayThreeInput ← &fras "day-3-input.txt"

$ 467..467..
$ ...*......
$ ..35..633.
$ ......#...
$ 617*......
$ .....+.58.
$ ..592.....
$ ......755.
$ ...$.*....
$ .664.598..
E ←

# Part One

V ← E
LineLength ← +1⧻⊢⊜∘≠,@\n V
ToPoint ← ⊟⊃(⌊÷|◿) LineLength
FromPoint ← +× LineLength °⊟
Directions ← ☇1⊠⊟.¯1_0_1

V
≡(⧻ regex "\\d").
⊃(⊜□⊙(⇡⧻))⊜⋕

V
⊚≡(⧻ regex "[^0-9.\\n]") # gets indexes of all matches
≡ToPoint                 # change these to points
⍉⊠+Directions            # calculate all adjacent points
♭≡FromPoint              # flatten to indexes
▽≡(/↥∊°□):¤              # find matches
/+

# For part two
# part locations are unchanged
# for each gear, need to prepare list of neighbour points
# then get list of matching parts, take only ones that have
# two matching parts

V ← DayThreeInput
LineLength ← +1⧻⊢⊜∘≠,@\n V
ToPoint ← ⊟⊃(⌊÷|◿) LineLength
FromPoint ← +× LineLength °⊟
Directions ← ☇1⊠⊟.¯1_0_1

V
≡(⧻ regex "\\d").
⊃(⊜□⊙(⇡⧻))⊜⋕

V
⊚=@*          # gets indexes of all matches
≡ToPoint      # change these to points
⍉⊠+Directions # calculate all adjacent points
:≡FromPoint   # flatten to indexes

≡(□ ▽)⊙¤⍉⊠(/↥∊°□)
▽=2≡⧻.
≡°□
≡/×
/+
