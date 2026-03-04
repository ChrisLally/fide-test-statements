---
type: fide-statements
version: v0
defaults:
  subject:
    source: NetworkResource
  object:
    source: NetworkResource
meta:
  method: "temporal-validity/owl-sameAs/Person@v1"
  target: "did:fide:0x000011a33c5d8e23400ed11589c4c97810879486"
  batch: "/Users/chrislally/Desktop/fide-internal/.tmp/fide-test-statements/.fide/statements/2026/03/04/5e086dc79ed5028772e5ebf6ced7f8986ff0109a1640e61ca08df65fce6705d8.jsonl"
  promptFile: ".fide/evals/prompts/temporal-validity_owl-sameAs_Person__v1/did_fide_0x000011a33c5d8e23400ed11589c4c97810879486.prompt.md"
  promptHash: "sha256:87b9bca070221e059b8fb074a983692cd00860a7f20fa03690b0f15351f0e539"
  agent: "codex"
---
[NetworkResource:https://www.w3.org/TR/sparql11-query/] https://www.w3.org/2002/07/owl#sameAs [NetworkResource:https://www.w3.org/TR/rdf-sparql-query/]
[NetworkResource:did:fide:0x000011a33c5d8e23400ed11589c4c97810879486] https://fide.dev/ontology/decision [Text:uncertain]
[NetworkResource:did:fide:0x000011a33c5d8e23400ed11589c4c97810879486] https://fide.dev/ontology/score [Number:0.568182]
[NetworkResource:did:fide:0x000011a33c5d8e23400ed11589c4c97810879486] https://fide.dev/ontology/confidence [Number:0.780000]
[NetworkResource:did:fide:0x000011a33c5d8e23400ed11589c4c97810879486] https://fide.dev/ontology/reviewRequired [Boolean:true]
[NetworkResource:did:fide:0x000011a33c5d8e23400ed11589c4c97810879486] https://fide.dev/ontology/reason [Text:Only validFrom evidence is present and no validThrough support was found, so temporal reliability remains incomplete.]
[NetworkResource:did:fide:0x000011a33c5d8e23400ed11589c4c97810879486] https://fide.dev/ontology/evidenceStatementFideId [NetworkResource:did:fide:0x00008a005eef242e10dc1e6f30504107445d776a]
