# Xom Data · Divide safely when the divisor can be zero
# Problem: https://xomdata.com/practice/py-safe-divide
# Solved: 2026-08-21

def safe_divide(a, b):
    if b != 0:
        return round(a / b, 2)
