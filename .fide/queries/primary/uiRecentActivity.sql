-- description: Recent root writes with compact activity details for dashboard views

select
  r.created_at as activity_at,
  r.root,
  count(sr.statement_fingerprint) as statement_count
from roots r
left join statement_roots sr on sr.root = r.root
group by r.root, r.created_at
order by r.created_at desc, r.root desc
limit 20
