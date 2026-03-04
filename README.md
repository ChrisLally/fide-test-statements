# Fide Test Statements

Run from this directory:

```bash
cd /Users/chrislally/Desktop/fide-internal/.tmp/fide-test-statements
```

## Generate Eval Prompts

```bash
fide eval prompt \
  --method temporal-validity/owl-sameAs/Concept@v1 \
  --target did:fide:0x000011a33c5d8e23400ed11589c4c97810879486 \
  --from .fide/statements/2026/03/04/10e34dc848e99ced06d4af2624b375c60c32aee42d218dce12f149a2bd73646e.jsonl \
  --json
```

Prompts are written under:

`./.fide/evals/prompts/YYYY/MM/DD/...`

## Generate Statement Batch From Story

```bash
fide graph statements add \
  --in .fide/statement-stories/semantic-web-graphing-statements.md \
  --json
```

This writes the normalized batch to:

`./.fide/statements/YYYY/MM/DD/<root>.jsonl`

Optional checks:

```bash
fide graph statements validate --in .fide/statement-stories/semantic-web-graphing-statements.md --json
fide graph statements root --in .fide/statement-stories/semantic-web-graphing-statements.md
```

## Trigger Codex Draft With Live Stream

```bash
fide eval prompt \
  --method temporal-validity/owl-sameAs/Concept@v1 \
  --target did:fide:0x000011a33c5d8e23400ed11589c4c97810879486 \
  --from .fide/statements/2026/03/04/10e34dc848e99ced06d4af2624b375c60c32aee42d218dce12f149a2bd73646e.jsonl \
  --consideration name_alignment \
  --evidence-statement did:fide:0x0000927ca3cf523848f3d4f2a4f9bc7bcb3dc14b \
  --agent codex \
  --draft \
  --stream \
  --json
```

## Add Eval Draft Directly (No Codex)

With explicit context env vars:

```bash
FIDE_EVAL_METHOD=temporal-validity/owl-sameAs/Concept@v1 \
FIDE_EVAL_TARGET=did:fide:0x000011a33c5d8e23400ed11589c4c97810879486 \
FIDE_EVAL_FROM=.fide/statements/2026/03/04/5e086dc79ed5028772e5ebf6ced7f8986ff0109a1640e61ca08df65fce6705d8.jsonl \
fide eval add \
  --decision supports \
  --confidence 0.64 \
  --reason "Evidence supports identity at the anchor validity date." \
  --json
```

You can still override context explicitly:

```bash
fide eval add \
  --method temporal-validity/owl-sameAs/Concept@v1 \
  --target did:fide:0x000011a33c5d8e23400ed11589c4c97810879486 \
  --from .fide/statements/2026/03/04/5e086dc79ed5028772e5ebf6ced7f8986ff0109a1640e61ca08df65fce6705d8.jsonl \
  --decision supports \
  --confidence 0.64 \
  --reason "Evidence supports identity at the anchor validity date." \
  --json
```
