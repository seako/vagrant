include_attribute 'pelias::external'

# env
default[:pelias][:basedir]                              = '/opt/pelias'
default[:pelias][:cfg_dir]                              = '/etc/pelias'
default[:pelias][:cfg_file]                             = 'pelias.json'
default[:pelias][:node_env]                             = 'dev'

# user
default[:pelias][:user][:name]                          = 'pelias'
default[:pelias][:user][:home]                          = '/home/pelias'

# esclient
default[:pelias][:esclient][:logdir]                    = '/var/log/esclient'
default[:pelias][:esclient][:keepalive]                 = true
default[:pelias][:esclient][:request_timeout]           = 120_000
default[:pelias][:esclient][:api_version]               = '1.3'
default[:pelias][:esclient][:max_retries]               = 3
default[:pelias][:esclient][:dead_timeout]              = 3000
default[:pelias][:esclient][:max_sockets]               = 20

# api
default[:pelias][:api][:port]                           = 3100
default[:pelias][:api][:deploy_to]                      = "#{node[:pelias][:basedir]}/pelias-api"
default[:pelias][:api][:repository]                     = 'https://github.com/pelias/api.git'
default[:pelias][:api][:revision]                       = 'master'
default[:pelias][:api][:restart_wait]                   = 60
default[:pelias][:api][:shutdown_timeout]               = 30

# geonames
default[:pelias][:geonames][:repository]                = 'https://github.com/pelias/geonames.git'
default[:pelias][:geonames][:data_dir]                  = "#{node[:pelias][:basedir]}/data/geonames"
default[:pelias][:geonames][:revision]                  = 'master'
default[:pelias][:geonames][:index_data]                = false
default[:pelias][:geonames][:alpha2_country_codes]      = %w(IT) # Italy
default[:pelias][:geonames][:timeout]                   = 7200 # 2 hours

# quattroshapes
default[:pelias][:quattroshapes][:alpha3_country_codes] = %w(ITA) # Italy
default[:pelias][:quattroshapes][:data_url]             = 'http://data.mapzen.com/quattroshapes/alpha3'
default[:pelias][:quattroshapes][:checksum]             = 'e89cd4cb232aaea00d14972247ac8229a74378968901af4661b8aa7fada23bcb'
default[:pelias][:quattroshapes][:repository]           = 'https://github.com/pelias/quattroshapes-pipeline.git'
default[:pelias][:quattroshapes][:revision]             = 'master'
default[:pelias][:quattroshapes][:data_dir]             = "#{node[:pelias][:basedir]}/data/quattroshapes"
default[:pelias][:quattroshapes][:index_data]           = false
default[:pelias][:quattroshapes][:types]                = %w(admin0 admin1 admin2 local_admin locality neighborhood)
default[:pelias][:quattroshapes][:timeout]              = 86_400 # 4 hours, note that this is per type

# osm
default[:pelias][:osm][:data_dir]                       = "#{node[:pelias][:basedir]}/data/osm"
default[:pelias][:osm][:repository]                     = 'https://github.com/pelias/openstreetmap.git'
default[:pelias][:osm][:revision]                       = 'master'
default[:pelias][:osm][:index_data]                     = false
default[:pelias][:osm][:timeout]                        = 14_400 # 4 hours
default[:pelias][:osm][:leveldb]                        = "#{node[:pelias][:basedir]}/leveldb"
default[:pelias][:osm][:extracts]                       = {}
default[:pelias][:osm][:osmium_threads]                 = (node[:cpu][:total] * 10).to_s

# schema
default[:pelias][:schema][:repository]                  = 'https://github.com/pelias/schema.git'
default[:pelias][:schema][:revision]                    = 'master'
default[:pelias][:schema][:drop_index]                  = false
default[:pelias][:schema][:create_index]                = false
default[:pelias][:schema][:replicas]                    = 0
default[:pelias][:schema][:shards]                      = 1
default[:pelias][:schema][:concurrency]                 = 32

# groovy
# es scripts
default[:pelias][:elasticsearch_groovy][:basedir]       = '/opt/pelias/groovy'
default[:pelias][:elasticsearch_groovy][:repository]    = 'https://github.com/pelias/scripts.git'
default[:pelias][:elasticsearch_groovy][:revision]      = 'master'
