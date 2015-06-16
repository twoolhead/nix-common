#!/usr/bin/awk -f 

  BEGIN {
    printf("ConvertingInput{field=%s, expression=%s, conversion=%s}\n", field, expression, conversion);
  } {
        for(field=1;field<=NF;field++) {
          if($field ~ /[0-9]+\.[0-9]+E-[0-9]+/){
            $field=sprintf("%f", $field);
          }
        } 
        printf("%s\n", $0);
    }
