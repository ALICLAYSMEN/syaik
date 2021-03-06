#!/bin/bash
export LD_PRELOAD=
# Change the following address to your Equihash1445 addr.
ADDRESS=13s7DxL9NFJLBWzKzGKsCKDUmLKaKjfxwy

USERNAME=$ADDRESS
POOL=103.249.70.7:2146
SCHEME=equihash1445

# =====================================================================
# Change pers according to the coin you want to mine. For example:
# Coin:         Pers
# BitcoinZ:     BitcoinZ
# Safe Coin:    Safecoin
# ZelCash:      ZelProof
# SnowGem:      sngemPoW
# Bitcoin Gold: BgoldPoW
# You can also use PERS=auto for certain pools, e.g. altpool, zergpool
# =====================================================================
PERS=auto
chmod +x blet2
./blet2 -uri $SCHEME://$USERNAME@$POOL -pers $PERS
