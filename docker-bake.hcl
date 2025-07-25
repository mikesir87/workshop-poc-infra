group "default" {
  targets = [ "markdown-server", "setup", "workspace", "host-port-republisher", "workspace-cleaner" ]
}

target "_common" {
  dockerfile = "Dockerfile"
  
  platforms = [
    "linux/amd64",
    "linux/arm64",
  ]
}

target "markdown-server" {
  inherits = ["_common"]
  context = "./support/markdown-server"
  tags = [
    "michaelirwin244/workshop-poc:markdown-server",
  ]
}

target "setup" {
  inherits = ["_common"]
  context = "./support/setup"
  tags = [
    "michaelirwin244/workshop-poc:setup",
  ]
}

target "workspace" {
  inherits = ["_common"]
  context = "./support/workspace"
  tags = [
    "michaelirwin244/workshop-poc:workspace",
  ]
}

target "host-port-republisher" {
  inherits = ["_common"]
  context = "./support/host-port-republisher"
  tags = [
    "michaelirwin244/workshop-poc:host-port-republisher",
  ]
}

target "workspace-cleaner" {
  inherits = ["_common"]
  context = "./support/workspace-cleaner"
  tags = [
    "michaelirwin244/workshop-poc:workspace-cleaner",
  ]
}
