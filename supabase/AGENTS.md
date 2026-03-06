# AGENTS.md

## Project Context

This workspace contains the Supabase backend for RefaDiaz.

General background:
- `product` is the central catalog entity.
- Product compatibility is modeled through `product_car_model`.
- Edge functions live under `functions/`.
- SQL migrations live under `migrations/`.
- Postman artifacts live under `postman/`.

## Implementation Guidance

When continuing work in future sessions:
- Build context from the current code and migrations first.
- Prefer incremental changes over broad rewrites.
- Keep API contracts stable unless the task explicitly requires a breaking change.
- Use `CHANGELOG.md` and existing docs under `docs/` as historical context, not as active planning state.
