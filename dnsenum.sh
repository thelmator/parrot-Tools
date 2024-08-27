#!/usr/bin/env bash

#
read -p "Domain Name Please: " domain

# 
if [[ $domain =~ ^[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
    echo " dnsenum..."

        #  dnsenum 
	    output_file="${domain}_dnsenum_output.txt"
	        
		    # ا dnsenum 
		        dnsenum $domain | tee $output_file

			    echo "ا $output_file ."
			    else
			        echo "Not Domain "
				fi

