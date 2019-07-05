          !Este programa calcula la integral con la regla de simpson de la función x=(1200v)dv/(8v**2+1000) de 15 a 30
          integer nsub
          dimension x(0:15),fx(0:15)
          open(1, file='si.dat',status='old')
          n=15
           do i=0,n
            read (1,*) x(i),fx(i)
           enddo
           nsub=n/2
           suma=0.0
           do k=1,nsub
            x0=x(2*k-2)
            x1=x(2*k-1)
            x2=x(2*k)
            f0=fx(2*k-2)
            f1=fx(2*k-1)
            f2=fx(2*k)
             call cuadratica1(x0,x1,x2,f0,f1,f2,a,b,c)
              suma=suma+(a*(x2-x0)+((b/2.)*(x2**2-x0**2))+((c/3.)*(x2**3-x0**3)))
              print *, k,suma
           enddo
           print *,'la integral de 15 a 30 es' , suma
          end
         subroutine cuadratica1(x0,x1,x2,f0,f1,f2,xa,xb,xc)
          xc=(f0*(x2-x1)+f1*(x0-x2)+f2*(x1-x0))/((x2-x1)*(x0**2)+(x1-x2)*(x1**2)+(x1-x0)*(x2**2))         
          xb=(f1-f0-xc*(x1**2-x0**2))/(x1-x0)
          xa=f0-xb*x0-(xc*x0**2)
         end
  
