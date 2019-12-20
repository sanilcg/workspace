node 'node1' {
    notify{ "***** NODE1 BLCOK ****":}
    include java::install
    include tomcat::install
    include tomcat::service
}

node 'node2' {
    notify{ "***** NODE1 BLCOK ****":}
    include java::install
    include tomcat::install
    include tomcat::service
}

node default {

    notify {"checkpoint_1":
     message => "
       checkpoint_1

       Applying Default BLCOK
       Looks like there is no definition for this node....

       "

    }
}
