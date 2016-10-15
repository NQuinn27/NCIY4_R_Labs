
# Fahrenheit to Celsius conversion
fahrToCel <- function(fahr) {
    cel <- ((fahr - 32) / 9) * 5
    return(cel)
}

# We can call the function as follows
fahrToCel(32)
fahrToCel(1)