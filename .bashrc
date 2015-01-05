# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PATH=$HOME/ruby/gems/bin:/usr/local/ruby20/bin:$PATH
export GEM_PATH=$HOME/ruby/gems:/usr/local/ruby20/lib64/ruby/gems/:$GEM_PATH
export BUNDLE_PATH=$HOME/ruby/gems
export BUNDLE_DISABLE_SHARED_GEMS=1
