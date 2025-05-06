CREATE TABLE IF NOT EXISTS dataengineering.plan_ps.lz_tbl_sp_td_dayprodlocpeg_dsm
(
source_system_identifier	SMALLINT,
logical_deletion_indicator	STRING,
source_system_update_timestamp	TIMESTAMP,
insert_gmt_timestamp	TIMESTAMP,
load_job_number	BIGINT,
source_system_extract_gmt_timestamp	TIMESTAMP,
snapshotdate  STRING COMMENT '{\'NULLABLE\': \'FALSE\'}',
ibpprocess	  STRING COMMENT '{\'NULLABLE\': \'FALSE\'}',
planversion	  STRING COMMENT '{\'NULLABLE\': \'FALSE\'}',
plandate	  STRING COMMENT '{\'NULLABLE\': \'FALSE\'}',
zsgcpkmat	  STRING COMMENT '{\'NULLABLE\': \'FALSE\'}',
lociddem	  STRING COMMENT '{\'NULLABLE\': \'FALSE\'}',
prdiddem	  STRING COMMENT '{\'NULLABLE\': \'FALSE\'}',
demandtype	  STRING COMMENT '{\'NULLABLE\': \'FALSE\'}',
locid	      STRING COMMENT '{\'NULLABLE\': \'FALSE\'}',
zsgmarket	  STRING COMMENT '{\'NULLABLE\': \'FALSE\'}',
zsgpriority	  STRING COMMENT '{\'NULLABLE\': \'FALSE\'}',
prdid	      STRING COMMENT '{\'NULLABLE\': \'FALSE\'}',
keyfiguredate STRING COMMENT '{\'NULLABLE\': \'FALSE\'}',
porflag	      STRING,
stockinitpeg  STRING,
zstodependentdemandpeg	STRING,
zstodistrdemandpeg	STRING,
totalreceiptpeg	STRING,
source_file_name	STRING,
partition_load_job_number BIGINT)
USING parquet
PARTITIONED BY (partition_load_job_number)
LOCATION 'abfss://landing@edpdevidhsapinboundgw.dfs.core.windows.net/ibpps/plan_ps/data/lz_tbl_sp_td_dayprodlocpeg_dsm'
