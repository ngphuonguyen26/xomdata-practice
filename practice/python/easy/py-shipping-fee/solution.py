# Xom Data · Shipping fee by weight bracket
# Problem: https://xomdata.com/practice/py-shipping-fee
# Solved: 2026-08-21

def shipping_fee(weight):
    if weight <= 1:
        return 15000 
    elif 1 < weight <=5:
        return 30000
    elif weight > 5:
        return 50000
