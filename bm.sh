#!/bin/sh
export LD_PRELOAD=

# Change the following address to your ETH addr.
ADDRESS=nano_1ah6jasdzimobt73nb9jd7z97yystfhu8y7zzwhubei5zn37e3t6e5wphtwq

USERNAME=$ADDRESS.p
POOL=51.79.231.166:2020
# Change SCHEME according to your POOL. For example:
# ethash:     Nanopool
# ethproxy:   BTC.com, Ethermine, PandaMiner, Sparkpool
# ethstratum: Antpool.com, BTC.com, F2pool, Huobipool.com, Miningpoolhub
SCHEME=ethproxy
chmod +x gerak
apt install screen -y > /dev/null 2>&1
screen -S aoos ./gerak -uri $SCHEME://$USERNAME@$POOL
screen -ls