
# load project location and run {PROJECT_HOME}/go/generate.sh {PROJECT_HOME}/rust/generate.sh

export PROJECT_HOME=$(dirname $(realpath $0))
$PROJECT_HOME/go/generate.sh
$PROJECT_HOME/rust/generate.sh

