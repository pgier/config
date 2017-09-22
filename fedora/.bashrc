# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vi=vim

export HISTCONTROL=ignoreboth

if [ -z "$DEFAULT_PATH" ]; then
    export DEFAULT_PATH=$PATH
fi

# User specific hosts file (not working!!)
# export HOSTALIASES=~/.hosts

alias python=/bin/python3
alias pip=/bin/pip3

# Various software intallations
export SOFTWARE=${HOME}/Software
export JAVA_HOME=${SOFTWARE}/jdk1.8.0_111
export JDK_HOME=$JAVA_HOME
export GRADLE_HOME=${SOFTWARE}/gradle-3.3
export MAVEN_HOME=${SOFTWARE}/apache-maven-3.3.9
export GOPATH=${HOME}/go
export GOBIN=${GOPATH}/bin
export GOROOT=${SOFTWARE}/go1.8.3
# export ANT_HOME=${SOFTWARE}/apache-ant-1.9.7
# export GROOVY_HOME=/opt/groovy/groovy-2.2.1
export HASKELL_STACK_HOME=${SOFTWARE}/stack-1.3.2-linux-x86_64-static
export VAGRANT_DEFAULT_PROVIDER=virtualbox
export OPENSHIFT_CLIENT=${SOFTWARE}/openshift-origin-client-tools-v3.6.0-c4dd4cf-linux-64bit
export CASSANDRA_HOME=/home/pgier/Downloads/apache-cassandra-3.9

. ~/bin/set_path

# Initialize rbenv
eval "$(rbenv init -)"
# Haskell stack bash autocompletion
eval "$(stack --bash-completion-script stack)"


# added by travis gem
[ -f /home/pgier/.travis/travis.sh ] && source /home/pgier/.travis/travis.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/pgier/Software/google-cloud-sdk/path.bash.inc' ]; then source '/home/pgier/Software/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/pgier/Software/google-cloud-sdk/completion.bash.inc' ]; then source '/home/pgier/Software/google-cloud-sdk/completion.bash.inc'; fi
