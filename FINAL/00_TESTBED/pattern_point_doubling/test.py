q = 2**255 - 19
def ed25519_point_doubling(X1, Y1, Z1):
    # Define the curve parameter
    a = -1
    
    # Compute intermediate values
    A = (X1 ** 2                 )%q
    B = (Y1 ** 2                 )%q
    C = (2 * Z1 ** 2             )%q
    D = (a * A                   )%q
    E = ((X1 + Y1) ** 2 - A - B  )%q
    G = (D + B                   )%q
    F = (G - C                   )%q
    H = (D - B                   )%q

    # Compute the new coordinates
    X3 = (E * F )%q
    Y3 = (G * H )%q
    Z3 = (F * G )%q
    
    return X3, Y3, Z3

# Example usage:
X1 = 1  # Example X coordinate
Y1 = 2  # Example Y coordinate
Z1 = 1  # Example Z coordinate

X3, Y3, Z3 = ed25519_point_doubling(X1, Y1, Z1)

print("New point coordinates after doubling:")
print(f"X3: {X3}")
print(f"Y3: {Y3}")
print(f"Z3: {Z3}")
