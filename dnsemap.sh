#!/usr/bin/env bash

# 
normalize_domain() {
    local domain=$1
        
	    if [[ $domain == www.* ]]; then
	            domain=${domain#www.}
		        fi
			    echo $domain
			    }


			    run_dnsenum() {
			        local domain=$1
				    echo " dnsenum  $domain..."
				        dnsenum --dnsserver 8.8.8.8 --threads 5 $domain >> "${domain}_dnsenum_results.txt"
					    echo " dnsenum  ${domain}_dnsenum_results.txt"
					    }

					    # 
					    run_dnsmap() {
					        local domain=$1
						    echo " dnsmap  $domain "
						        dnsmap $domain >> "${domain}_dnsmap_results.txt"
							    echo " dnsmap  ${domain}_dnsmap_results.txt"
							    }

							    # 
							    read -p " (Not www): " input_domain

							    # 
							    domain=$(normalize_domain $input_domain)

							    # 
							    if [[ -z "$domain" ]]; then
							        echo "please domain name ."
								    exit 1
								    fi

								    # 
								    run_dnsenum $domain
								    run_dnsmap $domain

								    echo "The End."

