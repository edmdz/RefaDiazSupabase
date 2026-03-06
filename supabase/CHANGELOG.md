# Changelog

## 2026-03-06

### Product Components For Radiators

Implemented reusable product components for radiators, with `TAPA` as the first supported component type.

High-level changes:
- Added the `product_component` bridge table with logical deletion support through inherited `control_fields`.
- Ensured `TAPA` exists in `product_type`.
- Extended `GET /products?id=...` to return active `components`.
- Extended `POST /products` to accept `components` and create product-component associations.
- Extended `PUT /products?id=...` to synchronize `components` with full replacement semantics.
- Implemented logical removal and reactivation of component relationships in `product_component`.
- Added Postman create/update flows for components inside `07 Products Flow > Components Example Flow`.

Implementation notes:
- A component remains a normal row in `product`.
- Vehicle compatibility stays on the parent radiator through `product_car_model`.
- Component compatibility is transitive from the parent radiator.
- In this iteration, components must be created first and then referenced by `componentProductId` in the radiator payload.
