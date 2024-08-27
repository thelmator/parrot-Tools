#!/bin/bash

#
run_dnstracer() {
    local domain=$1
        local output_file=$2

	    echo "Running dnstracer for $domain..."
	        dnstracer $domain > $output_file

		    echo "dnstracer output saved in $output_file"
		    }

		    # dnsrecon 
		    run_dnsrecon() {
		        local domain=$1
			    local output_file=$2

			        echo "Running dnsrecon for $domain..."
				    dnsrecon -d $domain > $output_file

				        echo "dnsrecon output saved in $output_file"
					}

					# 
					read -p "Enter the domain name: " domain

					# 
					dnstracer_output="dnstracer_output.txt"
					dnsrecon_output="dnsrecon_output.txt"

					# 
					run_dnstracer $domain $dnstracer_output
					run_dnsrecon $domain $dnsrecon_output

					echo "All results saved successfully!"

