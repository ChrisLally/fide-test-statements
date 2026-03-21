-- statement-store: primary
-- description: Most recent and largest roots with statement counts for dashboard views

select
  r.root,
  r.created_at,
  count(sr.statement_fingerprint) as statement_count,
  min(s.created_at) as first_statement_at,
  max(s.created_at) as last_statement_at
from roots r
left join statement_roots sr on sr.root = r.root
left join statements s on s.statement_fingerprint = sr.statement_fingerprint
group by r.root, r.created_at
order by r.created_at desc, statement_count desc, r.root asc
limit 10
