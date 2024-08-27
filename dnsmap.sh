#!/usr/bin/env bash

# 
read -p "please name domain : " domain

# 
if [[ $domain =~ ^[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
    echo "Success Domain  dnsmap..."

        
	    output_file="${domain}_subdomains.txt"
	        dnsmap $domain -r $output_file

		    echo " $output_file "
		    else
		        echo "please enter a valid domain!"
			fi


