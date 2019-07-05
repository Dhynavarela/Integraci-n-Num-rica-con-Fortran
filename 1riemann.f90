         !Este programa calcula la integral definifda f=3.*(y**2)*sin(y)+3.*(y**2)*cos(2*y) de 1 a 4 si el límite existe, con h=0.001. Con intergal de riemann; sumas infeiores de 0 a n-1, superiores de 1 a n.
         real  int,h
         integer n
         a=1.
         b=4.
         h=0.001
         n=((b-a)/h) 
         print *,'El número de particiones n vale', n,'con un h de' ,h
         int=0.0
         do i=0,n-1  
           x=a+i*h
           fx=f(x)
           int=int+fx*h
           print*, i, int
         enddo
         write(*,*)'La integral de' ,a,'a',b,'es:',int 
        end
        real function f(y)
        f=3.*(y**2)*sin(y)+3.*(y**2)*cos(2*y)
        end 
        
