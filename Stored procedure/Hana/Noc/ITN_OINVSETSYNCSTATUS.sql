CREATE PROCEDURE ITN_OINVSETSYNCSTATUS 
(
IN DocEntry integer,IN IsRealtime varchar(5),IN IsSynced varchar(5)
)
AS
BEGIN
Declare SQL_STR Varchar(3000);
SQL_STR:='Update OINV set "U_ITN_Is_RealTime" = '''||IsRealtime||''', "U_ITN_Is_Synced" = '''||IsSynced||''', "U_ITN_Sync_Date" = now() where "DocEntry" = '||DocEntry; 
Execute Immediate (:SQL_STR); 
END;