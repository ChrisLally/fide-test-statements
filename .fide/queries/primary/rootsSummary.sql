-- description: Statement counts by root for the primary graph store

select sr.root, count(*) as statement_count, min(s.created_at) as first_statement_at, max(s.created_at) as last_statement_at from statement_roots sr inner join statements s on s.statement_fingerprint = sr.statement_fingerprint group by sr.root order by statement_count desc, sr.root asc
