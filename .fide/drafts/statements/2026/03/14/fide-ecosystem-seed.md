---
type: fide-statements
version: v0
defaults:
  subject:
    source: NetworkResource
  object:
    source: NetworkResource
---

[Organization:https://fide.dev/org/fide] https://schema.org/name [TextLiteral/TextLiteral:Fide]
[Organization:https://fide.dev/org/fide] https://schema.org/url [URILiteral/URILiteral:https://fide.dev]
[Organization:https://fide.dev/org/fide] https://schema.org/description [TextLiteral/TextLiteral:Fide is building an agent-first knowledge graph and tooling ecosystem.]

[Person:https://chrislally.com] https://schema.org/name [TextLiteral/TextLiteral:Chris Lally]
[Person:https://chrislally.com] https://schema.org/memberOf [Organization:https://fide.dev/org/fide]

[Concept:https://fide.dev/concepts/fide-graph] https://schema.org/name [TextLiteral/TextLiteral:Fide Graph]
[Concept:https://fide.dev/concepts/fide-id] https://schema.org/name [TextLiteral/TextLiteral:Fide ID]
[Concept:https://fide.dev/concepts/fcp] https://schema.org/name [TextLiteral/TextLiteral:Fide Context Protocol]
[Concept:https://fide.dev/concepts/fide-vocabulary] https://schema.org/name [TextLiteral/TextLiteral:Fide Vocabulary]
[Concept:https://fide.dev/concepts/agent-first-cli] https://schema.org/name [TextLiteral/TextLiteral:Agent-First CLI]
[Concept:https://fide.dev/concepts/statement-drafts] https://schema.org/name [TextLiteral/TextLiteral:Statement Drafts]
[Concept:https://fide.dev/concepts/graph-targets] https://schema.org/name [TextLiteral/TextLiteral:Graph Targets]
[Concept:https://fide.dev/concepts/sqlite-target] https://schema.org/name [TextLiteral/TextLiteral:SQLite Graph Target]
[Concept:https://fide.dev/concepts/postgres-target] https://schema.org/name [TextLiteral/TextLiteral:Postgres Graph Target]
[Concept:https://fide.dev/concepts/json-render] https://schema.org/name [TextLiteral/TextLiteral:json-render]
[Concept:https://fide.dev/concepts/a2ui] https://schema.org/name [TextLiteral/TextLiteral:A2UI]

[CreativeWork:https://github.com/chrislally/fide-internal] https://schema.org/name [TextLiteral/TextLiteral:fide-internal repository]
[CreativeWork:https://github.com/chrislally/fide-internal] https://schema.org/creator [Person:https://chrislally.com]
[CreativeWork:https://github.com/chrislally/fide-internal] https://schema.org/about [Concept:https://fide.dev/concepts/fide-graph]
[CreativeWork:https://github.com/chrislally/fide-internal] https://schema.org/about [Concept:https://fide.dev/concepts/fide-id]
[CreativeWork:https://github.com/chrislally/fide-internal] https://schema.org/about [Concept:https://fide.dev/concepts/fcp]
[CreativeWork:https://github.com/chrislally/fide-internal] https://schema.org/about [Concept:https://fide.dev/concepts/fide-vocabulary]
[CreativeWork:https://github.com/chrislally/fide-internal] https://schema.org/publisher [Organization:https://fide.dev/org/fide]

[CreativeWork:https://fide.dev/docs/fcp/specification/statements] https://schema.org/name [TextLiteral/TextLiteral:FCP Statements Specification]
[CreativeWork:https://fide.dev/docs/fcp/specification/statements] https://schema.org/about [Concept:https://fide.dev/concepts/fcp]
[CreativeWork:https://fide.dev/docs/fcp/specification/statements] https://schema.org/isPartOf [CreativeWork:https://fide.dev/docs/fcp]
[CreativeWork:https://fide.dev/docs/fcp/specification/statements] https://schema.org/publisher [Organization:https://fide.dev/org/fide]

[CreativeWork:https://fide.dev/docs/vocabulary/definitions/network-resource] https://schema.org/name [TextLiteral/TextLiteral:NetworkResource Definition]
[CreativeWork:https://fide.dev/docs/vocabulary/definitions/network-resource] https://schema.org/about [Concept:https://fide.dev/concepts/fide-vocabulary]
[CreativeWork:https://fide.dev/docs/vocabulary/definitions/network-resource] https://schema.org/isPartOf [CreativeWork:https://fide.dev/docs/vocabulary]
[CreativeWork:https://fide.dev/docs/vocabulary/definitions/network-resource] https://schema.org/publisher [Organization:https://fide.dev/org/fide]

[CreativeWork:https://fide.dev/docs/handbook/engineering/cli] https://schema.org/name [TextLiteral/TextLiteral:CLI Engineering Handbook]
[CreativeWork:https://fide.dev/docs/handbook/engineering/cli] https://schema.org/about [Concept:https://fide.dev/concepts/agent-first-cli]
[CreativeWork:https://fide.dev/docs/handbook/engineering/cli] https://schema.org/publisher [Organization:https://fide.dev/org/fide]

[CreativeWork:https://fide.dev/docs/handbook/user-journeys/write-a-first-statement] https://schema.org/name [TextLiteral/TextLiteral:Write a First Statement Journey]
[CreativeWork:https://fide.dev/docs/handbook/user-journeys/write-a-first-statement] https://schema.org/about [Concept:https://fide.dev/concepts/statement-drafts]
[CreativeWork:https://fide.dev/docs/handbook/user-journeys/write-a-first-statement] https://schema.org/isPartOf [CreativeWork:https://fide.dev/docs/handbook]

[CreativeWork:https://fide.dev/skills/fide] https://schema.org/name [TextLiteral/TextLiteral:fide skill]
[CreativeWork:https://fide.dev/skills/fide] https://schema.org/about [Concept:https://fide.dev/concepts/agent-first-cli]
[CreativeWork:https://fide.dev/skills/fide-graph] https://schema.org/name [TextLiteral/TextLiteral:fide-graph skill]
[CreativeWork:https://fide.dev/skills/fide-graph] https://schema.org/about [Concept:https://fide.dev/concepts/fide-graph]
[CreativeWork:https://fide.dev/skills/fide-graph-add] https://schema.org/name [TextLiteral/TextLiteral:fide-graph-add skill]
[CreativeWork:https://fide.dev/skills/fide-graph-add] https://schema.org/about [Concept:https://fide.dev/concepts/fide-graph]
[CreativeWork:https://fide.dev/skills/fide-graph-query] https://schema.org/name [TextLiteral/TextLiteral:fide-graph-query skill]
[CreativeWork:https://fide.dev/skills/fide-graph-query] https://schema.org/about [Concept:https://fide.dev/concepts/fide-graph]

[CreativeWork:https://fide.dev/cli/graph] https://schema.org/name [TextLiteral/TextLiteral:fide graph CLI surface]
[CreativeWork:https://fide.dev/cli/graph] https://schema.org/about [Concept:https://fide.dev/concepts/fide-graph]
[CreativeWork:https://fide.dev/cli/graph] https://schema.org/about [Concept:https://fide.dev/concepts/graph-targets]
[CreativeWork:https://fide.dev/cli/graph] https://schema.org/about [Concept:https://fide.dev/concepts/sqlite-target]
[CreativeWork:https://fide.dev/cli/graph] https://schema.org/about [Concept:https://fide.dev/concepts/postgres-target]

[CreativeWork:https://fide.dev/cli/graph/draft] https://schema.org/name [TextLiteral/TextLiteral:fide graph draft]
[CreativeWork:https://fide.dev/cli/graph/draft] https://schema.org/about [Concept:https://fide.dev/concepts/statement-drafts]
[CreativeWork:https://fide.dev/cli/graph/add] https://schema.org/name [TextLiteral/TextLiteral:fide graph add]
[CreativeWork:https://fide.dev/cli/graph/add] https://schema.org/about [Concept:https://fide.dev/concepts/fide-graph]
[CreativeWork:https://fide.dev/cli/graph/query] https://schema.org/name [TextLiteral/TextLiteral:fide graph query]
[CreativeWork:https://fide.dev/cli/graph/query] https://schema.org/about [Concept:https://fide.dev/concepts/sqlite-target]
[CreativeWork:https://fide.dev/cli/graph/query] https://schema.org/about [Concept:https://fide.dev/concepts/postgres-target]

[Organization:https://vercel.com] https://schema.org/name [TextLiteral/TextLiteral:Vercel]
[Organization:https://google.com] https://schema.org/name [TextLiteral/TextLiteral:Google]

[CreativeWork:https://github.com/vercel-labs/json-render] https://schema.org/name [TextLiteral/TextLiteral:json-render repository]
[CreativeWork:https://github.com/vercel-labs/json-render] https://schema.org/publisher [Organization:https://vercel.com]
[CreativeWork:https://github.com/vercel-labs/json-render] https://schema.org/about [Concept:https://fide.dev/concepts/json-render]

[CreativeWork:https://github.com/google/A2UI] https://schema.org/name [TextLiteral/TextLiteral:A2UI repository]
[CreativeWork:https://github.com/google/A2UI] https://schema.org/publisher [Organization:https://google.com]
[CreativeWork:https://github.com/google/A2UI] https://schema.org/about [Concept:https://fide.dev/concepts/a2ui]

[Concept:https://fide.dev/concepts/json-render] https://www.w3.org/2002/07/owl#sameAs [Concept:https://json-render.dev/concepts/json-render]
[Concept:https://fide.dev/concepts/a2ui] https://www.w3.org/2002/07/owl#sameAs [Concept:https://google.github.io/A2UI/concepts/a2ui]
