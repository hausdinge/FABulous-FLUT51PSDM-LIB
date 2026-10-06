# FABulous FLUT51PSDM tile library

FLUT51PSDM logic tiles and switch-matrix variants for FABulous. The library shares
one BEL implementation across several routing topologies, so the bank and input
mux sizes can be compared without changing the logic resources or external tile
interface.

Each tile contains:

- **Eight fracturable FLUT5 BELs**, each with two registers and carry logic.
- **One MUX8LUT BEL**, with matrix access to its four outputs.
- **64 local routing banks** feeding 48 independently selected LUT data inputs.
- **16 output selectors**, plus direct output and channel-bypass connections.
- L1, L2 and L4 channels in all four directions, and L6 channels east/west.
- Dedicated carry connections and routing for register controls and constants.

This repository contains architecture assets and generated tile files. Mapping,
fabric generation, placement, routing and bitstream generation use the FABulous
flow in the consuming project.

## Routing structure

```text
 Incoming channels / local outputs / constants
                         |
                 +-------v--------+
                 | 64 bank muxes  |
                 | 8 or 16 inputs |
                 +-------+--------+
                         |
                  64 local banks
                         |
                 +-------v--------+
                 | 48 input muxes |
                 | 8 or 16 inputs |
                 +-------+--------+
                         |
                  Eight FLUT BELs
                         |
          raw outputs / 16 output selectors
                         |
                  channel launch muxes ----> neighbouring tiles
                         ^
 Incoming channels ------+  direct bypass routes
```

This shows resource classes, not all-to-all connectivity. Each
`FLUT51PSDM_switch_matrix.list` defines the actual permitted connections.

## Repository layout

```text
common/
  FLUT51PSDM_architecture.v     Shared FLUT BEL and its internal modules
  MUX8LUT_frame_config_mux.v    Shared MUX8LUT BEL
  FLUT51PSDM_routing.csv        Shared channels and local jump declarations

tiles/<variant>/
  FLUT51PSDM.csv               Tile definition; references ../../common/
  FLUT51PSDM_switch_matrix.list
  FLUT51PSDM_switch_matrix.*   Generated matrix representations
  FLUT51PSDM_ConfigMem.*       Configuration-memory files
  FLUT51PSDM.v                 Generated tile wrapper
  README.md                   Topology details and resource counts
```

BEL and routing definitions are shared through `common/`.

## Use in a FABulous project

All variants currently declare the same tile name, **`FLUT51PSDM`**. Choose one
variant for that tile type. To instantiate different variants in one fabric,
first give them distinct tile/module names and regenerate their outputs.

Preserve the relative paths when importing a variant. For example, starting with
an existing FABulous project that does not already contain these directories:
