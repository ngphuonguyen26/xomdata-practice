# Xom Data · Compute price after discount
# Problem: https://xomdata.com/practice/py-discount
# Solved: 2026-08-22

def final_price(price, percent):
    if price >=0 and 0 <= percent <= 100:
        return price - price * percent / 100
