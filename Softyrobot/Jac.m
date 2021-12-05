function [u1, u2, u3] = Jac(l1, l2, l3, zdiff, ydiff)
    tlength = 68;
    d = tlength /2 /cosd(30);
    
    J = [- ((2*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)^2) + (l2 - 2*l1 + l3)/(d*(l1 + l2 + l3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*((sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*((d^2*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)^2)/(4*(- l1^2 + l1*l2 + l1*l3 - l2^2 + l2*l3 - l3^2)) + (d*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2 + 1)*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(4*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)))/abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i) + (d*cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3)*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)))/(2*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))) + (cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)))/(3*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)) + (sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2/2 + 1/2)*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)))/(3*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)) + (d*sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3))*(2*real(3^(1/2)*(l2 - l3)) + 4*imag(l1) - 2*imag(l2) - 2*imag(l3)))/(2*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)*((real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^2 + (imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3))^2)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)), - ((2*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)^2) + (l1 - 2*l2 + l3)/(d*(l1 + l2 + l3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*((sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*((d^2*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)^2)/(4*(- l1^2 + l1*l2 + l1*l3 - l2^2 + l2*l3 - l3^2)) + (d*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2 + 1)*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(4*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)))/abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i) + (d*cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3)*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)))/(2*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))) + (cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)))/(3*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)) + (sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2/2 + 1/2)*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)))/(3*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)) - (d*sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(1/(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)) - (3^(1/2)*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^2)*(l1 + l2 + l3)*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^2*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(2*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)*((real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^2 + (imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3))^2)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)), - ((2*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)^2) + (l1 + l2 - 2*l3)/(d*(l1 + l2 + l3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*((sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*((d^2*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)^2)/(4*(- l1^2 + l1*l2 + l1*l3 - l2^2 + l2*l3 - l3^2)) + (d*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2 + 1)*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(4*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)))/abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i) + (d*cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3)*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)))/(2*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))) + (cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)))/(3*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)) + (sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2/2 + 1/2)*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)))/(3*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)) - (d*sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(1/(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)) + (3^(1/2)*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^2)*(l1 + l2 + l3)*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^2*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(2*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)*((real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^2 + (imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3))^2)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2));
        - ((2*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)^2) + (l2 - 2*l1 + l3)/(d*(l1 + l2 + l3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*((sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*((d^2*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)^2)/(4*(- l1^2 + l1*l2 + l1*l3 - l2^2 + l2*l3 - l3^2)) + (d*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2 + 1)*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(4*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i) + (d*cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3)*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(2*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))) + (cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(3*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)) + (sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2/2 + 1/2)*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(3*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)) - (d*sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))*(2*real(3^(1/2)*(l2 - l3)) + 4*imag(l1) - 2*imag(l2) - 2*imag(l3)))/(2*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)*((real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^2 + (imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3))^2)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)),                                                              - ((2*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)^2) + (l1 - 2*l2 + l3)/(d*(l1 + l2 + l3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*((sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*((d^2*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)^2)/(4*(- l1^2 + l1*l2 + l1*l3 - l2^2 + l2*l3 - l3^2)) + (d*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2 + 1)*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(4*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i) + (d*cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3)*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(2*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))) + (cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(3*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)) + (sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2/2 + 1/2)*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(3*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)) + (d*sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(1/(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)) - (3^(1/2)*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^2)*(l1 + l2 + l3)*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^3)/(2*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)*((real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^2 + (imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3))^2)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)),                                                              - ((2*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)^2) + (l1 + l2 - 2*l3)/(d*(l1 + l2 + l3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*((sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*((d^2*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)^2)/(4*(- l1^2 + l1*l2 + l1*l3 - l2^2 + l2*l3 - l3^2)) + (d*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2 + 1)*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(4*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i) + (d*cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3)*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(2*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))) + (cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(3*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)) + (sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2/2 + 1/2)*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(3*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)) + (d*sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(1/(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3)) + (3^(1/2)*(imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3)))/(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^2)*(l1 + l2 + l3)*(real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^3)/(2*abs(3^(1/2)*(l2 - l3) + l2*1i + l3*1i - l1*2i)*((real(3^(1/2)*(l2 - l3)) + 2*imag(l1) - imag(l2) - imag(l3))^2 + (imag(3^(1/2)*(l2 - l3)) - 2*real(l1) + real(l2) + real(l3))^2)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2/6 - ((2*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)^2) + (l2 - 2*l1 + l3)/(d*(l1 + l2 + l3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*(cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*((d^2*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)^2)/(4*(- l1^2 + l1*l2 + l1*l3 - l2^2 + l2*l3 - l3^2)) + (d*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2 + 1)*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(4*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))) + (d^2*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)^2)/(4*(- l1^2 + l1*l2 + l1*l3 - l2^2 + l2*l3 - l3^2)) + (d*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2 + 1)*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(4*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)) - (d*sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(2*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))) - (sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3))))/3 + (cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2/2 + 1/2))/3 + 1/6,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2/6 - ((2*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)^2) + (l1 - 2*l2 + l3)/(d*(l1 + l2 + l3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*(cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*((d^2*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)^2)/(4*(- l1^2 + l1*l2 + l1*l3 - l2^2 + l2*l3 - l3^2)) + (d*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2 + 1)*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(4*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))) + (d^2*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)^2)/(4*(- l1^2 + l1*l2 + l1*l3 - l2^2 + l2*l3 - l3^2)) + (d*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2 + 1)*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(4*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)) - (d*sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(2*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))) - (sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3))))/3 + (cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2/2 + 1/2))/3 + 1/6,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2/6 - ((2*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)^2) + (l1 + l2 - 2*l3)/(d*(l1 + l2 + l3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)))*(cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*((d^2*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)^2)/(4*(- l1^2 + l1*l2 + l1*l3 - l2^2 + l2*l3 - l3^2)) + (d*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2 + 1)*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(4*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))) + (d^2*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)^2)/(4*(- l1^2 + l1*l2 + l1*l3 - l2^2 + l2*l3 - l3^2)) + (d*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2 + 1)*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(4*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2)) - (d*sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(l1 + l2 + l3)*(l1/3 + l2/3 + l3/3))/(2*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))) - (sin((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3))))/3 + (cos((2*(l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))*(tan(((l1/3 + l2/3 + l3/3)*(l1^2 - l1*l2 - l1*l3 + l2^2 - l2*l3 + l3^2)^(1/2))/(d*(l1 + l2 + l3)))^2/2 + 1/2))/3 + 1/6];
    invJ = inv(J);
       
    U = invJ * [0; ydiff; zdiff];
    U = U * 5;
    
    if abs(U(1)) > 200 || abs(U(2)) > 200 || abs(U(3)) > 200
        U = U/norm(U);
        U = U/ max(abs(U)) * 200;
    end
    u1 = U(1);
    u2 = U(2);
    u3 = U(3);
end


