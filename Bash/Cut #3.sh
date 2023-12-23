#!/bin/bash

while IFS= read -r line; do
    echo -n "$line" | cut -c2-7
done 
