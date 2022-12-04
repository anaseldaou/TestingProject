ALTER TRIGGER test_table_trigger
   ON dbo.test_dps
   AFTER INSERT
AS 
BEGIN
DECLARE @child_id AS UNIQUEIDENTIFIER;
DECLARE @parent_id AS UNIQUEIDENTIFIER;
DECLARE curs CURSOR FOR SELECT id,parent FROM inserted

OPEN curs
FETCH NEXT FROM curs INTO @child_id,@parent_id
WHILE @@FETCH_STATUS = 0
BEGIN
	IF (@parent_id IS NOT NULL)
    INSERT INTO dbo.test_relations ([from],[to]) VALUES (@parent_id,@child_id)
	FETCH NEXT FROM curs INTO @child_id,@parent_id
END
CLOSE curs;
DEALLOCATE curs;
END


CREATE TRIGGER test_table_trigger
   ON dbo.test_dps
   AFTER UPDATE
AS 
BEGIN
DECLARE @child_id AS UNIQUEIDENTIFIER;
DECLARE @parent_id AS UNIQUEIDENTIFIER;
DECLARE curs CURSOR FOR SELECT id,parent FROM inserted

OPEN curs
FETCH NEXT FROM curs INTO @child_id,@parent_id
WHILE @@FETCH_STATUS = 0
BEGIN
	IF (@parent_id IS NOT NULL)
    INSERT INTO dbo.test_relations ([from],[to]) VALUES (@parent_id,@child_id)
	FETCH NEXT FROM curs INTO @child_id,@parent_id
END
CLOSE curs;
DEALLOCATE curs;
END