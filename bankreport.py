#!/usr/bin/env python3

import csv

BANK_SIZE = 32 * 1024      # 32768 bytes
MAX_BANKS = 62             # 0-61

# Read the free-space report
free_space = {}

with open("BANKS.CSV", newline="") as f:
    reader = csv.DictReader(f)
    for row in reader:
        bank = int(row["Bank number"])
        free = int(row["Bytes free"])
        free_space[bank] = free

total_used = 0
total_free = 0

print(f"{'Bank':>4} {'Used(Bytes)':>12} {'Free(Bytes)':>12} {'Used(KB)':>10} {'Free(KB)':>10} {'% Used':>8}")
print("-" * 68)

for bank in range(MAX_BANKS):
    free = free_space.get(bank, BANK_SIZE)
    used = BANK_SIZE - free

    total_used += used
    total_free += free

    print(
        f"{bank:>4} "
        f"{used:>12} "
        f"{free:>12} "
        f"{used/1024:>10.2f} "
        f"{free/1024:>10.2f} "
        f"{used/BANK_SIZE*100:>7.2f}%"
    )

print("-" * 68)
print(f"Total ROM Size : {MAX_BANKS * BANK_SIZE:,} bytes ({MAX_BANKS * BANK_SIZE / 1024:.2f} KB)")
print(f"Total Used     : {total_used:,} bytes ({total_used / 1024:.2f} KB)")
print(f"Total Free     : {total_free:,} bytes ({total_free / 1024:.2f} KB)")
print(f"Overall Usage  : {total_used / (MAX_BANKS * BANK_SIZE) * 100:.2f}%")