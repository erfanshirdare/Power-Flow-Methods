for i=2:n
            for j=2:n
                a=i-1;
                b=j-1;
                if i==j
                    for q=1:n
                        if q~=i
                        j1(a,b)=j1(a,b)+(abs(v(i))*abs(v(q))*abs(y(i,q))*sin(angle(v(i))-angle(v(q))-angle(y(i,q))));
                        end
                    end
                    j1(a,b)=-1.*j1(a,b);
                else
                    j1(a,b)=abs(v(i))*abs(v(j))*abs(y(i,j))*sin(angle(v(i))-angle(v(j))-angle(y(i,j)));
                end
            end
        end
         for i=2:n
            for j=w+2:n
                a=i-1;
                b=j-w-1;
                if i==j
                    j2(a,b)=j2(a,b)+2*abs(v(i))*abs(y(i,j))*cos(angle(y(i,j)));
                    for q=1:n
                        if q~=i
                            j2(a,b)=j2(a,b)+(abs(v(q))*abs(y(i,q))*cos(angle(v(i))-angle(v(q))-angle(y(i,q))));
                        end
                    end
                else
                    j2(a,b)=abs(v(j))*abs(y(i,j))*cos(angle(v(i))-angle(v(j))-angle(y(i,j)));
                end
            end
         end
         for i=w+2:n
            for j=2:n
                a=i-w-1;
                b=j-1;
                if i==j
                    for q=1:n
                        if q~=i
                            j3(a,b)=j3(a,b)+(abs(v(i))*abs(v(q))*abs(y(i,q))*cos(angle(v(i))-angle(v(q))-angle(y(i,q))));
                        end
                    end
                else
                    j3(a,b)=-1*abs(v(i))*abs(v(j))*abs(y(i,j))*cos(angle(v(i))-angle(v(j))-angle(y(i,j)));
                end
            end
         end
         for i=w+2:n
            for j=w+2:n
                a=i-w-1;
                b=j-w-1;
                if i==j
                    j4(a,b)=j4(a,b)-2*(abs(v(i))*abs(y(i,j))*sin(angle(y(i,j))));                    
                    for q=1:n
                        if q~=i
                            j4(a,b)=j4(a,b)+(abs(v(q))*abs(y(i,q))*sin(angle(v(i))-angle(v(q))-angle(y(i,q))));
                        end
                    end
                else
                    j4(a,b)=abs(v(j))*abs(y(i,j))*sin(angle(v(i))-angle(v(j))-angle(y(i,j)));
                end
            end
        end
        j=[j1 j2;j3 j4]; 