SELECT  CASE    transaction_isolation_level 
        WHEN 0 THEN 'Unspecified'
        WHEN 1 THEN 'ReadUncomitted'
        WHEN 2 THEN 'ReadCommitted'
        WHEN 3 THEN 'Repeatable'
        WHEN 4 THEN 'Serializable'
        WHEN 5 THEN 'Snapshot'
        END AS  Isolation_levle, *
FROM sys.dm_exec_sessions
WHERE db_name(database_id) = 'Your_DB_Name'