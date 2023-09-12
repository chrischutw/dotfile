if status is-interactive
    functions gcp
    functions common
    # Commands to run in interactive sessions can go here
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/chris/google-cloud-sdk/path.fish.inc' ]; . '/home/chris/google-cloud-sdk/path.fish.inc'; end

# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"

alias l="ls -al --color=always"
# docker
alias dc="docker-compose"
alias d="docker"
alias di="docker images"
alias dp="docker ps -a"
alias dl="docker logs -f"
alias dc="docker-compose"
alias dcd="docker-compose down"
alias dcu="docker-compose up -d"
alias de="docker exec -it"
alias dr="docker rmi"
alias dv="docker volume"
# k8s
alias k="kubectl"
alias kp="kubectl get pods -A"
# Terraform
alias t="terraform"
alias ta="terraform apply"


alias p="poetry"
alias grep="grep --color=auto"

source ~/.asdf/asdf.fish
