#4. Diketahui nilai x = 2 dan v = 10. Tentukan:

x<-2
v<-10

#a. Fungsi Probabilitas dari Distribusi Chi-Square.
dchisq(x,v,ncp=0)

#b. Histogram dari Distribusi Chi-Square dengan 100 data random.
hist(rchisq(100, v), main='Distribusi Chi-Square dengan 100 data random',labels=T)

#c. Nilai Rataan (µ) dan Varian (s²) dari DistribusiChi-Square.
rataan=v
varian=2*v

paste("Nilai Rataan: ", rataan)
paste("Nilai Varian: ", varian)
