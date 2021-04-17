#!/bin/sh

# Create mp3s tuning each down 1-25 100ths of a semitone
for i in {1..25}
do
    sox input.mp3 output-${i}.mp3 pitch -q -${i}
done


# Create mp3s tuning each up up 1 to 25 100ths of a semitone
for i in {1..25}
do
    sox input.mp3 output+${i}.mp3 pitch -q ${i}
done
