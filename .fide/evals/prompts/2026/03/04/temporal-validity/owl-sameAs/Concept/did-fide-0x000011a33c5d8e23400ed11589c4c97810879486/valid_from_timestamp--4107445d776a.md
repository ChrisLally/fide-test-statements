# Atomic Evidence Check

## Introduction
- You are reading an atomic evidence-evaluation prompt for one owl:sameAs validity decision.
- Your goal is to evaluate exactly one evidence statement against one consideration for the anchor schema:validFrom statement.
- The statement chain is: target owl:sameAs statement -> anchor schema:validFrom statement -> evidence statement under review.
- All inputs are provided as subject-predicate-object triples and report attributes.

## Definitions
### fide:NetworkResource
- kind: entity_type
- definition: Identity primarily by network addressability/resolution.

### fide:Organization
- kind: entity_type
- definition: A structured collective that acts as a unit.

### fide:Person
- kind: entity_type
- definition: A person entity type.

### fide:Statement
- kind: entity_type
- definition: The atomic subject-predicate-object assertion unit.

### owl:sameAs
- kind: predicate
- definition: Indicates two identifiers refer to the same entity.

### owl:differentFrom
- kind: predicate
- definition: Indicates two identifiers refer to different entities.

### schema:validFrom
- kind: predicate
- definition: The date/time from which a statement is valid.

### prov:hadPrimarySource
- kind: predicate
- definition: Links a statement to primary-source evidence.

### schema:name
- kind: predicate
- definition: The name of an item.

### schema:worksFor
- kind: predicate
- definition: Organization that a person works for.

## Task
Evaluate one evidence statement for one consideration.
- schema:validFrom is the real-world validity start for the owl:sameAs claim.
- provenance/observation timestamps are separate from schema:validFrom.

## Statement: Target owl:sameAs
- subject (fide:Concept (source fide:NetworkResource)): https://www.w3.org/TR/sparql11-query/
- predicate: owl:sameAs
- object (fide:Concept (source fide:NetworkResource)): https://www.w3.org/TR/rdf-sparql-query/

## Consideration
- valid_from_timestamp

## Statement: Anchor schema:validFrom
- subject (fide:Statement): section: Statement: Target owl:sameAs
- predicate: schema:validFrom
- object (fide:DateTimeLiteral (source fide:DateTimeLiteral)): 2008-01-15T00:00:00Z

## Statement: Evidence under review
- subject (fide:Statement): section: Statement: Target owl:sameAs
- predicate: schema:validFrom
- object (fide:DateTimeLiteral (source fide:DateTimeLiteral)): 2008-01-15T00:00:00Z

## Primary Source Report
```
none
```

## Return JSON
- decision (supports | contradicts | insufficient)
- confidence (0.0 to 1.0)
- reason

## Rules
- Use only the statements in this prompt.
- Evaluate this one evidence statement only.
- Do not make an overall identity decision here.
- Do not invent facts beyond the provided statements.
