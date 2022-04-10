# P1_Probstat_A_5025201238
**<br>Natya Madya Marciola (5025201238)**
**<br>Probstat A**

## Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)

```
x<-3
p<-0.20
paste("Hasil: ", dgeom(x-1,p))
```
Hasilnya adalah sebagai berikut <br>
![1a](https://user-images.githubusercontent.com/91374949/162616414-567c62cb-ad02-4206-a4db-73262217aed8.png)

b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 

```
random<-10000
mean(rgeom(random,p)==3)
```
Hasil pada saat dua kali running

![1b](https://user-images.githubusercontent.com/91374949/162616584-852de179-f555-4df9-8c59-c2f51ee48783.png)
![1b(2)](https://user-images.githubusercontent.com/91374949/162616590-bd2a1e52-c56c-462c-af93-e1930831d163.png)

c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
```
Berdasarkan hasil yang bisa dilihat, dapat disimpulkan bahwa pada poin b distribusi geometrik acak akan 
menghasilkan nilai yang berubah-ubah, sedangkan pada poin a, nilainya akan tetap
```
d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
```
hist(rgeom(random, p))
```
Hasilnya adalah sebagai berikut<br>
![image](https://user-images.githubusercontent.com/91374949/162625418-dd4cfa24-6c59-4ad6-9298-3fcbb91c7f04.png)

e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
```
rataan=1/p
paste("Nilai Rataan(µ): ", rataan)
varian=(1-p)/p^2
paste("Nilai Varian(s²): ", varian)
```
Hasilnya adalah sebagai berikut<br>
![1e](https://user-images.githubusercontent.com/91374949/162616722-be1535c4-0a52-4277-9203-19c00d8ac64e.png)


## Soal 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

a. Peluang terdapat 4 pasien yang sembuh.
```
n<-20
p<-0.2
x<-4
paste("Hasil: ", dbinom(x, n, p))
```
Hasilnya adalah sebagai berikut<br>
![2a](https://user-images.githubusercontent.com/91374949/162617258-24d40132-845b-4996-85c4-51aa42f54479.png)

b. Gambarkan grafik histogram berdasarkan kasus tersebut.
```
x <- 0:20
plot(x,dbinom(x,n,p),
     type='h',
     main='Distribusi Binomial',
     ylab='Probabilitas')
```
Hasilnya adalah sebagai berikut<br>
![2b](https://user-images.githubusercontent.com/91374949/162617275-2c3f09a7-bce3-4c66-8a18-11bbdac98a08.png)

c. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
```
rataan=n*p
varian= n*p*(1-p)
paste("Nilai Rataan(µ): ", rataan)
paste("Nilai Varian (s²): ", varian)
```
Hasilnya adalah sebagai berikut<br>
![2c](https://user-images.githubusercontent.com/91374949/162617326-5b6e2e92-6037-4e87-a3ae-415279f49bcf.png)


## Soal 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
```
x<-6
lambda<-4.5
paste("Hasil: ", dpois(x,lambda))
```
Hasilnya adalah sebagai berikut<br>
![31](https://user-images.githubusercontent.com/91374949/162617443-b89b298d-692f-4025-a9ac-9d223aba35f5.png)

b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selamasetahun (n = 365)
```
set.seed(0)
n<-365
hist(rpois(n,lambda),main="Histogram Distribusi Poisson",labels=T)
```
Hasilnya adalah sebagai berikut<br>
![3b](https://user-images.githubusercontent.com/91374949/162617451-9051c966-e46f-4c7e-90a5-733d3f5175c3.png)

c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
```
rataan=varian=lambda
paste("Nilai Rataan(µ): ", rataan)
paste("Nilai Varian (s²): ", varian)
```
Hasilnya adalah sebagai berikut<br>
![3d](https://user-images.githubusercontent.com/91374949/162617517-8baf5967-c5e7-4659-86a9-2e71d3bc57fe.png)

## Soal 4
Diketahui nilai x = 2 dan v = 10. Tentukan:

a. Fungsi Probabilitas dari Distribusi Chi-Square.
```
x<-2
v<-10
dchisq(x,v,ncp=0)
```
Hasilnya adalah sebagai berikut<br>

![4a](https://user-images.githubusercontent.com/91374949/162617724-cb9ec7f0-a94c-4a76-b3b4-bb4ea72e4567.png)

b. Histogram dari Distribusi Chi-Square dengan 100 data random.
```
hist(rchisq(100, v), main='Distribusi Chi-Square dengan 100 data random',labels=T)
```
Hasilnya adalah sebagai berikut<br>

![4b](https://user-images.githubusercontent.com/91374949/162617728-45edbdb7-5920-4f16-9497-cdd6e439d6ee.png)

c. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
```
rataan=v
varian=2*v
paste("Nilai Rataan: ", rataan)
paste("Nilai Varian: ", varian)
```
Hasilnya adalah sebagai berikut<br>

![4c](https://user-images.githubusercontent.com/91374949/162617811-32c92587-2988-4ca1-9db1-a7f02216adef.png)

## Soal 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

a. Fungsi Probabilitas dari Distribusi Exponensial
```
#misal sample sizenya 10
n<-10
lambda<-3
paste("Hasil: ", rexp(n, rate=lambda))
```
Hasilnya adalah sebagai berikut<br>

![5a](https://user-images.githubusercontent.com/91374949/162617946-57f084bd-e154-4c4b-aafc-4a853924bc47.png)

b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
```
hist(rexp(10, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 10 bilangan random")
hist(rexp(100, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 100 bilangan random")
hist(rexp(1000, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 1000 bilangan random")
hist(rexp(10000, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 10000 bilangan random")
```
Hasil-hasil tabelnya adalah sebagai berikut<br>
![image](https://user-images.githubusercontent.com/91374949/162617986-275efe39-24e1-415c-a84f-bfcd28b3671c.png)
![image](https://user-images.githubusercontent.com/91374949/162618033-577f3f33-f778-47d5-8459-9a99ada30ea5.png)
![image](https://user-images.githubusercontent.com/91374949/162618047-8de14432-0a76-42ee-8bbb-0dda51a91044.png)
![image](https://user-images.githubusercontent.com/91374949/162618069-138cb0fb-8229-491d-a0fd-1e161bc54539.png)


c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3

Petunjuk:
- Gunakan set.seed(1)
- Gunakan fungsi bawaan 

```
n_c<-100
set.seed(1)
rataan = mean(rexp(n_c, rate = lambda))
varian = (sd(rexp(n_c, rate = lambda))) ^ 2
paste("Nilai Rataan(µ): ", rataan)
paste("Nilai Varian(s²): ", varian)
```
Hasilnya adalah sebagai berikut<br>
![image](https://user-images.githubusercontent.com/91374949/162618110-2f504f34-c7a0-4550-9a55-bbaecc9d87c8.png)

## Soal 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
<br>Keterangan :
<br>X1 = Dibawah rata-rata
<br>X2 = Diatas rata-rata
<br>Contoh data :
<br>1,2,4,2,6,3,10,11,5,3,6,8
<br>rata-rata = 5.083333
<br>X1 = 5
<br>X2 = 6

```
n<-100
mean<-50
sd<-8

z_s = rnorm(n,mean,sd)
z_s
plot(z_s)

```
Hasilnya adalah sebagai berikut<br>
![image](https://user-images.githubusercontent.com/91374949/162618186-dd0ad979-db6a-4d08-b451-63d2492cadda.png)
![image](https://user-images.githubusercontent.com/91374949/162618187-13d74466-fe35-42e9-a98b-65cf5c78ea0b.png)

b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
<br>NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
<br>Contoh :
<br>312312312_Rola_Probstat_A_DNhistogram
```
hist(z_s, breaks = 50, main="5025201238_Natya Madya Marciola_A_DNhistogram")hist(z_s, breaks = 50, main="5025201238_Natya Madya Marciola_A_DNhistogram")
```
Hasilnya adalah sebagai berikut<br>
![image](https://user-images.githubusercontent.com/91374949/162618226-5a04704f-4394-4f28-8814-fe10b79d61f2.png)

c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
```
varian=sd*sd
paste("Nilai Varian: ", varian)
```
Hasilnya adalah sebagai berikut<br>
![image](https://user-images.githubusercontent.com/91374949/162618254-12b6bae5-f70b-416b-a9c0-efc8a7a13160.png)

