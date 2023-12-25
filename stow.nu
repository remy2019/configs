# stow.nu
# TODO: allow package picking

let names = (ls | where type == dir | get name)

def "main all" [] {
  $names | each { |it| stow --restow --verbose -t $env.HOME $it } | ignore
}

def "main delete" [] {
  $names | each { |it| stow --delete --verbose -t $env.HOME $it } | ignore
}

def main [] {}
