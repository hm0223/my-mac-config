# homebrew image
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"

# change global maven version from 3.8.1 to 3.6.3, high version only support 'https'
export MAVEN_HOME=/Users/huwenfeng/Public/maven/apache-maven-3.6.3
#export MAVEN_HOME=/usr/local/Cellar/maven/3.8.1
export PATH=$MAVEN_HOME/bin:$PATH

# helpful web service tools
export CXF_HOME=/Users/huwenfeng/Public/apache-cxf-3.3.13
export PATH=$CXF_HOME/bin:$PATH

# resolve git chinese encode show error.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Anaconda3
export PATH=/usr/local/anaconda3/bin:$PATH
