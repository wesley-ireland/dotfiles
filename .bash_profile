### Dotfiles Git Bare Repo ###
alias dotfiles='/usr/bin/git --git-dir=$HOME/code/wireland/dotfiles --work-tree=$HOME'

### Java Commands ###
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home"

### Maven Commands ###
export MAVEN_OPTS="-Xmx4096m"


### DropWizard ###
alias prelease='java8; mvn clean package -Prelease'
alias pcoverage='mvn clean install -Pcoverage'
alias pcoveragerpt='open -a "Google Chrome" ./target/site/clover/index.html'
alias droprun='java11; java -jar salesforce-account-service/target/salesforce-account-service-1.0.9-SNAPSHOT.jar server salesforce-account-service/configs/dev.yaml'
# alias dropbug='java11; mvnDebug exec:java -Dexec.mainClass="com.cvent.salesforceaccount.SalesforceAccountServiceApplication" -Dexec.args="server configs/dev.yaml" -e'
alias dropbug='java11; java -Xdebug -agentlib:jdwp=transport=dt_socket,address=9999,server=y,suspend=n -jar salesforce-account-service/target/salesforce-account-service-1.0.1-SNAPSHOT.jar server salesforce-account-service/configs/dev.yaml'
alias gendocs='raml2html salesforce-account-api/src/main/resources/api/api.raml > tmp/api.html'
alias runit='ENVIRONMENT=dev sh ./build-it.sh'


## Jest ##
alias jst='jest --env=node --config ./service/jest.config.js --DISABLE_LOGGING=true'


## NVM ##
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


## Bash Profile ##
alias bp='vi ~/.bash_profile'


## AWS ##
export AWS_CONFIG_FILE="~/.aws/config"
export AWS_DEFAULT_REGION=us-east-1
export AWS_DEFAULT_PROFILE=sandbox


## ASDF ## 
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
export PATH="$HOME/.asdf/plugins:$PATH"

## NX ##
export PATH="node_modules/.bin:$PATH"
