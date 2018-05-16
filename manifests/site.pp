## site.pp ##

# This file (/etc/puppetlabs/puppet/manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition. (The default node can be omitted
# if you use the console and don't define any other nodes in site.pp. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.)

## Active Configurations ##

# Disable filebucket by default for all File resources:
File { backup => false }

# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.

node 'jtlee1192.mylabserver.com' {
  notify { 'test_msg_for_jtlee1192': 
    message => 'this is jtlee1192 message using a node def!  i will pass my Puppet cert exam!!',
  }
}

node 'jtlee1193' {
  notify { "this matches jtlee1193!!!": }
}

#node /^jtlee1193/ {
#  notify { "I will pass my Puppet cert exam first time!!!!": }
#  notify { "This is a node definition using regex!!!": }
#}

node default {
#  $test_top_scope = "this is node scope!!"
#  notify { "test_top_scope":
#    message => "this is a top scope variable: ${test_top_scope}"	
#  }
#  notify { "I will pass my Puppet cert exam!!": }
#  class { 'java': }
}
