# Sirocco superproject

This is Sirocco git superproject. A complete Sirocco release can be compiled from this project.

To clone this repository, execute:

    git clone --recursive git@github.com:ow2-sirocco/sirocco.git
    git submodule update --remote

If you need to get updates from submodules

    git submodule foreach git pull origin master

(prerequisite: a GitHub account with a SSH key)

Sirocco repository structure:

    sirocco                           - sirocco superproject (git@github.com:ow2-sirocco/sirocco.git)
    |
    +---cloudmanager-business-module  - submodule, CloudManager (git@github.com:ow2-sirocco/sirocco-cloudmanager.git)
    +---cimi-web-module               - submodule, CIMI Web Module (git@github.com:ow2-sirocco/sirocco-cimi-api-server.git)
    +---dashboard-web-module          - submodule, Web Portal (git@github.com:ow2-sirocco/sirocco-web-dashboard.git)
    +---cimi-client                   - submodule, CIMI Java SDK and command-line tools (git@github.com:ow2-sirocco/sirocco-cimi-client.git)
    +---openstack-java-sdk            - submodule, Fork of Woorea OpenStack Java SDK  (git@github.com:ow2-sirocco/openstack-java-sdk.git)
    \---sirocco-ear                   - maven module in charge of generating the Sirocco application archive ready to be deployed on a JavaEE Container


## Building the source

Prerequisite:   

* maven 3
* Java JDK 7

To build the source, execute:

    mvn clean install

The output of the compilation consists of

* Sirocco JavaEE application archive: `sirocco-ear/target/sirocco-XXX-SNAPSHOT.ear`
* CIMI command-line tools: `cimi-client/sirocco-cimi-command-line-tools/target/sirocco-cimi-command-line-tools-XXX-SNAPSHOT-dist.tar.gz` 
* Sirocco command-line tools: `cloudmanager-business-module/sirocco-api/command-line-tools/target/sirocco-api-command-line-tools-XXX-SNAPSHOT-dist.tar.gz`

## Installing Sirocco the debian Way

On Debian or Ubuntu, you can use our packages :

    wget -O - http://sirocco.ow2.org/debian/sirocco.gpg.key | sudo apt-key add -
    echo "deb http://sirocco.ow2.org/debian sirocco  main" > /etc/apt/sources.list.d/sirocco.list
    apt-get update
    apt-get install sirocco-server

## Create the debian package

install `fakeroot`, `debhelper`, `dbconfig-common`, `debconf`

    mvn clean install
    cd debian-packaging
    mvn clean install

## Installing Sirocco the hard way

Prerequiste:

* JRE 7
* MySQL server 5.x

### Install GlassFish 4

    wget http://download.java.net/glassfish/4.0/release/glassfish-4.0.zip

unzip glassfish, say in /opt

### Configure Glassfish for Sirocco

