#!/bin/bash

read -p "insert your marks: " mark

result=$([[ $mark -gt 0 ]] && echo "Positive" || echo "Negative")
echo "Number is $result"
