          !Programa para generar la función de la función x=(1200v)dv/(8v**2+1000) de 15 a 30
         
          open(1,file='si.dat',status='replace')
           do i=15,30
            v=i*(1.)
            x=(1200.*v)/(8.*v**2+1000.)
            print *, v,x
            write(1,*) v,x
           enddo
          end
          
