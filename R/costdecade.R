costdecade <- function(price, life, rival_price, rival_life,
                       horizon = 30, inflation_pct = 0, resale_pct = 0) {
  stopifnot(price > 0, life > 0, rival_price > 0, rival_life > 0)
  spend_over <- function(p, l, h, g) {
    n <- 0; total <- 0; year <- 0
    while (year < h) { total <- total + p * g^n; n <- n + 1; year <- year + l }
    total
  }
  g <- 1 + inflation_pct / 100
  mine <- spend_over(price, life, horizon, g) - price * resale_pct / 100
  rival <- spend_over(rival_price, rival_life, horizon, g)
  eff_price <- price * (1 - resale_pct / 100)
  crossover <- eff_price / ((rival_price / rival_life) - (price / life))
  list(cost_per_decade = round(eff_price / life * 10, 2),
       rival_cost_per_decade = round(rival_price / rival_life * 10, 2),
       spend_horizon_mine = round(mine, 2),
       spend_horizon_rival = round(rival, 2),
       winner = if (mine <= rival) "the dear one" else "the budget one",
       crossover_years = if (is.finite(crossover)) round(crossover, 1) else NA)
}
