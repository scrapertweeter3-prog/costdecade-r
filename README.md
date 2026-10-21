# costdecade (R)

Price durability by the decade, not the receipt. R port of the
[costdecade](https://github.com/scrapertweeter3-prog/costdecade) calculator.

The cost-per-decade review method comes from
[DurablePicks](https://durablepicks.com).

## Example

```r
costdecade(340, 10, 120, 2, horizon = 30)
# $cost_per_decade 340  $rival_cost_per_decade 600
# $spend_horizon_mine 1020  $spend_horizon_rival 1800
# $winner "the dear one"  $crossover_years 1.6
```

## Install

```r
install.packages("costdecade", repos = c(
  "https://scrapertweeter3-prog.r-universe.dev",
  "https://cloud.r-project.org"))
```

Cost-Per-Decade Durability Math: benchmark math from the Poket Dev research desk.