> Sirocco requires that applications and GlassFish logging output be redirected to the same log file using the SLF4j API:

    cd /opt/glassfish4/glassfish/lib/endorsed
    
    wget http://repo1.maven.org/maven2/ch/qos/logback/logback-classic/1.0.13/logback-classic-1.0.13.jar
    wget http://repo1.maven.org/maven2/ch/qos/logback/logback-core/1.0.13/logback-core-1.0.13.jar
    wget http://repo1.maven.org/maven2/org/slf4j/slf4j-api/1.7.5/slf4j-api-1.7.5.jar
    wget http://repo1.maven.org/maven2/org/slf4j/jul-to-slf4j/1.7.5/jul-to-slf4j-1.7.5.jar
    
    cp  etc/glassfish_config/* /opt/glassfish4/glassfish/domains/domain1/config

> To workaround a blocking bug in GlassFish 4.0 (to be fixed in GF 4.0.1):
>
>    cd /opt/glassfish4/glassfish/modules
>    wget http://repo1.maven.org/maven2/org/glassfish/jersey/containers/glassfish/jersey-gf-cdi/2.0/jersey-gf-cdi-2.0.jar
>    mv jersey-gf-cdi-2.0.jar jersey-gf-cdi.jar

Then install MySQL JDBC connector

    cd /opt/glassfish4/glassfish/domains/domain1/lib/

    wget http://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.26/mysql-connector-java-5.1.26.jar

### Create and initialize Sirocco MySQL database

To create the Sirocco database accessible by user "sirocco" with password "sirocco", execute the following MySQL commands:

    CREATE USER 'sirocco'@'localhost' IDENTIFIED BY 'sirocco';
    GRANT ALL PRIVILEGES ON *.* TO 'sirocco'@'localhost' WITH GRANT OPTION;
    CREATE DATABASE sirocco;
    GRANT ALL ON *.* to sirocco@'%' IDENTIFIED BY 'sirocco';

Initialize the database by executing:

    mysql -usirocco -psirocco sirocco < etc/db/sirocco_db.sql

This will create a minimal configuration:

* user "admin" with admin priviledges (password: "admin")
* tenant "trial"
* use "guest" belonging to tenant "trial"
* mock cloud provider

#### Start GlassFish and deploy Sirocco

    asadmin start-domain
    asadmin deploy sirocco-XXX-SNAPSHOT.ear


### Install Sirocco and CIMI command-line tools

Get CIMI api and Sirocco API command-line tools tarballs:

* cimi-client/sirocco-cimi-command-line-tools/target/sirocco-cimi-command-line-tools-XXX-SNAPSHOT-dist.tar.gz 
* cloudmanager-business-module/sirocco-api/command-line-tools/target/sirocco-api-command-line-tools-XXX-SNAPSHOT-dist.tar.gz 

Install them somewhere and add their bin directories to the system path.

Export the following environment variables:

    export CIMICLIENT_TOOLS_HOME=<path to CIMI tools>
    export SIROCCO_TOOLS_HOME=<path to Sirocco tools>
    
    export CIMICLIENT_USERNAME=guest
    export CIMICLIENT_TENANT_ID=1
    export CIMICLIENT_PASSWORD=guest
    export CIMICLIENT_ENDPOINT_URL=http://localhost:8080/cimi/cloudEntryPoint
    
    export SIROCCO_USERNAME=admin
    export SIROCCO_PASSWORD=admin
    export SIROCCO_ENDPOINT_URL=http://localhost:8080/cimi

For bash auto-completion, copy the files `etc/cimiclient-completion.bash` and `etc/sirocco-client-completion.bash` to `/etc/bash_completion.d/`

## Testing your minimal installation

Check CIMI command-line took, e.g. list available machine configurations by executing:

    cimiclient machineconfig-list 
    
    
    +--------------------------------------------+------+---+------+------+
    |id                                          |name  |cpu|memory|disks |
    +--------------------------------------------+------+---+------+------+
    |http://localhost:8080/cimi/machineConfigs/13|xlarge|8  |16 GB |160 GB|
    |http://localhost:8080/cimi/machineConfigs/12|large |4  |8 GB  |80 GB |
    |http://localhost:8080/cimi/machineConfigs/11|medium|2  |4 GB  |40 GB |
    |http://localhost:8080/cimi/machineConfigs/10|small |1  |2 GB  |20 GB |
    |http://localhost:8080/cimi/machineConfigs/9 |tiny  |1  |512 MB|0 KB  |
    |http://localhost:8080/cimi/machineConfigs/8 |micro |1  |630 MB|0 KB  |
    +--------------------------------------------+------+---+------+------+

Check Sirocco command-line too, e.g. list available Cloud Providers by executing:

    sirocco-client provider-list 
    
    +--+---------------------+----+
    |Id|Name                 |API |
    +--+---------------------+----+
    |3 |a mock cloud provider|mock|
    +--+---------------------+----+

Connect to Sirocco Web Portal at `http://localhost:8080/dashboard/ui` (login: "guest", password : "guest" )


