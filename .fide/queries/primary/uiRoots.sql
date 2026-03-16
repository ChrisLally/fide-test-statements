-- description: One row per root with statement counts and time range for UI views

select r.root, count(sr.statement_fingerprint) as statement_count, min(s.created_at) as first_statement_at, max(s.created_at) as last_statement_at from roots r left join statement_roots sr on sr.root = r.root left join statements s on s.statement_fingerprint = sr.statement_fingerprint group by r.root order by last_statement_at desc nulls last, statement_count desc, r.root asc
