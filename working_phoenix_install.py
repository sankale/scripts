import time
import datetime
import sys
from cm_api.api_client import ApiResource, ApiException, API_CURRENT_VERSION
from cm_api.http_client import HttpClient, RestException
from cm_api.endpoints.hosts import *
from cm_api.endpoints.services import ApiServiceSetupInfo, ApiService


cm_host = "localhost"
user = "admin"
passwd = "skale"
api = ApiResource(cm_host, username=user, password=passwd)

for c in api.get_all_clusters():
  print c.name

for allhosts in api.get_all_hosts():
 print allhosts.hostId

for services in c.get_all_services():
 print services.type

cluster_name = c.name
name = "phoenix"
service_type = "PHOENIX"
endhost = allhosts.hostId
print endhost
install = c.create_service(name, service_type)
role_type = "PHOENIX_QUERY_SERVER"
role_name = "PHOENIX_QUERY_SERVER"
service_name = "phoenix"

for services in c.get_all_services():
 if services.type == "PHOENIX":
  p = services

p.create_role("PHOENIX_QUERY_SERVER", "PHOENIX_QUERY_SERVER" , endhost )
p.update_config({'zookeeper_service': "zookeeper", 'hdfs_service' : "hdfs", 'hbase_service':"hbase"})
cmd=p.start()
print cmd.active
cmd = cmd.wait()
print "Active: %s. Success: %s" % (cmd.active, cmd.success)
