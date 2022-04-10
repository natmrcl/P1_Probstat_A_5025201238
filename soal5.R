#Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

#a. Fungsi Probabilitas dari Distribusi Exponensial
#misal sample sizenya 10
n<-10
lambda<-3
paste("Hasil: ", rexp(n, rate=lambda))

#b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
hist(rexp(10, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 10 bilangan random")
hist(rexp(100, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 100 bilangan random")
hist(rexp(1000, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 1000 bilangan random")
hist(rexp(10000, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 10000 bilangan random")

#c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3

n_c<-100
set.seed(1)
rataan = mean(rexp(n_c, rate = lambda))
varian = (sd(rexp(n_c, rate = lambda))) ^ 2
paste("Nilai Rataan(µ): ", rataan)
paste("Nilai Varian(s²): ", varian)
