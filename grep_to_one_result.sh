#!/bin/bash
trie_pattern=`python trie.py $1` 
grep --include=$4 -rin -E ${trie_pattern} $3  > "$2/result.txt"

