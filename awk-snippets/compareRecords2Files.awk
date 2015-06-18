#!/usr/bin/awk -f

# Using NR==FNR ordinal idiom.

	BEGIN {
		printf("Processing{[%s], [%s]} with Key[%s].\n", ARGV[1], ARGV[2], key);
	} {
		if(NR==FNR) {
			firstFile[$key]=$key;
			next;
		}

		if(firstFile[$key]) {
			printf("[%s], in [%s]\n", ARGV[2], $key);
		}
	}
