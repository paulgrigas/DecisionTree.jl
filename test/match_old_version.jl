using DecisionTree

n = 100
p = 5

y = randn(n)
X = randn(n, p)

model = build_forest(y, X, 2, 10)
