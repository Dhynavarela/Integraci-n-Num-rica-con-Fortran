          !Este programa calcula la integral de 1/3 de simpson, con n definida para la función x=(1200v)dv/(8v**2+1000)
          use funcion
          use numer
          
          real Xi,Xd,I
          integer n
          n=1000
          write(*,*)'Elige un intervalo de integracion'
          read(*,*)Xi,Xd
          call SIMPSON(Xi,Xd,n,I,f)
          write(*,*)'La integral con n=',n,'de' ,Xi,'a',Xd,'es:',I 
          end 
          module numer
          contains
           subroutine SIMPSON(a,b,n,I,F)
           interface
            function F(X)
             real,intent(in):: X
             real F
            end function
           end interface
           real h,I1,I2,a,b,I
           h=(b-a)/n*1.0
           I1=0.0 
           I2=0.0
            do j=1,n-1,2
             I1=I1+F(a+j*h)
            enddo
            do k=2,n-2,2
             I2=I2+F(a+k*h)
            enddo
            I=(h/3)*(F(a)+4*I1+2*I2+F(b))
           end subroutine
          end module
          module funcion
          contains 
           function f(x)
           real,intent(in)::x
           real f
            f=(1200.*x)/(8.*x**2+1000.)
           end function 
          end module
