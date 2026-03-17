-- description: Single-row dashboard summary with core graph counts and latest activity

with statement_stats as (
  select count(*) as statement_count, max(created_at) as latest_statement_at
  from statements
),
root_stats as (
  select count(*) as root_count, max(created_at) as latest_root_at
  from roots
),
entity_stats as (
  with entity_refs as (
    select subject_fingerprint as entity_fingerprint from statements
    union
    select object_fingerprint as entity_fingerprint from statements
  )
  select count(*) as entity_count from entity_refs
)
select
  ss.statement_count,
  rs.root_count,
  es.entity_count,
  ss.latest_statement_at,
  rs.latest_root_at
from statement_stats ss
cross join root_stats rs
cross join entity_stats es
