#!/bin/bash

ERRORS=$(grep "ERROR" system-errors.log| wc -l)

echo Errors: $ERRORS

if  [ $ERRORS -gt 10 ]
   then 
    echo "🚨Too many errors"
else 
    echo "✅It's okay , not too many errors"
fi

