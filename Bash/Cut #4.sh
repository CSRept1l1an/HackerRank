#!/bin/bash

while IFS= read -r line; do
    echo -n "$line" | cut -c1-4
done 
