-- description: Entity counts grouped by fide entity type for dashboard summaries

with entity_refs as (
  select subject_fingerprint as entity_fingerprint, subject_type as entity_type
  from statements
  union
  select object_fingerprint as entity_fingerprint, object_type as entity_type
  from statements
)
select
  entity_type,
  count(*) as entity_count
from entity_refs
group by entity_type
order by entity_count desc, entity_type asc
