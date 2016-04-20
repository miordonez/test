# .bash_profile

##third modification

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
ulimit -u 16384
# User specific environment and startup programs

echo "Please execute ". .env" to set bash_profile"


#alias asm="export ORACLE_SID=+ASM1;export ORACLE_HOME=/u001/MXDB/grid;export PATH=/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/etc/opt/emcpower/bin:/home/oracle/bin:/u001/MXDB/grid/bin;export TNS_ADMIN=/u001/MXDB/grid/network/admin; env |grep ORACLE"
#export ORACLE_BASE='/u001/MXDB/oracle'
#alias db="export ORACLE_SID=mxapps1;export ORACLE_HOME=/u001/MXDB/oracle;export PATH=/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/etc/opt/emcpower/bin:/home/oracle/bin:/u001/MXDB/oracle/bin; env |grep ORACLE"
#env | grep ORA


######################e
bucle=0
        while ( test $bucle -ne 0 ) do
        {
                clear
                echo "Choose the database or asm you want to manage."
                echo "      "
                echo "     1) mxoptix1 "
                echo "     2) mxapps1  "
                echo "     3) prod1 "
		echo "     4) rmxoptix1	"
		echo "     5) rmanmx	"
                echo "     6) +ASM1    "
                echo "   "
                read option
                        case $option in
                           1) bucle=0
                           export PATH=/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/etc/opt/emcpower/bin:/u001/MXDB/oracle/product/11.2.0/db:/u001/MXDB/oracle/product/11.2.0/db/bin;
                           export ORACLE_SID=mxoptix1;
                           export ORACLE_HOME=/u001/MXDB/oracle/product/11.2.0/db;
                           export TNS_ADMIN=/u001/MXDB/grid/network/admin;
                           env |grep ORACLE
                           alias diag="cd /u001/MXDB/oracle/diag/rdbms/mxoptix/mxoptix1/trace;pwd"
                                        ;;
                           2) bucle=0
                           export PATH=/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/etc/opt/emcpower/bin:/u001/MXDB/oracle/product/11.2.0/db:/u001/MXDB/oracle/product/11.2.0/db/bin;
                           export ORACLE_SID=mxapps1;
                           export ORACLE_HOME=/u001/MXDB/oracle/product/11.2.0/db;
                           export TNS_ADMIN=/u001/MXDB/grid/network/admin;
                           env |grep ORACLE
                           alias diag="cd /u001/MXDB/oracle/diag/rdbms/mxapps/mxapps1/trace;pwd"
                                        ;;
                           3) bucle=0
                           export PATH=/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/etc/opt/emcpower/bin:/u001/MXDB/oracle/product/11.2.0/db:/u001/MXDB/oracle/product/11.2.0/db/bin;
                           export ORACLE_SID=prod1;
                           export ORACLE_HOME=/u001/MXDB/oracle/product/11.2.0/db;
                           export TNS_ADMIN=/u001/MXDB/grid/network/admin;
                           env |grep ORACLE
                           alias diag="cd /u001/MXDB/oracle/diag/rdbms/prod/prod1/trace;pwd"
                            ;;
			   4) bucle=0
                           export PATH=/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/etc/opt/emcpower/bin:/u002/RPTDB/oracle/product/11.2.0/db:/u002/RPTDB/oracle/product/11.2.0/db/bin;
                           export ORACLE_SID=rmxoptix1;
                           export ORACLE_HOME=/u002/RPTDB/oracle/product/11.2.0/db;
                           export TNS_ADMIN=/u001/MXDB/grid/network/admin;
			   export ORACLE_BASE=/u002/RPTDB/oracle;
                           env |grep ORACLE
                           alias diag="cd /u002/RPTDB/oracle/diag/rdbms/rmxoptix/rmxoptix1/trace;pwd"
                            ;;
                          5) bucle=0
                           export PATH=/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/etc/opt/emcpower/bin:/u002/RPTDB/oracle/product/11.2.0/db:/u002/RPTDB/oracle/product/11.2.0/db/bin;
                           export ORACLE_SID=rmanmx;
                           export ORACLE_HOME=/u002/RPTDB/oracle/product/11.2.0/db;
                           export TNS_ADMIN=/u001/MXDB/grid/network/admin;
                           export ORACLE_BASE=/u002/RPTDB/oracle;
                           env |grep ORACLE
                           alias diag="cd /u002/RPTDB/oracle/diag/rdbms/rmanmx/rmanmx/trace;pwd"
			  	;;
			  6) bucle=0
                           export PATH=/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/etc/opt/emcpower/bin:/u001/MXDB/grid:/u001/MXDB/grid/bin;
                           export ORACLE_SID=+ASM1;
                           export ORACLE_HOME=/u001/MXDB/grid;
                           export TNS_ADMIN=/u001/MXDB/grid/network/admin;
                           export ORACLE_BASE=/u001/MXDB/oracle;
                           env |grep ORACLE
                           alias diag="cd /u001/MXDB/oracle/diag/asm/+asm/+ASM1/trace;pwd"
                                        ;;
                          *) echo "   This is not a valid option"
                          read d?"   Press <Enter> to continue..."
                                        ;;

                        esac
        }
        done
######################
