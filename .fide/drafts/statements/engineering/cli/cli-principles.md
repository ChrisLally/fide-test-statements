---
type: fide-statements
title: Cli Principles
description: Core engineering principles for the Fide CLI.
entityTypeHelp: fide graph defs
createdAtUTC: 2026-03-15T19:26:35.265Z
updatedAtUTC: 2026-03-15T20:43:00.000Z
updateCount: 8
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

@1 [Organization:https://github.com/fide] rdf:type [Concept:https://schema.org/Organization]
@2 [CreativeWork:https://github.com/fide/cli] rdf:type [Concept:https://schema.org/SoftwareApplication]
@3 [CreativeWork:https://github.com/fide/cli] schema:publisher [Organization:https://github.com/fide]
@4 [CreativeWork:https://github.com/fide/cli] rdfs:comment [TextLiteral/TextLiteral:Keep help short and execution-focused so agents can find the next valid command without context bloat.]
@5 [CreativeWork:https://github.com/fide/cli] rdfs:comment [TextLiteral/TextLiteral:Make commands explicit about domain and side effects so agents do not choose the wrong operation or mutate the wrong state.]
@6 [CreativeWork:https://github.com/fide/cli] rdfs:comment [TextLiteral/TextLiteral:Separate authored local state from built runtime state so agents have one clear source of truth for authoring and a separate explicit step for publishing or querying derived state.]
@7 [CreativeWork:https://github.com/fide/cli] rdfs:comment [TextLiteral/TextLiteral:Prefer lazy setup over explicit init ceremony because extra setup commands create more failure points and workflow overhead.]
@8 [CreativeWork:https://github.com/fide/cli] rdfs:comment [TextLiteral/TextLiteral:Keep command surfaces small and composable so agents can infer the right workflow with fewer planning mistakes.]
@9 [CreativeWork:https://github.com/fide/cli] rdfs:comment [TextLiteral/TextLiteral:Use domain-specific flags such as --store and --fide-dir instead of overloaded selectors such as --target.]
@10 [CreativeWork:https://github.com/fide/cli] rdfs:comment [TextLiteral/TextLiteral:Treat local files as reviewable source artifacts so humans and agents can inspect and diff authored state.]
@11 [CreativeWork:https://github.com/fide/cli] rdfs:comment [TextLiteral/TextLiteral:Make runtime operations explicit so agents can distinguish publishing state from querying state.]
