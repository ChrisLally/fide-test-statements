# Statement Story: Semantic Web Graphing Research

## Context
Chris is researching open source protocols related to the semantic web.
Chris wants Chris' Agent to identify credible protocol targets and add structured statements to Chris' Fide Graph.

## Actors
- Chris: defines the research intent and approves outputs.
- Chris' Agent: performs discovery, structures findings, writes statements, and validates batches.

## Goal
Add high-quality statements to Chris' Fide Graph that capture core facts and relationships about semantic web protocols.

## Curated Target Set (Current Run)
Use this specific 3-protocol slice for this story:
- Query layer: SPARQL
- Data serialization layer: JSON-LD
- Application/federation layer: ActivityPub

This gives Chris a cross-section of the semantic web stack with highly verifiable standards metadata.

## Success Criteria
Chris' Agent must deliver all of the following:
- Identify at least 3 open source semantic web-related protocols.
- For each protocol, capture when it started (launch/adoption/start date as available).
- For each protocol, capture multiple identifiers (for example: spec URL, repository URL, org URL, canonical short name).
- Capture relationships to other projects or organizations behind them (maintainers, stewards, foundations, working groups, or ecosystem dependencies).
- Produce a valid `.jsonl` statement batch in `.fide/statements/...` with a deterministic root.

## Expected Output Artifacts
- Statement batch file in `.fide/statements/YYYY/MM/DD/<root>.jsonl`.
- Root value for the batch.
- Brief summary note of what was added and why.

## Normalized Facts (Agent Input Seed)
### SPARQL
- Protocol name: `SPARQL Protocol and RDF Query Language`
- Canonical short name: `sparql`
- Start date: `2008-01-15` (initial SPARQL 1.0 W3C Recommendation)
- Identifiers:
- `https://www.w3.org/TR/rdf-sparql-query/` (SPARQL 1.0 spec)
- `https://www.w3.org/TR/sparql11-query/` (SPARQL 1.1 query spec)
- `https://www.w3.org/` (steward org)
- Relationships:
- stewarded by `W3C`
- maintained by `W3C SPARQL Working Group` (historically RDF Data Access WG)
- depends on `RDF`

### JSON-LD
- Protocol name: `JSON-LD (JavaScript Object Notation for Linked Data)`
- Canonical short name: `json-ld`
- Start date: `2014-01-16` (initial JSON-LD 1.0 W3C Recommendation)
- Identifiers:
- `https://www.w3.org/TR/json-ld/` (spec)
- `https://github.com/w3c/json-ld-syntax` (repo)
- `https://www.w3.org/` (steward org)
- Relationships:
- stewarded by `W3C`
- maintained by `W3C JSON-LD Working Group`
- linked to `JSON for Linking Data Community Group`
- ecosystem dependency on `JSON` and semantic alignment with `RDF`

### ActivityPub
- Protocol name: `ActivityPub`
- Canonical short name: `activitypub`
- Start date: `2018-01-23` (initial ActivityPub W3C Recommendation)
- Identifiers:
- `https://www.w3.org/TR/activitypub/` (spec)
- `https://github.com/w3c/activitypub` (repo)
- `https://www.w3.org/` (steward org)
- Relationships:
- stewarded by `W3C`
- maintained by `W3C Social Web Working Group`
- depends on `ActivityStreams 2.0`
- depends on `JSON-LD`

## Compact Reference Table
| Protocol | Start Date (W3C Rec) | Short Name | Primary Steward | Core Dependency |
| --- | --- | --- | --- | --- |
| SPARQL | 2008-01-15 | `sparql` | W3C | RDF |
| JSON-LD | 2014-01-16 | `json-ld` | W3C | JSON, RDF |
| ActivityPub | 2018-01-23 | `activitypub` | W3C | JSON-LD, ActivityStreams 2.0 |

## Agent Execution Flow
1. Discover candidate protocols relevant to semantic web graphing.
2. Select at least 3 protocols that meet the scope.
3. Extract normalized facts for each protocol:
   - protocol name
   - start date (or earliest well-supported date)
   - identifiers
   - related organizations/projects
4. Convert facts into FCP statement inputs.
5. Generate statement batch via Fide CLI.
6. Validate and compute root.
7. Return summary + file path + root to Chris for review.

## Guardrails
- Prefer verifiable, source-backed claims.
- If a date is uncertain, mark it as uncertain in summary notes and avoid overstating precision.
- Avoid duplicate statements when equivalent facts already exist in the same batch.
- Keep identifiers canonical (stable URLs and primary project/org references).

## Ready-to-Run Prompt Seed (for Chris' Agent)
"Research at least 3 open source semantic web protocols and add statements to my Fide Graph with protocol start date, identifiers, and relationships to organizations/projects. Output a validated statement batch and root."

## Expected Review Summary
"Added statements for SPARQL, JSON-LD, and ActivityPub as a query/serialization/federation semantic web slice. Dates map to initial W3C Recommendation milestones, and relationships connect protocols to W3C groups and core dependencies."

## Planned CLI Commands
`fide init`
Initialize local Fide workspace in the current repo by creating `.fide/` folders only (does not modify app/source code).
Use this once per repo before writing statement batches.

`fide statements add --stdin --json`
Primary (AI-first) path. Build a new statement batch from stdin payload and print structured output.
Accepted stdin formats:
- JSON array of statement input objects
- JSONL (one statement input object per line)

Default behavior:
- normalization is ON by default
- output auto-writes to `.fide/statements/YYYY/MM/DD/<root>.jsonl`

Optional flags:
- `--out <path>` to override output location
- `--no-normalize` to disable identifier normalization

What it prints with `--json`:
- `{ ok, root, statementCount, outPath, statementFideIds }`

`fide statements add --in .fide/statement-stories/semantic-web-graphing-inputs.json --json`
Legacy/file-driven path (kept for now while testing). Same behavior as `--stdin`, but reads from a file instead of stdin.
Input file may be:
- JSON array
- JSONL

`fide statements validate --in .fide/statements/YYYY/MM/DD/<root>.jsonl --json`
Validate an existing `.jsonl` batch and parse all statement wire lines.
Use this as the first integrity check after `statement add`.
With `--json`, returns structured validation output including `statementCount` and `root`.

`fide statements root --in .fide/statements/YYYY/MM/DD/<root>.jsonl`
Recompute deterministic batch root from the input batch and print only the root string.
Use this to verify reproducibility or to reference the batch in downstream ingest workflows.

`fide statements normalize --in .fide/statements/YYYY/MM/DD/<root>.jsonl --out .fide/statements/YYYY/MM/DD/<root>.normalized.jsonl`
Re-emit parsed wire statements as normalized JSONL output.
Use this when you want a clean canonicalized file before commit/broadcast, or to compare two batches after formatting differences.

## Working Default (Current Recommendation)
For this story, Chris' Agent should use:
- `statement add --stdin --json` as the default add command
- normalization ON (implicit)
- `--in` only when a file-based handoff is explicitly needed
