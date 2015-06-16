#!/usr/bin/awk -f 

  BEGIN {
    printf("ConvertingInput{expression=%s, conversion=%s}\n", expression, conversion);
  } {
      for(field=1;field<=NF;field++) {
        if($field ~ /expression/){
          $field=sprintf(conversion, $field);
        }
      } 
      printf("%s\n", $0);
    }
