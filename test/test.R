source("src/source.R", chdir = TRUE)

test <- function() {
  correct_answer = -2
  tol = .001
  starting_vals = c(2, 4, 8, 16, 32)
  for(x0 in starting_vals) {
    res = converge(x0, tol)
    # We use 2 * tol because the code checks if 
    # the *difference* between the current and
    # next value is less than tol, not that 
    # it is closer than tol to -2. 
    if(abs(res - correct_answer) < 2 * tol) {
      cat("Test passes with x0 = ", x0, "\n")
    } else{
      cat(
        "Test fails with x0 = ", x0, 
        "\n\tObserved output = ", res, 
        "\n\tDesired output = ", correct_answer, 
        "\n")
    }
  }
}

test()
