# Shell Script Bug: Word Splitting in File Processing

This repository demonstrates a common but easily overlooked bug in shell scripting: improper handling of word splitting when dealing with lists of files.  The script `bug.sh` attempts to process a list of files, but it fails if any filenames contain spaces. This is because the shell splits the `$files` variable into separate words based on spaces, even when the intent is to process them as single filenames.

The solution (`bugSolution.sh`) demonstrates the correct way to handle filenames, using arrays to avoid word splitting issues.

## How to Reproduce

1. Clone this repository.
2. Run `./bug.sh`. Observe the incorrect processing of filenames.
3. Run `./bugSolution.sh`. Observe the correct processing of filenames.

## Explanation

The issue lies in the unquoted expansion of the `$files` variable in the `for` loop. When the shell expands the variable, it splits the string into multiple words based on whitespace. This means that filenames with spaces will be incorrectly processed as multiple separate filenames.

The solution uses an array to store the filenames.  This ensures that filenames are treated as single units, even those containing spaces. 