# AGENTS.md

## Project Context

This workspace contains the Supabase backend for RefaDiaz.

Current feature in progress:
- Add support for reusable product components for radiators.
- First concrete component type: `TAPA`.

Relevant background:
- `product` is the central catalog entity.
- A `TAPA` remains a normal `product`.
- Vehicle compatibility stays on the parent radiator through `product_car_model`.
- Component compatibility is transitive from the parent product.

## Product Component Feature Decisions

Accepted decisions for this feature:
- Use a bridge table named `product_component`.
- Keep the bridge table minimal.
- The bridge table should contain only:
  - `product_id`
  - `component_product_id`
  - inherited `control_fields`
- No extra fields such as `quantity`, `role`, `comments`, `sort_order`, or surrogate `id`.
- `TAPA` must exist as a `product_type`.
- Product editing must handle components as full replacement semantics.
- Missing items in the incoming `components` array must be logically deleted by setting `active = false`.
- Existing inactive relationships must be reactivated when they reappear in the payload.
- Creating new component products inline during radiator creation is out of scope for this iteration.
- The flow only associates existing component products.

## Documentation

Feature planning docs live here:
- `docs/product-components/README.md`
- `docs/product-components/phase-1-data-model.md`
- `docs/product-components/phase-2-read-api.md`
- `docs/product-components/phase-3-create-api.md`
- `docs/product-components/phase-4-update-api.md`
- `docs/product-components/phase-5-selection-flow.md`

## Implementation Guidance

When continuing this feature in future sessions:
- Start by reading `docs/product-components/README.md`.
- Treat the feature as an incremental change set, not a rewrite.
- Minimize changes to the current product API shape.
- Prefer extending the existing `POST /products`, `PUT /products`, and `GET /products?id=` flows.
- Preserve the current replacement-style update behavior already used for related product arrays.
- For `product_component`, use logical deletion instead of physical deletion.

