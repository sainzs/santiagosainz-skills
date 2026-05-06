# Deep Modules

## Vocabulary

- Module: anything with an interface and implementation.
- Interface: everything callers must know: types, invariants, config, ordering, errors, side effects.
- Implementation: behavior hidden behind the interface.
- Depth: leverage provided by a small interface.
- Locality: how concentrated future changes and bugs are.
- Seam: where behavior can vary without editing every caller.
- Adapter: concrete implementation at a seam.

## Good Candidates

- Many callers repeat the same setup, ordering, flags, or error handling.
- A concept is scattered across files but changes as one behavior.
- Tests must reach into private helpers because no public contract owns the behavior.
- A wrapper exposes nearly as much complexity as it hides.
- Two real adapters already exist but the seam is implicit.

## Weak Candidates

- Renaming or moving files without changing ownership.
- Extracting a helper only to make a private unit test possible.
- Adding a factory, registry, or interface for one implementation with no current variation.
- Creating a broad platform abstraction because it feels cleaner, not because callers are leaking knowledge.

## Candidate Format

State: files/modules, current friction, proposed deeper module, expected locality/leverage gain, test improvement, and verification path.

## DXPP-Style Doctrine Checks

Use these only when the repo has matching docs or package structure:

- Start from actual files and package READMEs, then read doctrine docs only as needed.
- Treat package boundaries as behavior contracts, not directory decoration.
- Platform/runtime code should not import instance-domain content, operations state, or repo-root skills.
- Prefer explicit CLI steps, extension resources, skills, or documented state over implicit workflow coupling.
- If a design requires private choreography tests, the interface may be too weak.
- Call out doctrine exceptions with owner, rationale, and removal condition.
