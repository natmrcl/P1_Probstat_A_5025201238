#3. Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

#a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
x<-6
lambda<-4.5
paste("Hasil: ", dpois(x,lambda))

#b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)

#c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

#d. Nilai Rataan (µ) dan Varian (s²) dari Distribusi Poisson
rataan=varian=lambda
paste("Nilai Rataan(µ): ", rataan)
paste("Nilai Varian (s²): ", varian)
