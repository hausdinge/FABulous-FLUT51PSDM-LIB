# FLUT5 matrix architectures

All variants use eight FLUT51PSDM BELs and one MUX8LUT, with the same
external tile interface. Shared BELs and routing declarations are in `../common`.

Names use `b<count><size>_a<count><size>`:

- `b`: local bank-driver muxes; `a`: LUT data-input muxes.
- `x16` or `x8`: source choices per mux.
- `mix`: half the muxes are 8:1 and half are 16:1.

For example, `b64mix_a48x16` means 64 banks (32 × 8:1 + 32 × 16:1)
and 48 independent LUT-input muxes, all 16:1. Control and carry paths
are not counted in `a48`; detailed control and carry connectivity is described
in each tile README.

| Tile | Previous name | Bank-driver muxes | LUT-input muxes | Connections | Switch bits | Tile bits |
| --- | --- | --- | --- | ---: | ---: | ---: |
| [b64x16_a48x16](b64x16_a48x16/README.md) | fill236_l2 | 64 × 16:1 | 48 × 16:1 | 2,729 | 774 | 1,112 |
| [b64mix_a48x16](b64mix_a48x16/README.md) | bank32 | 32 × 8:1 + 32 × 16:1 | 48 × 16:1 | 2,473 | 742 | 1,080 |
| [b64x16_a48mix](b64x16_a48mix/README.md) | data24 | 64 × 16:1 | 24 × 8:1 + 24 × 16:1 | 2,537 | 750 | 1,088 |
| [b64x16_a48x8](b64x16_a48x8/README.md) | data48 | 64 × 16:1 | 48 × 8:1 | 2,345 | 726 | 1,064 |

Each tile README describes the two mux stages and output paths. The reduced
variants retain the baseline launch, bypass, control and carry connectivity.
Tile CSVs resolve shared files through `../../common/` and their matrix locally.
