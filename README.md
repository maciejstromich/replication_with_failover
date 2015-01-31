# replication_with_failover
Simple PostgreSQL replication mechanism with failover using repmgr with master auto promotion to slave on return

* OS: Ubuntu Trusty 
* PostgreSQL: 9.3
* repmgr: 2.0.1+

to configure repmgr standard ubuntu trusty packages were used and docs from https://github.com/greg2ndQuadrant/repmgr

Because of automatic failed master node return script startup of postgresql should be disabled

