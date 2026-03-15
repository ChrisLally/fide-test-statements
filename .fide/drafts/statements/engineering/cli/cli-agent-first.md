---
type: fide-statements
title: Cli Agent First
description: Agent-first execution constraints for the Fide CLI.
entityTypeHelp: fide graph defs
createdAtUTC: 2026-03-15T19:26:35.266Z
updatedAtUTC: 2026-03-15T20:43:00.000Z
updateCount: 9
defaults:
  subject:
    source: NetworkResource
  object:
    source: NetworkResource
  predicate:
    supported_curie_prefixes:
      - schema
      - rdf
      - rdfs
      - xsd
      - org
      - prov
      - sec
      - owl
      - skos
---

@1 [CreativeWork:https://github.com/fide/cli] rdf:type [Concept:https://schema.org/SoftwareApplication]
@2 [CreativeWork:https://github.com/fide/cli] schema:publisher [Organization:https://github.com/fide]
@3 [CreativeWork:https://github.com/fide/cli] schema:encodingFormat [Concept:https://www.iana.org/assignments/media-types/application/json]
@4 [CreativeWork:https://github.com/fide/cli] rdfs:comment [TextLiteral/TextLiteral:Prefer JSON as the default machine-readable output because agents need stable structured output they can parse without scraping prose or terminal formatting.]
@5 [CreativeWork:https://github.com/fide/cli] rdfs:comment [TextLiteral/TextLiteral:Return concrete recovery hints with errors so an agent can often self-correct from the next valid command or missing input.]
