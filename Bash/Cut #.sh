#!/bin/bash

n=3

while IFS= read -r line; do
    char="${line:n-1:1}"  
    echo "$char"
done
