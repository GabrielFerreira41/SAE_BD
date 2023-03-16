WITH t1(id, parent_id) AS (
  -- Anchor member.
  SELECT id,
         parent_id
  FROM   tab1
  WHERE  parent_id IS NULL
  UNION ALL
  -- Recursive member.
  SELECT t2.id,
         t2.parent_id
  FROM   tab1 t2, t1
  WHERE  t2.parent_id = t1.id
)
SELECT id,
       parent_id
FROM   t1;