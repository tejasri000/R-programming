max_num <- 50

is_prime <- rep(TRUE, max_num)
is_prime[1] <- FALSE

for (i in 2:sqrt(max_num)) {
  if (is_prime[i]) {
    for (j in seq(i^2, max_num, by = i)) {
      is_prime[j] <- FALSE
    }
  }
}

prime_numbers <- which(is_prime)

print(prime_numbers)