USE LAF;

DELETE dbo.test_relations;
DELETE dbo.test_dps;

DECLARE @parent_id AS UNIQUEIDENTIFIER;
INSERT INTO dbo.test_dps (id,name) VALUES (NEWID(),'dep_1')
SET @parent_id = (SELECT id FROM dbo.test_dps WHERE [name]='dep_1');
INSERT INTO dbo.test_dps (id,[name],[parent]) VALUES (NEWID(),'dep_2',@parent_id)