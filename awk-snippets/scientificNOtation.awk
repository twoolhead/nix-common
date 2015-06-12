#!/usr/bin/awk -f

        #########################
        # Scientific {NO}tation #
        #########################

        BEGIN {
                printf("%s\n", "Converting scientific -> decimal.");
        }{
                for(field=1;field<=NF;field++) {
                        if($field ~ /[0-9]+\.[0-9]+E-[0-9]+/){
                                $field=sprintf("%f", $field);
                        }
                }
                printf("%s\n", $0);
        }
