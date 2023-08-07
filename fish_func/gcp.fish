function gdig
    # Check if the domain argument is provided
    if test (count $argv) -eq 0
        echo "Usage: dns_query <domain>"
        return
    end

    set domain $argv[1]

    # Convert domain to --zone parameter value
    set zone (echo $domain | sed 's/\./-/g')

    # Execute the gcloud command
    gcloud dns record-sets list --zone=sinyi-com-tw --name=$domain
end

function gdigx
    # Check if the domain argument is provided
    if test (count $argv) -eq 0
        echo "Usage: dns_query IP"
        return
    end

    set IP $argv[1]

    # Execute the gcloud command
    gcloud dns record-sets list --zone=sinyi-com-tw --filter="DATA:$IP"
end
