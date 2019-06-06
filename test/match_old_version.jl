using DecisionTree, Random, LinearAlgebra

Random.seed!(352)

n = 100
p = 5

y = randn(n)
X = randn(n, p)

X_new = randn(2*n, p)

model = build_forest(y, X, 2, 10)

preds = apply_forest(model, X_new)

norm(preds)
