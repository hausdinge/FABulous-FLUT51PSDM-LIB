# b64x16_a48x16

**64 banks, 16-source bank drivers, 16-bank LUT-input access.**

`b64x16_a48x16` has 64 bank-driver muxes with 16 choices each and 48 LUT-input muxes with 16 choices each. It retains the production fill236 connectivity with the L2 output-access extension: four L2 launch muxes (JN2BEG7, JE2BEG4, JS2BEG0 and JW2BEG6) have 16 choices instead of 8.

Experiment name: `fill236_l2`. Rank: 1 (best routing)

## Matrix structure

Each bank is a local one-bit wire: its driver selects one source onto
`HBEG[k]`, which connects to `HEND[k]`. Each LUT input independently selects a
subset of these 64 bank wires.

```text
 Incoming channel taps + selected local outputs + constants
                            |
                 +-------------------------+
                 | 64 bank-driver muxes     |
                 | 64 x 16:1               |
                 +------------+------------+
                              |
                     64 local bank wires
                     HBEG[k] --> HEND[k]
                              |
                 +------------v------------+
                 | 48 LUT-input muxes       |
                 | 48 x 16:1               |
                 +------------+------------+
                              |
                     A0 A1 A2 A3 A4 AX
                     on each of 8 FLUTs
                              |
                 +------------+------------+
                 |                         |
             AY4 / AQ4                 AY5 / AQ5
                 |                         |
              [2:1]                     [2:1]
                 |                         |
                 +------------+------------+
                              |
                      16 output selectors
                      OSELBEG --> OSELEND
                              |
                  +-----------+-----------+
                  |                       |
             bank sources          channel launch muxes
                                          |
                                   outgoing channels

 Incoming channel taps ---------> channel launch muxes
             direct bypass paths (no bank stage)
 Selected raw BEL outputs ------> selected banks/launch muxes
```

The diagram shows resource classes, not all-to-all connectivity. The matrix
list specifies each allowed source/destination pair. The two output selectors
per BEL choose AY4/AQ4 and AY5/AQ5 respectively; selected raw outputs also have
matrix connections independent of those selectors.

## Connectivity and configuration

| Resource | Count / choices |
| --- | --- |
| Local banks | 64 |
| Bank-driver muxes | 64 x 16:1 |
| LUT data-input muxes | 48 x 16:1 |
| Output selectors | 16 x 2:1 (two per BEL) |
| Matrix connections, including fixed connections | 2,729 |
| Switch configuration bits | 774 |
| BEL configuration bits | 338 (8 x 42 + 2 for MUX8LUT) |
| Total tile configuration bits | 1,112 |
| Connections removed relative to b64x16_a48x16 | 0 |
| Switch bits saved relative to b64x16_a48x16 | 0 |

The external channel interface is unchanged: L1/L2 and L4 wires in all four
directions, with L6 wires only east/west. Channel launch/continuation muxes,
direct bypass connections, the 16 output selectors, SR/EN control routing,
dedicated carry chain and MUX8LUT connections retain b64x16_a48x16 connectivity.
The reductions affect only the bank-driver and/or LUT data-input muxes described
above. Register feedback uses the available matrix paths.

Configuration costs use binary selection: an N-input mux uses
`ceil(log2(N))` bits; a fixed one-source connection uses none. The 16-to-8
reductions therefore save one configuration bit per changed mux. Total tile bits
count active configuration bits, not unused frame padding.
