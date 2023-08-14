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

function gssh
    set name $argv[1]
    if [ -z "$name" ]
        echo "Usage: list_instance <instance-name>"
        return
    end

    # 使用 gcloud 查詢虛擬機實例
    set instance_info (gcloud compute instances list --filter=name:$name --format="value(name,zone)")
    
    if [ -n "$instance_info" ]
        set -l instance_name (echo $instance_info | awk '{print $1}')
        set -l zone (echo $instance_info | awk '{print $2}')
        
        gcloud compute ssh --zone $zone $instance_name --project "sinyi-cloud" --tunnel-through-iap
    else
        echo "No instance found with the name '$name'."
    end
end    
