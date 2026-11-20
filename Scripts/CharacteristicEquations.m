%[text] %[text:anchor:T_BB73E10C] # Characteristic Equations
%[text] [⇦ Main Menu](file:MainMenu.m)
%[text] When modeling physical systems, such as circuits, oscillators, or vibrating structures, we often encounter second-order linear differential equations. The **characteristic equation method** provides a systematic approach to solving homogeneous second-order linear ordinary differential equations. In this script, we'll learn how to find characteristic equations, determine their roots, and construct general solutions, with applications in RLC circuits and mass-spring-damper systems.
%[text:tableOfContents]{"heading":"Table of Contents"}
%[text] %[text:anchor:H_51183E7B] **Before you get started:**
%[text] %[text:anchor:H_BF646A47] This live script is intended to be used with the code hidden. On the **View** tab of the MATLAB Toolstrip, in the **View** section, select **Hide Code**.  Alternatively, select **Hide Code** using the icon ![live script code hidden icon](text:image:7c44) at the top right of the Live Editor pane.
%[text] ![Lightbulb mark](text:image:9aaf) Although the code is hidden, some interactivity requires familiarity with MATLAB. If you need more instruction, consider taking [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted), a free 2-hour online tutorial that teaches the essentials of MATLAB.
%[text] %[text:anchor:H_8F8A032D] ![Warning symbol](text:image:96c8)   For an optimal experience, follow the instructions and steps in the given sequence. Proceed to a new section only after completing the preceding one. Some sections depend on variables created in prior sections and will generate errors if run out of order.
%[text] The ![Try this icon](text:image:9170)  and  ![Exercise icon](text:image:427d) icons refer to two different types of interactive activities that you will find in this script. The ![Try this icon](text:image:2b79)  usually indicates an interaction where you will explore the visualization of some concept introduced in this script. The ![Exercise icon](text:image:5af5) interactions are designed to challenge your understanding of those concepts and may be used for grading and completion checks by your professor.
%%
%[text] ## Background Knowledge
%[text] This script expects you to understand the classification of ordinary differential equations. If you need a refresher, please work through the [Classification](file:./Classification.m) script first. You should also be comfortable with solving quadratic equations and working with complex numbers. Basic knowledge of trigonometry and exponential functions will also be helpful.
%%
%[text] ## The Characteristic Equation Method
%[text] Second-order linear ordinary differential equations (ODEs) are very common in applications, because they often describe dynamics involving acceleration, restoring forces, and damping. 
%[text] - **Mechanical vibrations**, $m \\frac{d^2x}{dt^2} + c\\frac{dx}{dt} +kx = F(t)${"altText":"m \frac{d^2x}{dt^2} + c\frac{dx}{dt} +kx = F(t)"},
%[text]     - where $m${"altText":"m"} is a mass, $c${"altText":"c"} is a damping constant, $k${"altText":"k"} is a spring constant, $F(t)${"altText":"F(t)"} is the driving force, and $x(t)${"altText":"x(t)"} is the position.
%[text] - **RLC electrical circuits**, $L\\frac{d^2q}{dt^2} + R\\frac{dq}{dt} + \\frac{q}{C} = E(t)${"altText":"L\frac{d^2q}{dt^2} + R\frac{dq}{dt} + \frac{q}{C} = E(t)"},
%[text]     - where $L${"altText":"L"} is inductance, $R${"altText":"R"} is resistance, $C${"altText":"C"} is capacitance, $q(t)${"altText":"q(t)"} is charge, $\\frac{dq}{dt} = I${"altText":"\frac{dq}{dt} = I"} is current, and $E(t)${"altText":"E(t)"} is the applied voltage source.
%[text] - **Control systems**, $\\frac{d^2y}{dt^2} + 2\\zeta\\omega\_n\\frac{dy}{dt} + \\omega\_n^2y = Ku(t)${"altText":"\frac{d^2y}{dt^2} + 2\zeta\omega\_n\frac{dy}{dt} + \omega\_n^2y = Ku(t)"},
%[text]     - where $\\zeta${"altText":"\zeta"} is the damping ratio, $\\omega\_n${"altText":"\omega\_n"} is the natural frequency, $u(t)${"altText":"u(t)"} is the input signal, $K${"altText":"K"} is the system gain, and $y(t)${"altText":"y(t)"} is the system output. \
%[text] First, we will work through the theory, but we'll also examine an RLC circuit and a mass-spring-damper system at the end of this script.
%[text] ### Standard Form of Second-Order Linear Homogeneous ODEs
%[text] The characteristic equation method applies to second-order linear homogeneous differential equations of the form:
%[text]{"align":"center"} %[text:anchor:M_923b] $ay'' + by' + cy = 0${"altText":"ay'' + by' + cy = 0"} $(\\star)${"altText":"(\star)"}
%[text] where $a${"altText":"a"}, $b${"altText":"b"}, and $c${"altText":"c"} are constants, and $a \\neq 0${"altText":"a \neq 0"}. Some textbooks suggest a standard form of
%[text]{"align":"center"} $y'' + \\left(\\frac{b}{a}\\right)y' + \\left(\\frac{c}{a}\\right)y = 0${"altText":"y'' + \left(\frac{b}{a}\right)y' + \left(\frac{c}{a}\right)y = 0"}. 
%[text] %[text:anchor:M_2613] ### The Characteristic Equation
%[text] To solve [equation $(\\star)${"altText":"(\star)"}](internal:M_923b), we assume a solution of the form $y = e^{rx}${"altText":"y = e^{rx}"}, where $r${"altText":"r"} is a constant to be determined. Substituting this into our differential equation:
%[text]{"align":"center"} $y' = re^{rx}${"altText":"y' = re^{rx}"}     and      $y'' = r^2e^{rx}${"altText":"y'' = r^2e^{rx}"}, 
%[text] so plugging into the [differential equation $(\\star)${"altText":"(\star)"}](internal:M_923b), this gives us:
%[text]{"align":"center"} $ar^2e^{rx} + bre^{rx} + ce^{rx} = 0${"altText":"ar^2e^{rx} + bre^{rx} + ce^{rx} = 0"}
%[text] Since $e^{rx} \\neq 0${"altText":"e^{rx} \neq 0"} for any finite value of $x${"altText":"x"}, we can divide by $e^{rx}${"altText":"e^{rx}"}:
%[text]{"align":"center"} $ar^2 + br + c = 0${"altText":"ar^2 + br + c = 0"}
%[text] This quadratic equation in $r${"altText":"r"} is called the **characteristic equation** of the differential equation.
%[text] ### Types of Solutions Based on Roots
%[text] As a second-order homogeneous ODE, the general solution will be a linear combination of two linearly independent solutions. Conveniently, the quadratic formula tells us that the solutions to the characteristic equation are 
%[text]{"align":"center"} $r\_{1,2} = \\frac{-b\\pm \\sqrt{b^2-4ac}}{2a}${"altText":"r\_{1,2} = \frac{-b\pm \sqrt{b^2-4ac}}{2a}"}.
%[text] This gives us two solutions
%[text]{"align":"center"} $y\_1 = e^{r\_1x}${"altText":"y\_1 = e^{r\_1x}"} and $y\_2=e^{r\_2x}${"altText":"y\_2=e^{r\_2x}"}, 
%[text] right? Three scenarios can occur: distinct real roots, repeated roots, and complex conjugate roots. Perhaps surprisingly, as long as our roots are not repeated, the process of identifying our solution will be very much the same! The challenge if $r\_1 = r\_2${"altText":"r\_1 = r\_2"} is that we don't have two linearly independent solutions! We can check how to build a second independent solution when we get there. 
%[text] Let's classify the cases according to the discriminant $\\Delta = b^2 - 4ac${"altText":"\Delta = b^2 - 4ac"}, and work through them one at a time.
%[text] #### Case 1: Two Distinct Real Roots (Δ\>0)
%[text] If $r\_1${"altText":"r\_1"} and $r\_2${"altText":"r\_2"} are distinct real roots, we have two linearly independent solutions $y\_1 = e^{r\_1x}${"altText":"y\_1 = e^{r\_1x}"} and $y\_2 = e^{r\_2x}${"altText":"y\_2 = e^{r\_2x}"}, so the general solution is:
%[text]{"align":"center"} $y(x) = c\_1e^{r\_1x} + c\_2e^{r\_2x}${"altText":"y(x) = c\_1e^{r\_1x} + c\_2e^{r\_2x}"}
%[text] <u>**Step-by-Step Example**</u>
%[text] Consider the differential equation: $y'' - 5y' + 6y = 0${"altText":"y'' - 5y' + 6y = 0"}.
%[text] **Step 1:** Write the characteristic equation by applying the method described [above](internal:M_2613).
%[text]{"align":"center"} $r^2 - 5r + 6 = 0${"altText":"r^2 - 5r + 6 = 0"}
%[text] **Step 2:** Solve the characteristic equation for the roots.
%[text]{"align":"center"} $(r - 2)(r - 3) = 0${"altText":"(r - 2)(r - 3) = 0"}
%[text] So $r\_1 = 2${"altText":"r\_1 = 2"} and $r\_2 = 3${"altText":"r\_2 = 3"} (distinct real roots).
%[text] **Step 3:** Identify two linearly independent solutions to the homogeneous differential equation: $y\_1(x) = e^{2x}${"altText":"y\_1(x) = e^{2x}"} and $y\_2(x)  = e^{3x}${"altText":"y\_2(x)  = e^{3x}"}.
%[text] **Step 4:** Write the general solution as a general linear combination of the two linearly independent homogeneous solutions. 
%[text]{"align":"center"} $y(x) = c\_1e^{2x} + c\_2e^{3x}${"altText":"y(x) = c\_1e^{2x} + c\_2e^{3x}"}
%[text] ![](text:image:5198) **Exercise 1. Distinct real roots**
  %[control:button:358c]{"position":[1,2]}
[diffeq1,Problem1] = GenerateProblem("real");
%%
%[text] a) What is the characteristic polynomial?
%[text] ```matlabCodeExample
%[text] % Use notation from the Symbolic Math Toolbox for defining an equation uses ==, e.g.
%[text] 2*r^2 -8*r - 10 == 0
%[text] ```
syms r
CharPol =  r == 0;   %[control:editfield:1882]{"position":[11,18]} %[control:button:1a1c]{"position":[20,21]}
CheckCharacteristicPolynomial(CharPol,Problem1)
%%
%[text] b) What are the roots of this polynomial?
r1 =  0; %[control:editfield:8ea8]{"position":[6,8]}
r2 =  0;   %[control:editfield:3e7e]{"position":[6,8]} %[control:button:60dc]{"position":[10,11]}
CheckRoots(r1,r2,Problem1)
%%
%[text] c) What is the general solution to the differential equation? Use `C1` and `C2` for the general coefficients. Remember that $e^{rx}${"altText":"e^{rx}"} is `exp(r*x)` in MATLAB.
%[text] ```matlabCodeExample
%[text] % Example solution
%[text] y(x) = C1*exp(-x)+C2*exp(5*x)
%[text] ```
syms x C1 C2 y(x)
GenSol =  C1*x + C2*exp(4*x);   %[control:editfield:4288]{"position":[10,29]} %[control:button:2f33]{"position":[31,32]}
CheckGeneralSolution(GenSol,diffeq1)
%%
%[text] #### Case 2: One Repeated Real Root (Δ=0)
%[text] This is a problem, because if we followed the patterns in Case 1, we would have
%[text]{"align":"center"} $y(x) = c\_1e^{rx}+c\_2e^{rx} = ce^{rx}${"altText":"y(x) = c\_1e^{rx}+c\_2e^{rx} = ce^{rx}"},
%[text] because the solutions that we found are (very clearly!) linearly *dependent.* How can we find another linearly independent solution? We know we need a function where the derivative will look like a multiple of itself, so let's try using a test function 
%[text]{"align":"center"} $y\_{\\text{test}} = xe^{rx}${"altText":"y\_{\text{test}} = xe^{rx}"} 
%[text] with derivatives 
%[text]{"align":"center"} $y\_{\\text{test}}' = e^{rx}+rxe^{rx}${"altText":"y\_{\text{test}}' = e^{rx}+rxe^{rx}"} ,
%[text]{"align":"center"} $y\_{\\text{test}}'' = 2re^{rx} + r^2xe^{rx}${"altText":"y\_{\text{test}}'' = 2re^{rx} + r^2xe^{rx}"}. 
%[text] Plugging in, we have:
%[text]{"align":"center"} $a\\left(2re^{rx}+r^2xe^{rx}\\right) + b\\left(e^{rx}+rxe^{rx}\\right) + c\\left(xe^{rx}\\right) = (2ar+b)e^{rx} + \\left(ar^2+br+c\\right)xe^{rx}${"altText":"a\left(2re^{rx}+r^2xe^{rx}\right) + b\left(e^{rx}+rxe^{rx}\right) + c\left(xe^{rx}\right) = (2ar+b)e^{rx} + \left(ar^2+br+c\right)xe^{rx}"}.
%[text] Now, $(ar^2+br+c)=0${"altText":"(ar^2+br+c)=0"}, but what about that $(2ar+b)${"altText":"(2ar+b)"} term? Remember that we know $\\Delta = b^2-4ac = 0${"altText":"\Delta = b^2-4ac = 0"}, which means that $r = \\frac{-b}{2a}${"altText":"r = \frac{-b}{2a}"}, and thus $2ar+b = -b+b = 0${"altText":"2ar+b = -b+b = 0"}. This gives us a second, linearly independent, solution $y\_2 = xe^{rx}${"altText":"y\_2 = xe^{rx}"}. Therefore, if $r${"altText":"r"} is a repeated root, the general solution is:
%[text]{"align":"center"} $y(x) = (c\_1 + c\_2x)e^{rx}${"altText":"y(x) = (c1 + c2\*x)\*e^{rx}"}
%[text] <u>**Step-by-Step Example**</u>
%[text] Consider the differential equation: $y'' - 4y' + 4y = 0${"altText":"y'' - 4y' + 4y = 0"}.
%[text] **Step 1:** Write the characteristic equation by applying the method described [above](internal:M_2613).
%[text]{"align":"center"} $r^2 - 4r + 4 = 0${"altText":"r^2 - 4r + 4 = 0"}
%[text] **Step 2:** Solve the characteristic equation for the roots.
%[text]{"align":"center"} $(r - 2)(r - 2) = 0${"altText":"(r - 2)(r - 2) = 0"}
%[text] So $r\_1 = 2${"altText":"r\_1 = 2"} and $r\_2 = 2${"altText":"r\_2 = 2"} (repeated real roots).
%[text] **Step 3:** Identify two linearly independent solutions to this homogeneous differential equation: $y\_1(x) = e^{2x}${"altText":"y\_1(x) = e^{2x}"} and $y\_2(x) = xe^{2x}${"altText":"y\_2(x) = xe^{2x}"}. 
%[text] **Step 4:** Write the general solution as any linear combination of the two linearly independent homogeneous solutions. 
%[text]{"align":"center"} $y(x) = c\_1e^{2x} + c\_2xe^{2x} = (c\_1+c\_2x)e^{2x}${"altText":"y(x) = c\_1e^{2x} + c\_2xe^{2x} = (c\_1+c\_2x)e^{2x}"}
%[text] ![](text:image:98e9) **Exercise 2. Repeated Roots**
  %[control:button:3728]{"position":[1,2]}
[diffeq2,Problem2] = GenerateProblem("repeated");
%%
%[text] a) What is the characteristic polynomial?
%[text] ```matlabCodeExample
%[text] % Use notation from the Symbolic Math Toolbox for defining an equation uses ==, e.g.
%[text] 2*r^2 -8*r - 10 == 0
%[text] ```
syms r
CharPol2 =  r == 0;   %[control:editfield:5f9b]{"position":[12,19]} %[control:button:9edc]{"position":[21,22]}
CheckCharacteristicPolynomial(CharPol2,Problem2)
%%
%[text] b) What are the roots of this polynomial?
r12 =  0; %[control:editfield:62ba]{"position":[7,9]}
r22 =  0;   %[control:editfield:9a7f]{"position":[7,9]} %[control:button:51de]{"position":[11,12]}
CheckRoots(r12,r22,Problem2)
%%
%[text] c) What is the general solution to the differential equation? Use `C1` and `C2` for the general coefficients. Remember that $e^{rx}${"altText":"e^{rx}"} is `exp(r*x)` in MATLAB.
syms x C1 C2 y(x)
GenSol2 =  C1*x + C2*exp(4*x);   %[control:editfield:1686]{"position":[11,30]} %[control:button:207d]{"position":[32,33]}
CheckGeneralSolution(GenSol2,diffeq2)
%%
%[text] %[text:anchor:M_661d] #### Case 3: Complex Conjugate Roots (Δ\<0)
%[text] If the roots are $r = \\alpha \\pm \\beta i${"altText":"r = \alpha \pm \beta i"}, our solutions are $y\_1 = e^{(\\alpha+\\beta i)x}${"altText":"y\_1 = e^{(\alpha+\beta i)x}"} and $y\_2 = e^{(\\alpha-\\beta i)x}${"altText":"y\_2 = e^{(\alpha-\beta i)x}"}. Following the earlier pattern, our general solution is:
%[text]{"align":"center"} $y = c\_1e^{(\\alpha+\\beta i)x}+c\_2e^{\\alpha-\\beta i)x}${"altText":"y = c\_1e^{(\alpha+\beta i)x}+c\_2e^{\alpha-\beta i)x}"}.
%[text] These are linearly independent functions, but can we recombine these terms to make them look more familiar? Recall Euler's formula: $e^{i\\theta} = \\cos(\\theta)+i\\sin(\\theta)${"altText":"e^{i\theta} = \cos(\theta)+i\sin(\theta)"}.  
%[text]{"align":"center"} $y = c\_1e^{(\\alpha+\\beta i)x}+c\_2e^{\\alpha-\\beta i)x}${"altText":"y = c\_1e^{(\alpha+\beta i)x}+c\_2e^{\alpha-\beta i)x}"}
%[text]{"align":"center"} $y = e^{\\alpha x}\\left(c\_1e^{\\beta xi}+c\_2e^{-\\beta xi}\\right)${"altText":"y = e^{\alpha x}\left(c\_1e^{\beta xi}+c\_2e^{-\beta xi}\right)"}
%[text]{"align":"center"} $y = e^{\\alpha x}\\left(c\_1(\\cos(\\beta x)+i\\sin(\\beta x))+c\_2(\\cos(\\beta x)-i\\sin(\\beta x))\\right)${"altText":"y = e^{\alpha x}\left(c\_1(\cos(\beta x)+i\sin(\beta x))+c\_2(\cos(\beta x)-i\sin(\beta x))\right)"}
%[text]{"align":"center"} $y = e^{\\alpha x}\\left((c\_1+c\_2)\\cos(\\beta x)+i(c\_1-c\_2)\\sin(\\beta x)\\right)${"altText":"y = e^{\alpha x}\left((c\_1+c\_2)\cos(\beta x)+i(c\_1-c\_2)\sin(\beta x)\right)"}
%[text] And finally, remember that $c\_1${"altText":"c\_1"} and $c\_2${"altText":"c\_2"} are general constants, so the new combinations $c\_1+c\_2${"altText":"c\_1+c\_2"} and $i(c\_1-c\_2)${"altText":"i(c\_1-c\_2)"} are also arbitrary constants. It is a good reminder that "arbitrary" does not mean *real.* 
%[text] Therefore, the general solution can be written as:
%[text]{"align":"center"} $y(x) = e^{\\alpha x}(c\_1\\cos(\\beta x) + c\_2\\sin(\\beta x))${"altText":"y(x) = e^{\alpha x}(c\_1\cos(\beta x) + c\_2\sin(\beta x))"}
%[text] or
%[text]{"align":"center"} $y(x) = c\_1e^{(\\alpha+\\beta i)x}+c\_2e^{\\alpha-\\beta i)x}${"altText":"y = c\_1e^{(\alpha+\beta i)x}+c\_2e^{\alpha-\beta i)x}"}
%[text] whichever is more convenient.
%[text] <u>**Step-by-Step Example**</u>
%[text] Consider the differential equation: $5y'' - 4y' + y = 0${"altText":"5y'' - 4y' + y = 0"}.
%[text] **Step 1:** Write the characteristic equation by applying the method described [above](internal:M_2613).
%[text]{"align":"center"} $5r^2- 4r + 1 = 0${"altText":"5r^2- 4r + 1 = 0"}
%[text] **Step 2:** Solve the characteristic equation for the roots.
%[text]{"align":"center"} $r = \\frac{-(-4)\\pm \\sqrt{(-4)^2-4(5)(1)}}{2(5)}${"altText":"r = \frac{-(-4)\pm \sqrt{(-4)^2-4(5)(1)}}{2(5)}"}
%[text]{"align":"center"} $r = \\frac{4\\pm \\sqrt{-4}}{10}${"altText":"r = \frac{4\pm \sqrt{-4}}{10}"}
%[text] So $r\_1 = \\frac{2}{5}+\\frac{i}{5}${"altText":"r\_1 = \frac{2}{5}+\frac{i}{5}"} and $r\_2 = \\frac{2}{5}-\\frac{i}{5}${"altText":"r\_2 = \frac{2}{5}-\frac{i}{5}"} (complex conjugate roots).
%[text] **Step 3:** Identify two linearly independent solutions to this homogeneous differential equation: $y\_1(x) = e^{\\frac{2x}{5}}\\sin\\left(\\frac{x}{5}\\right)${"altText":"y\_1(x) = e^{\frac{2x}{5}}\sin\left(\frac{x}{5}\right)"} and $y\_2(x) = e^{\\frac{2x}{5}}\\cos\\left(\\frac{x}{5}\\right)${"altText":"y\_2(x) = e^{\frac{2x}{5}}\cos\left(\frac{x}{5}\right)"}. 
%[text] **Step 4:** Write the general solution as any linear combination of the two linearly independent homogeneous solutions. 
%[text]{"align":"center"} $y(x) = c\_1e^{\\frac{2x}{5}}\\sin\\left(\\frac{x}{5}\\right) + c\_2e^{\\frac{2x}{5}}\\cos\\left(\\frac{x}{5}\\right)${"altText":"y(x) = c\_1e^{\frac{2x}{5}}\sin\left(\frac{x}{5}\right) + c\_2e^{\frac{2x}{5}}\cos\left(\frac{x}{5}\right)"}
%%
%[text] ![](text:image:9e26) **Exercise 3. Complex Roots**
  %[control:button:4ee8]{"position":[1,2]}
[diffeq3,Problem3] = GenerateProblem("complex");
%%
%[text] a) What is the characteristic polynomial?
%[text] ```matlabCodeExample
%[text] % Use notation from the Symbolic Math Toolbox for defining an equation uses ==, e.g.
%[text] 2*r^2 -8*r - 10 == 0
%[text] ```
syms r
CharPol3 =  r == 0;   %[control:editfield:3d65]{"position":[12,19]} %[control:button:231f]{"position":[21,22]}
CheckCharacteristicPolynomial(CharPol3,Problem3)
%%
%[text] b) What are the roots of this polynomial?
r13 =  0; %[control:editfield:39cb]{"position":[7,9]}
r23 =  0;   %[control:editfield:3da2]{"position":[7,9]} %[control:button:2c7c]{"position":[11,12]}
CheckRoots(r13,r23,Problem3)
%%
%[text] c) What is the general solution to the differential equation? Use `C1` and `C2` for the general coefficients. Remember that $e^{rx}${"altText":"e^{rx}"} is `exp(r*x)` in MATLAB. Use the real functional form with sines and cosines.
syms x C1 C2 y(x)
GenSol3 =  C1*x + C2*exp(4*x);   %[control:editfield:8e55]{"position":[11,30]} %[control:button:10c2]{"position":[32,33]}
CheckGeneralSolution(GenSol3,diffeq3)
%%
%[text] ![](text:image:702b) **Exercise 4.** Apply the methods you have learned to solve the following problem.
  %[control:button:39d5]{"position":[1,2]}
[diffeq4,Problem4] = GenerateProblem("any");
%%
%[text] a) What is the characteristic polynomial?
%[text] ```matlabCodeExample
%[text] % Use notation from the Symbolic Math Toolbox for defining an equation uses ==, e.g.
%[text] 2*r^2 -8*r - 10 == 0
%[text] ```
syms r
CharPol4 =  r == 0;   %[control:editfield:6ff0]{"position":[12,19]} %[control:button:4b62]{"position":[21,22]}
if exist("Problem4","var")
    CheckCharacteristicPolynomial(CharPol4,Problem4)
else
    warning("You must generate a problem before you can solve it.")
end
%%
%[text] b) What are the roots of this polynomial?
r14 =  0; %[control:editfield:0e8d]{"position":[7,9]}
r24 =  0;   %[control:editfield:1d21]{"position":[7,9]} %[control:button:5475]{"position":[11,12]}
if exist("Problem4","var")
    CheckRoots(r14,r24,Problem4)
else
    warning("You must generate a problem before you can solve it.")
end
%%
%[text] c) Which case applies to this polynomial?
type = "unknown"; %[control:dropdown:1402]{"position":[8,17]}

if exist("Problem4","var")
    CheckType(type,Problem4)
else
    warning("You must generate a problem before you can solve it.")
end
%%
%[text] d) What is the general solution to the differential equation? Use `C1` and `C2` for the general coefficients. Remember that $e^{rx}${"altText":"e^{rx}"} is `exp(r*x)` in MATLAB. Use the real functional form with sines and cosines.
syms x C1 C2 y(x)
GenSol4 =  C1*x + C2*exp(4*x);   %[control:editfield:8bef]{"position":[11,30]} %[control:button:219a]{"position":[32,33]}
if exist("diffeq4","var")
    CheckGeneralSolution(GenSol4,diffeq4)
else
    warning("You must generate a problem before you can solve it.")
end
%%
%[text] ## ![](text:image:24e4) **Application** 1: RLC Circuits
%[text] An RLC circuit consists of a resistor (R), an inductor (L), and a capacitor (C) connected in series. 
%[text]{"align":"center"} ![Decoration: a symbolic representation of an LRC circuit.](text:image:761d)
%[text] The voltage across the capacitor satisfies the differential equation:
%[text]{"align":"center"} $L\\frac{d^2q}{dt^2} + R\\frac{dq}{dt} + \\frac{1}{C}q = 0${"altText":"L\frac{d^2q}{dt^2} + R\frac{dq}{dt} + \frac{1}{C}q = 0"}
%[text] where $q(t)${"altText":"q(t)"} is the charge on the capacitor.
%[text] Dividing by $L${"altText":"L"}, we get the standard form:
%[text]{"align":"center"} $\\frac{d^2q}{dt^2} + \\frac{R}{L}\\frac{dq}{dt} + \\frac{1}{LC}q = 0${"altText":"d^2q\/dt^2 + (R\/L)\*dq\/dt + (1\/LC)\*q = 0"}
%[text] The characteristic equation can be written as: 
%[text]{"align":"center"} $r^2 + \\frac{R}{L}r + \\frac{1}{LC} = 0${"altText":"r^2 + \frac{R}{L}r + \frac{1}{LC} = 0"}.
%[text] The discriminant is: 
%[text]{"align":"center"} $\\Delta = \\left(\\frac{R}{L}\\right)^2 - \\frac{4}{LC}${"altText":"\Delta = \left(\frac{R}{L}\right)^2 - \frac{4}{LC}"}.
%[text] ![](text:image:77e2) **Try**. **Interactive RLC Circuit Analysis**
%[text] The behavior of the circuit depends on the discriminant. Can you find values for $L${"altText":"L"}, $R${"altText":"R"}, and $C${"altText":"C"} that result in a positive discriminant? A negative discriminant? A zero discriminant? Explore how different circuit parameters affect the response:
L_val = 6; % H %[control:slider:8efd]{"position":[9,10]}
R_val = 2*1000;  % Ω %[control:slider:2fba]{"position":[9,10]}
C_val = 0.25*1e-6;   % F %[control:slider:7d4c]{"position":[9,13]} %[control:button:49e2]{"position":[20,21]}
show_theory = false; %[control:checkbox:017b]{"position":[15,20]}
AnalyzeRLCCircuit(L_val, R_val, C_val, show_theory);
%%
%[text] %[text:anchor:TMP_4ba5] ![](text:image:22b3) **Reflect**. Did you notice that the solutions to systems with positive, negative, and zero discriminants have names? Why do you think a system with a negative discriminant is called "underdamped"? Or a system with a positive discriminant "overdamped"? 
%[text] ## ![](text:image:60b2) Application 2: Mass-Spring-Damper Systems
%[text] Newton's second law governs a mass-spring-damper system:
%[text]{"align":"center"} $m\\frac{d^2x}{dt^2} + c\\frac{dx}{dt} + kx = 0${"altText":"m\frac{d^2x}{dt^2} + c\frac{dx}{dt} + kx = 0"}
%[text] where $m${"altText":"m"} is mass, $c${"altText":"c"} is the damping content, and $k${"altText":"k"} is the spring constant. The value $x${"altText":"x"} tracks the position of the mass along a line at time $t${"altText":"t"}.
%[text]{"align":"center"} ![](text:image:73a1)
%[text] Dividing by $m${"altText":"m"}, we get: 
%[text]{"align":"center"} $\\displaystyle \\frac{d^2x}{dt^2} + \\frac{c}{m}\\frac{dx}{dt} + \\frac{k}{m}x = 0${"altText":"\displaystyle \frac{d^2x}{dt^2} + \frac{c}{m}\frac{dx}{dt} + \frac{k}{m}x = 0"}.
%[text] The characteristic equation is: 
%[text]{"align":"center"} $r^2 + \\frac{c}{m}r + \\frac{k}{m} = 0${"altText":"r^2 + \frac{c}{m}r + \frac{k}{m} = 0"}.
%[text] The discriminant is:
%[text]{"align":"center"} $\\Delta = \\frac{c^2}{m^2}-\\frac{4k}{m}${"altText":"\Delta = \frac{c^2}{m^2}-\frac{4k}{m}"}.
%[text] ### System Behavior
%[text] ![](text:image:3622) **Try**. **Interactive Mass-Spring-Damper Analysis**
%[text] Similar to the RLC circuit, the behavior depends on the discriminant. Can you find an underdamped system? An overdamped system? A critically damped system? Explore different mechanical system parameters:
m_val = 75; % kg %[control:slider:818c]{"position":[9,11]}
c_val = 38; % Ns/m %[control:slider:26d3]{"position":[9,11]}
k_val = 521; % N/m %[control:slider:6d87]{"position":[9,12]}
x0_val = 1; %[control:editfield:49fe]{"position":[10,11]}
v0_val = 0;    %[control:editfield:5d40]{"position":[10,11]} %[control:button:25cb]{"position":[14,15]}
show_theory_msd = false; %[control:checkbox:5b0e]{"position":[19,24]}
AnalyzeMassSpringDamper(m_val, c_val, k_val, x0_val, v0_val, show_theory_msd);
%%
%[text] %[text:anchor:TMP_53d5] ![](text:image:6677) **Reflect**. The phase portrait plots the path of a solution in phase space: position versus velocity (or momentum). This view can be a convenient way to see if a solution is converging to a steady state or diverging to a point where something breaks down, for any real system. For this system, we know that $x(0) = 0${"altText":"x(0) = 0"}, $\\dot{x}(0)=0${"altText":"\dot{x}(0)=0"} is an equilibrium solution. If we start with a mass sitting still at the resting distance of the spring, it will remain there forever until something changes. Because of the damper, this system will always be approaching its steady state. Can you think of some values to change so that it would not?
%[text] ## Further Exploration
%[text] To learn how to work with these types of equations symbolically in MATLAB, you could take the beginning of the [Introduction to Symbolic Math with MATLAB](https://matlabacademy.mathworks.com/v1/portal.html?course=symbolic) course, just up through "Define and Solve Symbolic Equations" and then skip to "Solving Ordinary Differential Equations" in the Calculus with Symbolic Math chapter.
%[text] There is more discussion of phase portraits in the courseware on [Qualitative Analysis of ODEs](https://www.mathworks.com/matlabcentral/fileexchange/95513-qualitative-analysis-of-odes).
%%
%[text] [⇦ Main Menu](file:MainMenu.m)
%%
%[text] %[text:anchor:H_0AAABA39] ## Local Helper Functions
%[text] If you want to see the details of the code, select the **View** tab and switch to **Output Inline**. Alternatively, select **Output inline** using the icon ![live script output inline icon](text:image:0f1d) at the top right of the Live Editor pane.
%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.
%%
function AnalyzeRLCCircuit(L, R, C, show_theory)
% Calculate characteristic equation parameters
a = 1;
b = R/L;
c = 1/(L*C);

% Calculate discriminant
discriminant = b^2 - 4*a*c;

% Calculate roots
syms t
roots = solve([a b c]*[t^2;t;1]==0);
r1 = roots(1);
r2 = roots(2);
if discriminant > 0
    case_name = 'Overdamped';
elseif discriminant == 0
    case_name = 'Critically Damped';
else
    alpha = real(r1);
    beta = abs(imag(r1));
    case_name = 'Underdamped';
end

% Calculate response (assuming q(0) = 1, q'(0) = 0)
syms q(t) t
Dq = diff(q,t);
diffeq = a*diff(q,t,2)+b*Dq + c*q == 0;
qSoln = dsolve(diffeq,[q(0)==1 Dq(0)== 0]);

% Create time vector
tVals = linspace(0, 20*L/R, 1000);
qVals = subs(qSoln,t,tVals);

figure
tiledlayout(2,1)

nexttile
plot(tVals, qVals, "-", LineWidth=2)
title("RLC Circuit Response - " + case_name)
xlabel("Time (s)")
ylabel("Charge q(t)")
grid on
ylim(double([min(qVals)-0.1*range(qVals), max(qVals)+0.1*range(qVals)]))

nexttile
% Show parameter relationships
bar(1, R/L, FaceColor="r", FaceAlpha=0.7)
hold on
bar(2, 2*sqrt(1/(L*C)), FaceColor="g", FaceAlpha=0.7)
bar(3, discriminant, FaceColor="b", FaceAlpha=0.7)
hold off

xticks([1 2 3])
xticklabels(["R/L", "2/√(LC)", "Δ"])
ylabel("Value")
title("Circuit Parameters")
grid on
legend("Damping", "Natural Freq", "Discriminant",Location="southwest")

% Display analysis
if show_theory
    fprintf('\n--- RLC Circuit Analysis ---\n')
    fprintf('L = %.2f H, R = %.2f kΩ = %.0f Ω , C = %.3f µF = %.2f * 1e-7 F\n', L, R/1000,R, 1e6*C, 1e7*C)
    fprintf('Characteristic equation: r² + %.3fr + %.3f = 0\n', b, c)
    fprintf("Damping: %.3f\nNatural frequency: %.3f\n",R/L,2/sqrt(L*C))
    fprintf('Discriminant: %.3f\n', discriminant)
    fprintf('System type: %s\n', case_name)

    if discriminant >= 0
        fprintf('Roots: r₁ = %.3f, r₂ = %.3f\n', r1, r2)
    elseif show_theory
        fprintf('Complex roots: r = %.3f ± %.3fi\n', alpha, beta)
    end

    fprintf("Assume q(0)=1 and q'(0)=0.\n")
    % Display the differential equation solution
    fprintf('Differential equation solution: q(t) = %s\n', char(qSoln))
end
end

function AnalyzeMassSpringDamper(m, c, k, x0, v0, show_theory)
% Calculate characteristic equation parameters
a = 1;
b = c/m;
c_coeff = k/m;

% Calculate discriminant
discriminant = b^2 - 4*a*c_coeff;

% Calculate natural frequency and damping ratio
omega_n = sqrt(k/m);
zeta = c/(2*sqrt(k*m));

syms t x(t)
roots = solve([a b c_coeff]*[t^2;t;1]==0);
r1 = roots(1);
r2 = roots(2);
Dx = diff(x,t);
xEqn = dsolve(a*diff(x,t,2)+b*Dx+c_coeff*x==0,[x(0)==x0 Dx(0)==v0]);
tVals = linspace(0, 10/omega_n, 1000);
xVals = subs(xEqn,t,tVals);

% Calculate roots and response
if discriminant > 0
    % Overdamped
    case_name = "Overdamped";
elseif abs(discriminant) < 1e-10
    % Critically damped
    case_name = "Critically Damped";
else
    % Underdamped
    case_name = "Underdamped";
    alpha = real(r1);
    beta = abs(imag(r1));
end

figure(Position=[1 1 1100 500])
tiledlayout(2,2)

nexttile
plot(tVals, xVals, "-", LineWidth=2)
hold on
scatter(0,x0,35,"filled","o",SeriesIndex=2)
hold off
title(sprintf("Mass-Spring-Damper - %s", case_name))
xlabel("Time (s)")
ylabel("Displacement x(t)")
grid on
legend("Response", "Initial Position")

nexttile
% Phase portrait (velocity vs position)
if length(tVals) > 1
    vEqn = diff(xEqn,t);
    vVals = subs(vEqn,t,tVals);
    plot(xVals, vVals, "-", LineWidth=1.5,SeriesIndex=5)
    hold on
    scatter(x0, v0, 35, "filled", SeriesIndex=2)
    scatter(0, 0, 35, "filled", SeriesIndex="none")
    hold off
end
xlabel("Position x")
ylabel("Velocity dx/dt")
title("Phase Portrait")
grid on
legend("Trajectory", "Initial State", "Equilibrium",Location="best")

nexttile
% System parameters
bar(1, omega_n, SeriesIndex=1, FaceAlpha=0.7)
hold on
bar(2, zeta, SeriesIndex=2, FaceAlpha=0.7)
bar(3, discriminant, SeriesIndex=3, FaceAlpha=0.7)
hold off

xticks([1 2 3])
xticklabels({"ωₙ", "ζ", "Δ"})
ylabel("Value")
title("System Parameters")
grid on

nexttile
% Energy analysis (for underdamped case)
if discriminant < 0
    KE = 0.5*m*vVals.^2;
    PE = 0.5*k*xVals.^2;
    Total = KE + PE;

    plot(tVals, KE, "-", "LineWidth", 1.5, SeriesIndex=2)
    hold on
    plot(tVals, PE, "-", "LineWidth", 1.5, SeriesIndex=1)
    plot(tVals, Total, "--", "LineWidth", 2, SeriesIndex="none")
    hold off
    xlabel("Time (s)");
    ylabel("Energy");
    title("Energy vs Time");
    legend("Kinetic", "Potential", "Total");
    grid on;
else
    msg = ["Energy plot" "available for" "underdamped case"];
    text(0.5, 0.5, msg, ...
        "HorizontalAlignment", "center", "FontSize", 12);
    xlim([0 1]); ylim([0 1]);
    axis off
    title("Energy Analysis");
end

% Display analysis
if show_theory
    fprintf("\n--- Mass-Spring-Damper Analysis ---\n");
    fprintf("m = %.2f kg, c = %.2f N·s/m, k = %.2f N/m\n", m, c, k);
    fprintf("Initial conditions: x₀ = %.2f m, v₀ = %.2f m/s\n", x0, v0);
    fprintf("Natural frequency: ωₙ = %.3f rad/s\n", omega_n);
    fprintf("Damping ratio: ζ = %.3f\n", zeta);
    fprintf("Discriminant: %.3f\n", discriminant);
    fprintf("System type: %s\n", case_name);

    if discriminant >= 0
        fprintf("Characteristic roots: r₁ = %.3f, r₂ = %.3f\n", r1, r2);
    else
        fprintf("Complex roots: r = %.3f ± %.3fi\n", alpha, beta);
        fprintf("Damped frequency: ωd = %.3f rad/s\n", beta);
    end

    % Display the differential equation solution
    fprintf("Differential equation solution: x(t) = %s\n", char(xEqn));
end
end


function [diffeq,RHS] = GenerateProblem(type)
arguments
    type (1,1) string {mustBeMember(type,["real","repeated","complex","any"])}
end

if type == "any"
    opts = ["real" "repeated" "complex"];
    idx = randi(3);
    choice = opts(idx);
else
    choice = type;
end

syms x y(x)

[LH,a,v] = CreatePolynomial();

switch choice
    case "real"
        while v(1) == v(2)
            [LH,~,v] = CreatePolynomial();
        end
    case "repeated"
        LH = a*poly([v(1) v(1)]);
    case "complex"
        Delta1 = v(1)^2 - 4*a*v(2);
        Delta2 = v(1)^2 + 4*a*v(2);
        while Delta1 >= 0 && Delta2 >= 0
            [~,a,v] = CreatePolynomial();
            Delta1 = v(1)^2 - 4*a*v(2);
            Delta2 = v(1)^2 + 4*a*v(2);
        end
        if Delta1 < 0
            LH = [a v];
        else
            LH = [-a v];
        end
end
g = 0;
diffeq = struct("full",LH(1)*diff(y,x,2)+LH(2)*diff(y,x)+LH(3)*y == g,"homog",LH(1)*diff(y,x,2)+LH(2)*diff(y,x)+LH(3)*y == 0);
displayFormula(['"Solve "'; "diffeq.homog"])
roots = solve(LH*[x^2;x;1]);
RHS = struct("type",choice,"roots",roots,"LHS",LH);
end

function [LH,a,v] = CreatePolynomial()
v = randi(11,[1 2])-6;
a = (randi(2,1)-1)*(randi(11,1)-6);
if a == 0
    a = 1;
end
LH = a*poly(v);
end

function CheckCharacteristicPolynomial(CharPol,RHS)
syms r
CharPolSoln = RHS.LHS*[r^2;r;1] == 0;
if isequal(CharPol,CharPolSoln)
    disp("Correct! The characteristic polynomial is:")
    displayFormula("CharPolSoln")
elseif isequal(CharPol,r==0)
    disp("This is the default solution. The characteristic polynomial of a" + newline + ...
        "second order linear ODE will be quadratic.")
elseif solve(CharPol) == RHS.roots
    disp("Incorrect. Did you remember to define an equation with == 0?")
else
    disp("Incorrect. Please check your coefficients and try again.")
end
end

function CheckRoots(r1,r2,RHS)
Roots1 = [r1; r2];
Roots2 = [r2; r1];
if all(Roots2 == RHS.roots) || all(Roots1 == RHS.roots)
    syms r
    if RHS.type == "repeated"
        displayFormula(['"Correct! The solution is "' "r == r1" '" twice!"'])
    else
        displayFormula(['"Correct! The roots are "' "r_1==r1" '", and "' "r_2 == r2" '"."'])
    end
elseif all(abs(Roots1-RHS.roots)<1e-4)
    syms r
    root1 = RHS.roots(1);
    root2 = RHS.roots(2);
    if RHS.type == "repeated"
        displayFormula(['"Correct! The solution is "' "r == root1" '" twice!"'])
    else
        displayFormula(['"Correct! The roots are "' "r_1==root1" '", and "' "r_2 == root2" '"."'])
    end
elseif all(abs(Roots2-RHS.roots)<1e-4)
    syms r
    root1 = RHS.roots(1);
    root2 = RHS.roots(2);
    if RHS.type == "repeated"
        displayFormula(['"Correct! The solution is "' "r == root1" '" twice!"'])
    else
        displayFormula(['"Correct! The roots are "' "r_1==root2" '", and "' "r_2 == root1" '"."'])
    end
elseif all(Roots1 == [0;0])
    disp("This is the default. Please compute and enter the roots of the characteristic polynomial.")
elseif all(-Roots2 == RHS.roots) || all(-Roots1 == RHS.roots)
    disp("Incorrect. You appear to have your signs backwards. Please check your computations.")
elseif any(Roots2 == RHS.roots) || any(Roots1 == RHS.roots)
    disp("One root is correct, but the other is not. Please check your computations.")
else
    disp("No, those roots are incorrect. Please check your computations and try again.")
end
end

function CheckType(type,Problem)
if Problem.type == type
    disp("Correct, this problem has " + type + " roots.")
elseif type == "unknown"
    disp("This is the default value. Once you generate a problem, there will certainly be known roots.")
else
    disp("Incorrect. Please try again. What are the roots of this characteristic equation?")
end
end

function CheckGeneralSolution(GenSol,diffeq)
syms x C1 C2 y(x) coeff1 coeff2
GenSol = subs(GenSol,[C1 C2],[coeff1 coeff2]);
GenSol1a = subs(GenSol,[coeff1 coeff2],[C1 C2]);
GenSol2a = subs(GenSol,[coeff1 coeff2],[C2 C1]);
GenSol1b = subs(GenSol,[coeff1 coeff2],[C1 -C2]);
GenSol2b = subs(GenSol,[coeff1 coeff2],[C2 -C1]);
GenSolAns = dsolve(diffeq.homog);
if isAlways(GenSol1a==GenSolAns,"Unknown","false") || isAlways(GenSol2a==GenSolAns,"Unknown","false") ...
        || isAlways(GenSol1b==GenSolAns,"Unknown","false") || isAlways(GenSol2b==GenSolAns,"Unknown","false") ...
        || isAlways(-GenSol1a==GenSolAns,"Unknown","false") || isAlways(-GenSol2a==GenSolAns,"Unknown","false") ...
        || isAlways(-GenSol1b==GenSolAns,"Unknown","false") || isAlways(-GenSol2b==GenSolAns,"Unknown","false")
    disp("Correct! The solution is: ")
    displayFormula("y(x) == GenSol1a")
elseif isAlways(GenSol1a == C1*x + C2*exp(4*x),"Unknown","false")
    disp("This is the default solution.")
elseif ~isreal(diff(GenSol,x))
    displayFormula(['"You wrote "' "y(x) == GenSol" '" but your answer should not involve complex values."'])
    displayFormula('"Please express your solution with only real values. Use sines and cosines if necessary."')
else
    disp("Incorrect. Please try again.")
end
end

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"hidecode","rightPanelPercent":40}
%---
%[text:image:7c44]
%   data: {"align":"middle","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAArElEQVR42mP4\/\/8\/AwgnJiYapKamfgfS\/ynBUDMMYOYywBggiYcPH\/6nFIDMAJmFYQHIdmoBqFm4LZjrYPd\/gpoyGIPYVLeA5j4gbEASHJNlwZYtW\/93dHTixDCDQTRMDKRn8FhATBDNmTOH\/CAiBI4cOQI2HETTLBW9fv2a\/FRUtPXVf\/WeuyRhkB6iLQBp2HLvP0kYpGfUglELhpMFNM9oNKlw6FHp06TZAgAoeVix9Bg9oQAAAABJRU5ErkJggg==","width":24}
%---
%[text:image:9aaf]
%   data: {"align":"baseline","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:96c8]
%   data: {"align":"baseline","height":23,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADoAAAA6CAYAAADhu0ooAAAEp0lEQVR42t2a208TQRTG67OJxvv9fiGoD6LGgPiCGo1G\/wljTKDl1pL00RuKIKCIIiKg6ItB8IJ38K4Panz13RcfSBBBQQHRek4ys\/kYpu1uu2132+Sku6eb6X7zmzlz5ux6PEn6lJaWbi0uLu4mGyLrJWvMz8+f4UmnjxA5QhZS7HNZWdnUdNE5hQR9EsLGioqKWuj7kRRbUlJSmS40D4Co4yD+rfAPEdW5rhdKQj4KQQM4J0n0DhjCVW4XuR9oHlV\/J98rSZVsnmuF0nz8oNIsLCxcFQwGp4vf86AjzrhV5D4dTTq+Tr8d0VD95fP5Frpx2L4XAgYlTQpMq+n8DxKm4+0wV6tdJZIo7YWbPwbi26QfqdL5S+H\/7SqqdMPvJE2iOFPOTUEzpM5bpEodUOMWkXs06yb7r6qZEc5dOn\/hKqqQCESiOYkqic4Ff62jRZKg3XCzJ0B8q0akjupzSZU6aZGTl5Q34kZ\/BgKB2ezzer3LOMcNJ5SpSvJIlY7POTWn3QUBpRzEt0QQqYvMzxxNlW7staRJQ3gO0Bw1IdSYz9Qx28Bf57QhuxNu7iSIbzYhclKEpvZ6HElVR5OOl5qkGZEqdcB5p9DMC0OzyYJIXaTuFr4R6rzFTkj3jK1WHDRDarSmdnPAX59qkbkQaU+B\/7IqglM7+g4qVqu5rhzaeeoIqpC2RaVJN52pGfYbdFRlW0iVrr2QcppkFSC+MUxUNSt0AlU6f5JSqpCuGcUtv9+\/JExZ05JQpErf2eC\/mOxIi4v6aRDfEGGdtCJUjeCPhW+Uk5BkCu2xQjNGoQZVWl+30Pk\/4W9I1tzM0RWfeVhFyXysCp0QyaHoPUZtLU\/G3OxWadIfL+Dilt1CMZrTtZuB6qVE7zezdUVnDv0mctlYhKpUHyaFKoR6SzTjEYr\/pVBtTDhNLDZz0m1ydxKrUHWdfiCp+ny+FYmgKUP8sHx8YJamDUK1VDnVtHs5wSFTDeLrLOw34xGqrtf3E0IVgoBRiiwoKJhvlqZNQjEubIKOb7Jr3TQaxeIyF6+sbMFsEKqu2\/ZShQZVmsPJFhqOKrVzxTaaWFTW7SNNCD3IlUI08h2KYXOO63eXpErtrYwnCHWpNDniWqVpsxlUacnLAhDNsa6bWTqaolIQSrFVwei6FxdVGlZ3baY5SNav2KCdVLlYblXkRqB5FnqvOlYKNgWjUJjsTEIZpzbXWIm0d9QCMlfneI\/oFKFKhoZgWs0GIP7zv+qDHu7BeOZVAoSqWZqEM+73+9eaodlpN80ECjXiBwLih87Rnoith4vrgGZlvJEyQUJVqrdNUaULOmRp0U6a8uUMssNo\/BDYBqHDnKlppt21qDTxwQ7vGhywbkbrxBrN1Bsny9DRbFcLxV6vdxad\/3C6UJyryvRrU7OgdfBjPYivcIHIkCYX79BSpZObLqYZkSq\/kicjaqZ04oMcrpS7SGRIzeJIy60JVDk6SZpcbRdDeRr5v2hyU6fbV\/l8VVlXm5lcX0wJsTveYpMVw14PzMOGNBQqE4h+3M8x5hti3UwH64S52y6D0YALA49Z6+P3hCXiDLH2fEsjgd+ZKr9wyRr\/A+UKAPezYlA8AAAAAElFTkSuQmCC","width":23}
%---
%[text:image:9170]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[text:image:427d]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:2b79]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[text:image:5af5]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:5198]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:button:358c]
%   data: {"label":"Generate Problem","run":"Section"}
%---
%[control:editfield:1882]
%   data: {"defaultValue":" r == 0","label":"The characteristic polynomial is: ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:1a1c]
%   data: {"label":"Check","run":"Section"}
%---
%[control:editfield:8ea8]
%   data: {"defaultValue":" 0","label":"r1 = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:editfield:3e7e]
%   data: {"defaultValue":" 0","label":"r2 = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:60dc]
%   data: {"label":"Check","run":"Section"}
%---
%[control:editfield:4288]
%   data: {"defaultValue":" C1*x + C2*exp(4*x)","label":"y(x) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:2f33]
%   data: {"label":"Check","run":"Section"}
%---
%[text:image:98e9]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:button:3728]
%   data: {"label":"Generate Problem","run":"Section"}
%---
%[control:editfield:5f9b]
%   data: {"defaultValue":" r == 0","label":"The characteristic polynomial is: ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:9edc]
%   data: {"label":"Check","run":"Section"}
%---
%[control:editfield:62ba]
%   data: {"defaultValue":" 0","label":"r1 = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:editfield:9a7f]
%   data: {"defaultValue":" 0","label":"r2 = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:51de]
%   data: {"label":"Check","run":"Section"}
%---
%[control:editfield:1686]
%   data: {"defaultValue":" C1*x + C2*exp(4*x)","label":"y(x) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:207d]
%   data: {"label":"Check","run":"Section"}
%---
%[text:image:9e26]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:button:4ee8]
%   data: {"label":"Generate Problem","run":"Section"}
%---
%[control:editfield:3d65]
%   data: {"defaultValue":" r == 0","label":"The characteristic polynomial is: ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:231f]
%   data: {"label":"Check","run":"Section"}
%---
%[control:editfield:39cb]
%   data: {"defaultValue":" 0","label":"r1 = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:editfield:3da2]
%   data: {"defaultValue":" 0","label":"r2 = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:2c7c]
%   data: {"label":"Check","run":"Section"}
%---
%[control:editfield:8e55]
%   data: {"defaultValue":" C1*x + C2*exp(4*x)","label":"y(x) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:10c2]
%   data: {"label":"Check","run":"Section"}
%---
%[text:image:702b]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:button:39d5]
%   data: {"label":"Generate Problem","run":"Section"}
%---
%[control:editfield:6ff0]
%   data: {"defaultValue":" r == 0","label":"The characteristic polynomial is: ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:4b62]
%   data: {"label":"Check","run":"Section"}
%---
%[control:editfield:0e8d]
%   data: {"defaultValue":" 0","label":"r1 = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:editfield:1d21]
%   data: {"defaultValue":" 0","label":"r2 = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:5475]
%   data: {"label":"Check","run":"Section"}
%---
%[control:dropdown:1402]
%   data: {"defaultValue":"\"unknown\"","itemLabels":["unknown roots","distinct real roots","repeated real roots","complex conjugate roots"],"items":["\"unknown\"","\"real\"","\"repeated\"","\"complex\""],"label":"This problem has ","run":"Section"}
%---
%[control:editfield:8bef]
%   data: {"defaultValue":" C1*x + C2*exp(4*x)","label":"y(x) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:219a]
%   data: {"label":"Check","run":"Section"}
%---
%[text:image:24e4]
%   data: {"align":"bottom","height":25,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAE0AAABMCAYAAAAoVToVAAAEVElEQVR42u2c4ZG0IAyGrwRLoARLoIQtwQ7WEizBEiyBEiiBEiiBDjydifM5jiCQBPU+fuTX3e7iIyRvEuBnnuefamlWIVRoFVqFVqEx2\/f7FYtJMFGh\/QPTLPZZbFhML2YXmy\/Mwv8O8Nnmz0ODGdQvZiIAxZqB7xR\/ChrMCk0Iymfrb3xeDQ1ghZadW0zBclv9Vxv4Lrlbzgo+G1rGn1dBWx8+MLPWBxpDgBJ\/Zwy8GE3xO+zQYCb4HkAyzuou8KKGR0IDJ29KwzoZRx8IGOIx0MDfuJJ+xSNhxotA4SheINWyOA5OldRQMAaXEGW726B5gHVMUAaP2Ux50hWH5gG22kQchQ2jruuKQQMfFhrMQATMFRDEkh0aREkX4XDFC4BljTXngWKXy4CIgvZELnCCM2zQAsL1zARC721OvgeIssCMG8ihwZKZOWcZwodSWUsNTQd8wlHUNi+FpsmgQXXBm5ocwHXEKl+CWJ4L2YcKmvUAaw6+zuXMsl29TRequwWrw2hogaUhDjPC5fgyT7S82yQWmm9pjMfZQlxKutNUNjTwV+hok\/n97qLAODMLYJELrb\/44hEJTQcKlmK3fI+JuYbcd2SE1udCMxQhOuH7XWiwAEpcRHT2LOHKQc\/M0JodOBWbRUTmvxTWpEL7cEPbgWszxK69S7Nho9pI2F9Yl94E\/ipKvsD\/F89Hc6TGpe8h6iBtArq9Ua6oVGi+IKCwXZ0CFVnWYBB6MJZW3EPFrNcw0CSR75oKPrCjSPSzoRE6ezbf42uc7Pa5yZyXdjc0TvU+eAKKOZE3rtTyFATQOEs+OtBSbBN86nT8OwYaRUtOcVdcPQ0ZEeEm1C49k1TQLAG0vgC04TBrmoiAZEL1Q5TkeHggmMFfbT6rS2gSydDOAYy4NS+QHGpz9gnuYrzQkQaTRlHuz+AMCAbbCTs8t8Im7IZi2ycsIcUsalvE+CwmYZcXIV4QJOsWbNoKjFCSclxV10S\/K6mLkCSVDoYNMBPyReYXIRP8Dxc4WRLYiT\/TXI0V8n0bEU3qrLZbpK8laawI7sES5qsDsfgWHM1isj4BUe1tIJzVimtbwn6XkGCCZkpAOwkAuG0JCQGB9DRcYtqF3a5qU1YOVyT7EDVdWHWZxwVIEmgZ6Y8m0mqopm5G05luU1\/GctEFJYch9JmCFFpiNNMFBK7G+NATOUO\/UTlxmWrCCHp2fHsi9pdJ481Vzo4znQn8bodN206AJW955Uio3feB10IEgCWXkTgkQf8SYGUPlF0MZHwgsPERRxcvDqiaJyxRzxFx973zkOyFj3OcZaNIeeQoS+EcB\/8bjxyxHKeNI8roZ7qO5PhRyXKOhQdqGOWIfdUVEye+JHQAbcJesLS74GnibADdcW2OjMggttZgf3b91+FasAEgmYgNMWx3gZTyM6VO0qkSF6fccWdaTwxQbSeQ\/4ub+nZLTsUWAva3YNXrDeudkBVatQoNb78ox6WFMDJfcAAAAABJRU5ErkJggg==","width":25}
%---
%[text:image:761d]
%   data: {"align":"baseline","height":193,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAADBCAYAAAB10I2dAAAACXBIWXMAAAsSAAALEgHS3X78AAAZq0lEQVR4nO2df3RU5ZnHv9PT7T8iSXv21IUlmcEt4I9jCaiFbqsk1MiuVAmaGHfXLQMx2lq7SYGydE9iBukW8QDGjfFEfphgcQ9WisRWTzEShqpNRAvhlATFrcwPFqR\/rHeCntM9Z3ef\/ePm3rxzM8ncmUzunZt8P+d8DzN37jP3mTuZL8\/73ve+r09EQAghXuBzbidACCF2oWERQjwDDYsQ4hloWIQQz0DDIoR4BhoWIcQz0LAIIZ6BhkUI8Qw0LEKIZ6BhEUI8Aw2LjJdCAKXjiC\/JUR5kCkDDIuOlHkBHlrEBAGGMz\/DIFIKGRcZDIXTD8gMIZhEfAlAw9C8haaFhEUA3HQ2Zm04zdMMxHhdmEBsAsGro8ZIsjk2mIDQsbxOAXp1o0JtWHUPb7FIKIALgSWRe6QQwbDgYiq\/PIL7D8jyEzAyPTEFoWN6lGcC5RGKwKZEYLIBepayCPdMphG5wR2Px8\/7+gTPG9kyadh2JxCCq7r1P3VYPe6ZTCmDJ0888i1+8\/Ip67EwMj0xFRITynipERA53HRG\/PyB+f0A0LSEKJWniQyIiW7ZuEwBSXr5MjdVEpDBNfKmISEtrmwCQltY2Nb7DRv5hTUuI3x+QsrKlau6aiATy4PxSeSrXE6AyVqGIaKf7BwSAqYbGJlEIp4vv6T2eFH\/gYKcaH0qTQ180FpeiomIBkMowA2PEBkVEGhqbzGNnYXjUFJXrCVAZq15EZE1NbZLhAJBoLC4KpaPEN4uIlJcvS4pNUemMVmUFRZINJ4XpHBoj\/0g0Fk+K9fsDdnOnprhcT4DKWCN+8Ibq6teKQl+K2ICIyIGDnSnjbVQ6Kau7DAyzXkSkrn7tiNgMKkRqCsv1BKiMVCGSXN1YK52e3uOiELTEd4gkV1eqedho2oVEhqs7vz+QVOmlMZ0RTdG6+rVJxz\/dP6DGV+TB+abyTD6RvFo1JwD9Vg3erpGaikRicP4NN9yAeDyGsrKl6O4+gvofrsNTzTsAAGtqarFn905j\/yiGhzkEAJz7xcuvoPLuFea+O7ZvQ1XVvejqOgwAaGltwyMPP2TEdwKoUOL7et95t+Dri79m7nvXncvhLy4yEzzdP4Drr7vWeLoSwKGhxyEATTUPPIjn9uxCUVEx3nr7bQAw48fI3fz84N9GrukbUsTlPOzhtmMOqVT0\/5FJGowrcwCkfe8+ERGxNhEPdx1RQ0Kin+MOkeTqymjCWZuIozTtkuLVasy42ghA1tTUqrGRodiAiGiHu46kbH6qVeIouReK3sQlE0dYPNB36HaFVQh9AOGKWPw8uo8eQ9\/JE7h8+bKbOeU1z+3ZBQDw+wM4deoUCgqmAwAef2I7fvzP6wEA5eXL8PrrvzZCEtDHPZ3seP4FrF51PwCgobEJmx8Lme9rVD4pXjsGfXzUSbU6O3CwE\/esvEs\/QGIQ8+fPRzQaAQD09B7H4kU3G\/Grh46\/6vbb\/8as5DQtYeYei583q6wUuQcAhBOJwfkvd\/4Sb\/7mWDanjaRgztx5WLhwAW6\/bam6uRP6WDzNlaTS4aJbmv9rqv9DU\/Zk6SDXjHFNxuuWYQpJrxcVFVurqIh1mIOlPymixlvGbYmISPvefWZsZVV10rFFkqs4S1+XiIw5zEETSd1RT+VG5eXLrH2ffZJ+LJ4rcvPgYU1LSGVVtetfmNfU0NiUaqCoppqGtQNdbUpaDCEsQwNBVdOwNO2S4i3Ntj5J0dxUDdNqphazrBcRbaxxXVYzpSZGlv\/kxhqa4prcahIGAbSrzZiiomJs2PgvuOnGhW7k4xmuvHKa2qkNAJugd2jXA3hSbXYZHehqk83alARQhqH7EGPx86u++Y1vIB6PARhu2sXi52Fst3SMG\/F9ACJqh7zatHv6mWfxg+9\/FwBQV78WzU9uN2JPQe9EDwJoV\/dTm6Vqc7WltY1\/Izli8PJlvLh\/v3lugREXTVYj+6mDJgaXnDJpLFFRUbG1CULSo4k+CDTpvKrViFGppOqoHyKsxAZEkispo2mnVl6WpoMaHxJJHtDa0to2orqyxJequVv3Pd0\/kFRdpWqKkvEzRmUdkTyoqlS5UWGVADip\/m9quZQO6B1\/fU4n5iH6MDxcQCUIoF2tSOrq1+LQywcRjUasHdrAcHVl0JxIDNatXLkSR492AwC2bN1mVsGW6ggAZmP4cnghgEgsfr7A6ED3+wOoWHn3aEMujiF54r5SAEfVv4s1NbUAhi80qB394N9ILigBsAIA1Mo8GoujuGiWsc8C5NN5dsElR9xaovRpaJL+xl1qbIVHGwlvo4+iUES00UbCW\/qeOlLEB0VG3raD1NVVqu85bK2yDFn6tezcoE3ZU4lIcmVt+Z7q8yBHU24cNCQybFizZ1+tnpwOt0\/IJFCpyMgrr9ZOdBn9BuWQiIy4GGK5sjeWYYxo2qU4\/mjfc0Ak+cdjaMvWbWp8KA\/O82RShzpGzmJYeXWu3ThoSGTYsCx\/yHl1cjysEZWK5Y+wY4zYQhmlL8zm91QhMtJ0LH2UgTHimzUtIWVlS0er7lhd5V4h9fvOZ8PiBH6Tk\/qCgulYv2EjAL0vSBnICYw9yZ8GILR40c2oq18LAFi\/YaN6VTEKffLA0TgE4NgjDz+E8vJlAPS+J+XK0yaMfRtIqKBgeuL7P6gzN7Tv3af2qYSQr4MaycTjhpuLsMJyQB0i+tgoG31PqRSJxuIye\/bV1uoqaCO2VESfYNAyZstudVQvoo+\/suSeagYKavzyTIX1eZf9EnPmznM7hclKCMCql176uVodGdvtECwumnX05MmTavwp2BuXEwbQefttS1dYtjfDXnXUDKB08aKb1fgouFDFlMf1JuG0adPcTmGyEgGwyWJW6ZpjKmEAxyzxmcy5bt03iswWuagA8EXoQy8WYGi2iAziSQZceaU3foeuGxaZUJqh30CMoX\/H6ntKRUh5fAzJY7bSEQGwd5T3souxGhCNaoK5fPlTt1OwBQ1rcqNh2KTsNsdUwhg2nWAWx6+HbpR2m5KEjInrfVhkwglBb15lWl2p8UB2E7wZhhnO8tiEJEHDmhqMZ5bOCMbX2R0aRywhSbjeJPz0U2+0nQkh7uO6YX149gO3UyCEeATXDYsQQuxCwyKEeAYaFiHEM9CwCCGewXXDisdibqdACPEIrhuWMS0rIYSkw3XDIoQQu9CwCCF4\/4OzbqdgCxoWIcQzd5zkhWHF4ufdToEQ4gHywrAuXLjodgqEEA+QF4ZFCMlbSqFPT5QX0LAIIUlYOuCXAHgZ459mKCfQsAghSaxedT98Ph+q7r0PHc+\/gERiEAD8ANqhT8ZY6FZuNCxCSEoOvPQiVq+6H\/Pnz8frb3Qbm5dAn2N\/PJNCZg0NixCCm25ciMNdR3DgYCdaWttQWVVtvhaNRrCs\/Ft4\/IntxiY\/9Dn6na+03Fi0UWR4IVU9hfxctJGipohCkoJoLJ70OwUgBw52qrsccjpXVliEkJQUF83Cnt070dDYZG6rvHsF+gfOGE9XwOEriDQsQkgIgM+iBQCeApDY\/FgoybR27HjSGusYNCxCSCr6oK8rWQogsX7dWvj9AQDAc3t2qXenzIeDHfA0LELIWPQBKC0omI71GzaaG7uPHlP3CTqVDA2LEJKOPgB777pzubnhzd8kGRYrLEJIXtFRXDTLfDI4OKi+tsSpJGhYhBA7hAFgTU0tAH1QqRvQsAghtjEqq9mzr3bl+DQsQohtjMqqbOm3XDk+DYsQYocS5X5CzJw505UkaFiEEDsEX9y\/33xSsmCh+topp5KgYRFC0lHS+867dc\/t2QUA8PsDuG1pqfp62KlEaFiEkLEo+f3pgTfvq77X3LB+w0YUFExX9znkVDI0LEJIKgIAQnvan+\/56g3XT4tGIwCAyqpqPPLwQ+p+UThYYX3eqQMRQvKfAwc7H512xRW3FxYWfGP\/\/v14qnmH+ZrfH0Ao1GQNqXcyP6cNqxTArWO8HnAmDUKIQslbb\/c89mhjw\/KjR7tTtroqq6oRCjXh+uuuVTcfg4PNQWDiDasEwEboRnWVjf1XDekU9DIzDIdPCCFTiHoA9a+\/0e3\/7oO1OHfuo5Q7zZ59NdatW2c1qyhcWE3HJyIT8b7rAfwYwJeMDf0DZ\/D+Bx\/i4sWLuPTxRbyw72fmCWppbcO0adNwzby5uPLKaalOTAeAZgDaRCRLyBSlBLpprYrFz+Pd906g7+QJvNPbi66uw0k7+v0B7Ny9B7ffttTY1Ak3lv\/K8RSm60XksjF\/6uGuI9LQ2CR+fyBpmlU7WlNTK+1794mmJYy304amci3MgyllKWoyqVD031ZEhojG4nLgYKeUly9L+l2e7h8QhZDTuebqjUpE5GMREU1LSEtr24gPalVlVbWsqamVNTW1Mnv21WPu29DYJNFY3DhJEREpzYMvmaImo4IiEpYhNC0hdfVrzd+i3x9QiwgRkYCT+eXiTR41Mj9wsDNlNVVZVS0trW3S03vc+mGTON0\/IO179yWdIFVbtm5T45td\/mIpajKrRPRFJkREpLKqOul3qBB2Mq\/xvkG3iO7C1tU1ioqKZcvWbWpllBGalkhZkvr9AenpPa6eLDYRKWriFBTRm4jq79CtKms8wW+J6FWRtapqaGwas5LKlFSVW\/vefcbLfULToqiJVFBEpKGxKdXvT0Sk3qlcsg18S0TvVFeNpKxsqVr9pGXn7nbZubvd1r7WtrRhjEPQtChqYhU+3T9g\/vbq6teKQtipPLIJahPRKytrP1WmVZURmwnte\/eNZloduT45FEWZqhCRpKv4FhzJI9OAb4uMbAYqppER2RiWiN5EVE1LWY3WsdKUoqagkvqULTiSQyY7F4rIZyLJVwwqq6qtidsmW8MSGWlaQ+NDNHH4MitFTSF5yrDeFBFpaW1L6rMaT+f6eAxLJLkTUDHOsM3PQ1FUZvJMk9AvIv9nvbSZSQd7KsZrWJqWSHL8ltY246XSUT4HRVHZKdDTe3y0TndxKg+782HtBeDbtWu3uaGhsQmLF91sM3xiKCiYjsc2bzafb3vicSQSg4DDU14QMgUIvvrqq+aTW25NWorQsSmS7Trb\/1qrq2wHhCZZ8jgrLAN10KoyPiQg7v+vRFGTQYXnItFB4zdWVFRs7QrqcCoXOxVWA4DPdR8dXpq6obEJ6iqwo\/HWb3vh8\/lGlcFY+7z12960x6mtrTUf\/\/u+nxkPnb+TnJDJR+F\/ffLJmz\/60YYrjQ0PP\/JPrk2RbMfVBkSSrwxa7tgelTff7kk7K0M6vfl2j61jqX1ZQ\/n1OeX6FDVJVfqJpiXU336Km58jTuZkZ6f\/1rSEmXB5+TLJFchRk1BEZMvWbamahRz9TlFZ6Fwk+uNUt8SluNAWdDIvOzOOfuGdd98znyxavHgc9dzEUbpkeOblvpMngO\/8A6BPUBZ2KSVCPIXP52u+4oorbvrbO74978BLL\/65+prfH8Crr71mnVzzFPTJNR0jnWHVA8DZsx+aG\/7qK3MmMp+sufaaeebjgf5+4yENixAb+Hy+CgB1n332mbkcvcHs2VcjfOyYtd86ASDoXIY6toY1fPrpp+bja+bNnbBkxoPaCahM71roSjKEeIxndz03atPp3LmP8EDNA+gfOKNu7huSo6QzrAoA+PDsBw6kMn7W1NSm34kQYiXw4AOr71P7inp6j6OhscncoavrMJbfcYdqWkuQrxUWIWRSE4G+xF4Z9EHiWLzoZmx+LIRoLI7KqmoAQDQaQSi0SY1rhsNL89GwCCEGYehV02wAmwBEi4tmYfeunaZpHXjpRTz9zLPG\/gUAQk4mmM6wegBgztx5aXbLjp2727Fzd3vO3u+5Pbty9l6ETGEi0I2oBMBTBQXTk1Z83vbE4+q+q+BgX3E6w7oEANOmTTM3vPe7Ezk7eG1NELU1wZy819A9hACA8vJlOXlPQqY4GvSRApuuv+5as08rGo3gFy+\/ou4XdCqhdIb1HgDcdONCc8Oljy9OZD5Zo44VKyouNh6G3ciFkElGCED0llstYx2HKXUqkXSG9RYAUcc4vTB8r15eceLESfPxgoU3Gg8jbuRCyCQktOjmm8wnFy5cUF8rdSoJO53ulwoKppudbufOfYTed96d2KyyoPuNLvNxWemtgL7EfcSldAiZbBxSxzrGYzH1tQKnkrBjWK8CwPJv3zm8QZkXJx94\/Y1uc7Boefky4\/YB5+4gJ2Tyo6lPlMHZjmLHsDYDwMoVd6KoSO8b+snmTYjFz09kXhnx4v795uO\/v\/8fjYcdbuRCyFTArUHadgwrCiBeUDAdq4KrzY07djxp+yDp5sUaa66sdLz+Rrc5nMHvD2DlijuNnB2\/bYCQSUzAcmuOK9gdOLoBANavWwu\/PwAAeKp5B15\/o3uC0rJHIjGIx3\/6r+bz9Rs2GvcUhtzKiZBJSukvf\/Wa+cQyRXLUqSR8ImJ3348BXNXx\/AtYvep+AHpFc+rUKevsgyPQEgmc7s\/Mnb\/51+mnsan\/4To81bwDAFBZVY2Xfr4f0E9eIKODEULG5BNNiy0oWVAUjUYAANFYXJ29oRNOzfCbweRZdxgzdqlzqGez4nMuUJcbKyoqVmdBLU2RO0VR2atDXVIvxRJfQadyyTTg1yL68lplZUtdM60xVn5uzvDzUBQ1ugIickg1K4xcgEYTB2f2zSZIExm5XH1lVXVOVtJJh\/XkKWsR9gmnRKao8ahQ9GqpWUTCPb3Hk1pTluLAwNEiIZsgv4j8j8hI0\/L7A3K464j1A+WEaCw+4uQpZqWJSMlEnCCKmgp6tOmx3c3\/1vqnltY2WVNTm7Soyxhm5Wh1JZKdYUFEbpEh04rG4kkr6mBoVdhcVVualpCW1rYRk+ErJ49mRVHjU0DtE7aqrGzpaIVIhdO5jifYNC1NSyStWmOoobEp6+Xso7F4SqOqrKpWO9hpVhQ1foVSGdaamtpUVZVB0I1cx\/sGt4jIZ8Yn6Ok9nrKULC9fJlu2bpPDXUdGXdNQ0xLS03tcWlrbRlRsxpVApQkoovdZBdw4aRQ1yZRkWGOYlEHQrVxz8SaFIvJ79dMcONiZ0riykd8fkJbWNutVSF4NpKjcKcmwxmgVhcXlFo2ddQnToQG4AcB6AD8F8Gf3rLwL96y8C\/0DZ\/DLX72G7je6MrpZ0u8PoGLl3bjl1iW4bWmpOjD1GPQJxXjbDSHO0Ql9\/vawy3nkxLAMtgHYDf2D\/R2AL1x\/3bW4\/rprsXHDOsTi5\/H+B2dx9uyHuPTxRbyw72c4d+4jAEBd\/Vp8Zc5czJgxA9fMm2NdrBHQjSqEPDhhhEwxNiGPbnXLpWEBerUVhF4FhQB8B8AXAaC4aBaKi2bh9tuWAtAnADu3Rzes5ie3p3qvU9ANqhmc14oQgolbNceYC\/pLABYAaAPwBxtxxwCshL5qR8nQe0QmJkVCiIG6bkM+48QyX30AvgfgKwB8GFr3bBTC0Cfei0x4VoQQk3xd0d2KG+sSRlw4JiFkEsCFVAkhGLx82e0UbEHDIoTg7NkP3U7BFjQsQghOnvid2ynYgoZFCPEMNCxCiGegYRFCPAMNixDiGWhYhBDMmTvP7RRsQcMihPDWHEIIyTU0LEKIZ6BhEUI8Aw2LEOIZaFiEENx040K3U7AFDYsQ4hlcN6w1NbVup0AI8QiuGxYhhNiFhkUI8Qw0LEIIZs6c4XYKtqBhkTAsq23XPPCg+Hw+q8JGgM\/nK\/T5fIes+zz9zLOpVu8mHqC4aJbbKdiChkWyoQTACreTIFMPGhYhxDPQsAghnoGGRQjxDDQsQohnoGERQjwDDYsQ4hloWIQQz0DDIoQgFj\/vdgq2oGERQnDhwkW3U7CF64YVj8XcToEQ4hFcN6yursPq00K38iBkKvP+B2fdTsEWbhiWBgAzZ840N\/S+867xMAiaFiFOU\/iH\/\/jQ7Rxs4YZh9QFAyYLhOaT3799vPCwA0AGaFiFOUdE\/cKbuJ5s3mRvyeaqZz7twzDCAxD0r7yooK1uKo0e78VTzDnxlzlw88vBDgD4LwCcu5EUmhpDbCZBRKewfOFO3\/I47zA1btm6zTjUTdjqpsXDDsADgEIBVP93yOL6++GsAgB98\/7t45dDLWHpbOebMmYO\/zGOXd4r3fnci7T4zZszI+bkaHBzMKu7SxxfV5r1B07gTIjnnPy9cRN\/JE1Arq8qqanzvoaQ1FhLIM8OCiLihgIhoIiIHDnammvSNyjPdcMNX+4zvD0Cp2\/lQuVVlVbVoWkIs1LvkD6PKzYMHjbPS03tc1tTUuv6lUaNr+fI7IzSsyaktW7dZjUpE5JDb5pRKvqE\/QLcIAmg3nvQPnMHly5+6lw0BAGzfvh0HXnoxaduXv3zVO5cufbwYAHw+XymAo9a4hsYmLF++3JEcSW6YOXNGqumRT0H\/T0lzPKE0uNWHZdAB\/aR0ACi4\/rprXU2G6EyfPn3Etj\/+8dKf0sVd9RczsHjRzROSE3GMYwAqkIdmBeTBwFHoHfABAD+E7uyEEOdJANiEPK2sDNyusAw0AM1DIs4SBrBkAt9\/U\/pdiMtEoBcOeWtUBvliWGTyEnI7ATJ5yIcmISGE2IKGRQjxDDQsQohnoGERQjwDDYsQ4hloWIQQz0DDIoR4BhoWIcQz0LAIIZ6BhkUI8Qw0LEKIZ6BhETtEoU8BZNAHoBP6Hf4AgDU1tSgrvdXhtMhUw+0J\/AghxDassAghnoGGRQjxDDQsQohnoGERQjwDDYsQ4hloWIQQz0DDIoR4BhoWIcQz0LAIIZ6BhkUI8Qw0LEKIZ6BhEUI8Aw2LEOIZ\/h9786CLGiLoFwAAAABJRU5ErkJggg==","width":300}
%---
%[text:image:77e2]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[control:slider:8efd]
%   data: {"defaultValue":6,"label":"Inductance (H)","max":10,"min":0.1,"run":"Nothing","runOn":"ValueChanged","step":0.1}
%---
%[control:slider:2fba]
%   data: {"defaultValue":2,"label":"Resistance (kΩ)","max":10,"min":0.1,"run":"Nothing","runOn":"ValueChanged","step":0.1}
%---
%[control:slider:7d4c]
%   data: {"defaultValue":0.25,"label":"Capacitance (µF)","max":1,"min":0.01,"run":"Nothing","runOn":"ValueChanging","step":0.01}
%---
%[control:button:49e2]
%   data: {"label":"Run RLC Circuit model","run":"Section"}
%---
%[control:checkbox:017b]
%   data: {"defaultValue":false,"label":"Print details of the model?","run":"Section"}
%---
%[text:image:22b3]
%   data: {"align":"bottom","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:60b2]
%   data: {"align":"bottom","height":25,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAE0AAABMCAYAAAAoVToVAAAEVElEQVR42u2c4ZG0IAyGrwRLoARLoIQtwQ7WEizBEiyBEiiBEiiBDjydifM5jiCQBPU+fuTX3e7iIyRvEuBnnuefamlWIVRoFVqFVqEx2\/f7FYtJMFGh\/QPTLPZZbFhML2YXmy\/Mwv8O8Nnmz0ODGdQvZiIAxZqB7xR\/ChrMCk0Iymfrb3xeDQ1ghZadW0zBclv9Vxv4Lrlbzgo+G1rGn1dBWx8+MLPWBxpDgBJ\/Zwy8GE3xO+zQYCb4HkAyzuou8KKGR0IDJ29KwzoZRx8IGOIx0MDfuJJ+xSNhxotA4SheINWyOA5OldRQMAaXEGW726B5gHVMUAaP2Ux50hWH5gG22kQchQ2jruuKQQMfFhrMQATMFRDEkh0aREkX4XDFC4BljTXngWKXy4CIgvZELnCCM2zQAsL1zARC721OvgeIssCMG8ihwZKZOWcZwodSWUsNTQd8wlHUNi+FpsmgQXXBm5ocwHXEKl+CWJ4L2YcKmvUAaw6+zuXMsl29TRequwWrw2hogaUhDjPC5fgyT7S82yQWmm9pjMfZQlxKutNUNjTwV+hok\/n97qLAODMLYJELrb\/44hEJTQcKlmK3fI+JuYbcd2SE1udCMxQhOuH7XWiwAEpcRHT2LOHKQc\/M0JodOBWbRUTmvxTWpEL7cEPbgWszxK69S7Nho9pI2F9Yl94E\/ipKvsD\/F89Hc6TGpe8h6iBtArq9Ua6oVGi+IKCwXZ0CFVnWYBB6MJZW3EPFrNcw0CSR75oKPrCjSPSzoRE6ezbf42uc7Pa5yZyXdjc0TvU+eAKKOZE3rtTyFATQOEs+OtBSbBN86nT8OwYaRUtOcVdcPQ0ZEeEm1C49k1TQLAG0vgC04TBrmoiAZEL1Q5TkeHggmMFfbT6rS2gSydDOAYy4NS+QHGpz9gnuYrzQkQaTRlHuz+AMCAbbCTs8t8Im7IZi2ycsIcUsalvE+CwmYZcXIV4QJOsWbNoKjFCSclxV10S\/K6mLkCSVDoYNMBPyReYXIRP8Dxc4WRLYiT\/TXI0V8n0bEU3qrLZbpK8laawI7sES5qsDsfgWHM1isj4BUe1tIJzVimtbwn6XkGCCZkpAOwkAuG0JCQGB9DRcYtqF3a5qU1YOVyT7EDVdWHWZxwVIEmgZ6Y8m0mqopm5G05luU1\/GctEFJYch9JmCFFpiNNMFBK7G+NATOUO\/UTlxmWrCCHp2fHsi9pdJ481Vzo4znQn8bodN206AJW955Uio3feB10IEgCWXkTgkQf8SYGUPlF0MZHwgsPERRxcvDqiaJyxRzxFx973zkOyFj3OcZaNIeeQoS+EcB\/8bjxyxHKeNI8roZ7qO5PhRyXKOhQdqGOWIfdUVEye+JHQAbcJesLS74GnibADdcW2OjMggttZgf3b91+FasAEgmYgNMWx3gZTyM6VO0qkSF6fccWdaTwxQbSeQ\/4ub+nZLTsUWAva3YNXrDeudkBVatQoNb78ox6WFMDJfcAAAAABJRU5ErkJggg==","width":25}
%---
%[text:image:73a1]
%   data: {"align":"baseline","height":134,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAdsAAAEqCAYAAABdtPqIAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAITcAACE3ATNYn3oAAAKraVRYdFhNTDpjb20uYWRvYmUueG1wAAAAAAA8P3hwYWNrZXQgYmVnaW49J++7vycgaWQ9J1c1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCc\/Pg0KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyI+PHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj48cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0idXVpZDpmYWY1YmRkNS1iYTNkLTExZGEtYWQzMS1kMzNkNzUxODJmMWIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyI+PHhtcDpDcmVhdG9yVG9vbD5NaWNyb3NvZnQgV2luZG93cyBQaG90byBWaWV3ZXIgMTAuMC4yNjEwMC4xODgyPC94bXA6Q3JlYXRvclRvb2w+PHhtcDpjcmVhdG9ydG9vbD5NaWNyb3NvZnQgV2luZG93cyBQaG90byBWaWV3ZXIgMTAuMC4yNjEwMC4xODgyPC94bXA6Y3JlYXRvcnRvb2w+PC9yZGY6RGVzY3JpcHRpb24+PHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9InV1aWQ6ZmFmNWJkZDUtYmEzZC0xMWRhLWFkMzEtZDMzZDc1MTgyZjFiIiB4bWxuczp0aWZmPSJodHRwOi8vbnMuYWRvYmUuY29tL3RpZmYvMS4wLyI+PHRpZmY6T3JpZW50YXRpb24+MTwvdGlmZjpPcmllbnRhdGlvbj48L3JkZjpEZXNjcmlwdGlvbj48L3JkZjpSREY+PC94OnhtcG1ldGE+DQo8P3hwYWNrZXQgZW5kPSd3Jz8+d1SxtAAAMz1JREFUeF7t3T9zE0n3NuCbt0ox8HyB9bLRRCuKzddUQYw3AIVrEgjXREO2dsZE6w0hwQ4HgoUYV4FyXGtHEy1YX+BnFCvgDThtjo665480MxpL91XletYjaSQNfnSru093X\/n69SuIiIioOf\/PHiAiIqJ6MWyJiIgaxrAlIiJqUC9Or13hmC0REVH9enF6DcAOgB2GLRERUc16cboNYBfADwDAsCUiIqpJL043AewD+FkfZ9gSEREtqBenGwAOAPxqbwPDloiIuqQXpx\/kP88A7E6SwZm5S6fIuOw+gN\/tbcopw5aIiDqjF6c6lMYANibJ4Is61gm6+AnAVXu7GMkXhgNO\/SEioq66KmHWKVL8dALgz0DQjgHsTZLBxiQZHIDzbImIqOO27IFl6cXpZi9OTwC8dFXGHnvSGt\/VB9mNTEREnWG6kQEAk2RwxR5rU1HxkzjMG2Nmy5aIiMijF6fXenF6AOBzTtAOAdycJIPtUNCCLVsiIuqSLrRsSxY\/nQLYmSQDVz2diy1bIiIiUaL4aQTg4SQZ9MsGLdiyJSKiLllWyza08pMyljHZfXtDGWzZEhHR2urF6YYspPE+ELRjVWE8V9CCYUtERB03sgfqULL46RBAf5IMdhddWINhS0REXRas8J2HhOyunDe0xOIQwI9FFcZVMGyJiGgtlCh+GgK4PUkGm3WFrMOwJSKiLjuxB6oqsfKTqzDerFJhXAXDloiIumzusdKSxU9P9BrGTWHYEhHRSilR\/FRLhXEVDFsiIloJJYufDt1GAYtWGFfBsCUiokuvRPHTW1Vh3FrIOgxbIiK6tKT46Syn+MlVGG\/VXWFcBcOWiIgunV6c9lXxky9kRwB+a7LCuAqGLRERddmm\/kUqjA8A\/JtT\/PRQKozf2BuXhRsREBFRZ\/g2IgBwXf43b9u7sWwksL+MMdkiDFsiIuqMQNgOAfQDIQupMN7pYshCurwZtkRE1BmBsA05lG3vllb4FNKL0w0A2\/LzA8OWiAhAlkR3ALySXx9Hcfba3IVaUDJshxKySy98smRf3B0A9\/Rxhi0R0bew\/Q\/ADfn1UxRnP5m7UAsKwnYEYLtrIduL02sAtgDsBiqjWY1MRESXwqFUGHcmaKUy2q1YFZrnCzBsiYguPAbwSX4e2xtpqcbSNdsJavrR55wVq5wxgEN2IxMRUWcEupH3Jslg1x5smxQ97easu6yN5L5vJsngC8OWiIg6IxC2Py6z4rhiyA4BHNgt+xi2RETUGZ6wHU2SwYY51oo5QjZYIc2wJaLaZUl0A8AjAHcA3JLDnwAcAziK4uyFeQiyJHIfRkdRnN2VYzcA3Jfz3JHbzwEchc7jBM73SF7XLX3c3B8A7kZxdqR+B8LnvKNeo6tmPgLwOu\/1WXIed83ciklT58mS6J27DlGcXZk6wYrwhO3bSTLYMscaJdXFuwD+sLd5HEpL1huyDgukiKhWEmgfAcQqaCFBdB\/A8yyJ7qvjXuo8z1TQQoLIneddlkQumHJlSfQcwHPzmhaSJdEzAO8kJF3QQl5vqdeXJdF1CdF38r70\/d15PhadZ4Wd2ANNMfvhFgXtodqyLzdowbAlojpJ6+y5CozXAJ7KTyKt2\/OCBSNuSdC68xx7zuHcAVAm0GIJxNrIOWP59di1ts3d3PXwktd90VoV+pq9kJb8LbXgxrppZay2xH64jg7Z0q+N3chEVJssiV5J6wwAnkZxlpi7IEuiOwVdtM65nGOmK1aC7pk6lERx9lT9rs93LKF9Q8IrieJMBzYw+\/xF3cjOOYAH+r4SoK9MgP4Sxdmx+h343jJ2gT1zLrnPDTnfVIt8jbqRb5dpOc5LVnzaDewgpC20NCRbtkRUp4vuYV\/Q4tvxmRALeOwLWnw\/tw7XWELJ55YE7dMozh77gnYBM6Ecxdk5gAcSns5Mt7m8Xhe08AUtvp3vE4C75ny0IOkyPpD9cPOCdq6WrMWwJaJG5IRfGUcFXc0ucHVwzgSa8ikU\/gt44Wut4nvg6i8KvnFiHbSvfUHreM5HC1DjsnlVxkNpVS8Usg7DlojqpAPyVZZEvpApIzdoFX0\/3W1rNRFUwXAUOoh9r01\/OSjzfouejwr04nSzF6dF47IuZDfr7L5m2BJRnRLV3XkLwEepyK1anFS2q1cHWl5L2tsCXVBRt27wdhnX1UVdDNIGmS7jn+3t4rSJkHUYtkRUG+lWveupGH6eJdF\/c4RuER1oeWHbNbbYKRjMtBipMs7rMh4BeDhJBv0mQtZh2BJRrSRwf5ECJh26NyR0g1NhiDyu2QNlyGYBH2Q3Hl+X8VjWXN6wSys2gWFLRLWL4uw8irNE9oS9a7pJH9XYwtVdsU10FTdlqpu8aJ7wmuvbA0WkAOpzTpXxHoCNNjc3YNgSUaOiOHNLG+oipbrCVnfHlh3nXTrP9CNfAZXFQC7Qi9O+KoDyeSvTeHYnyeCLvbFJDFsiaoueF1tUpZw3jUfToX3ZiozKVlI7Ze6zigpbtmqZxX8DBVCu+Gmrjmk882DYEtEyFBUEPSqaNiSrSLnW3nnJ6TNdYrvWg2Eq16Ku3oDLJnfMVlaACrVmx20UP5XBsCWi2mRJ9Chn\/FEv4lCmFfouFECB5RqLArxTZHUsPc78yvd+JWjXdV1khFq20prdl+k8P9jbAfwt47KNFz+VwbWRiagWErL\/J7++NkFy33Qdz6wVbNYdPlb3P1LhfF3Opaf5vIji7LH6HZg938yyilaZ+5e5jyPB+c797lvLWIL0nWfOrTvvLdWl\/kK3bn3nWwWetZEB4LoeY5XW7EEgZIcAdibJoLXdgspgy5aI6qJbZfel5el+XHCey5rHRZXDbscbyHndeWITtIkvaC+LnHnJ7v1ebOpwCbvJ69RHcWvWdRlvdilo3Xgyw5aIaiFrGbuqYxumRxIYv4Q2F7AkRN35dBgdy0pVP9mdfi6jKM6OZYrUY7lOrjv8WN77T551nW0186rb7MVpH8CHwD6zb7vUZez04nRHFtT4k93IRNQJVbpo11GWRPfV2K2bTrVyAt3I45yFKbYnyeCNvWGZenG6BWBft77ZsiUiuhz0mLftOVh1vqB1rdnOBK1sdPABwD+2m5thS0TUcVJINbUln\/rvdePGZrfaXpgiRJaGzN0bl2FLRLREWRLFOdOlXNDq9aSPShSYraoRgM2ujM2qxTQ+52x0AAB7HLMlok5YxzFbOw7rmX9sp0wdy7W5VHOKqwiM2UJWgdrsUGt2B8BuoIvbGQHYmiSDE7ZsiYiWRwepnvJjp0xBuo5XOmhzdCZoe3G61YvTMwB\/FQTtHoC+m4bEli0RdcI6tmzxvZvYtWBveRa4OAbwel26jgMt25vLnjsrC2nshsZklaFUSE+twcywJSKizvCE7WiSDDbMsdb04nRDQjZvTBbSZbwdWoOZ3chERNRlS2nRVih+Gkl19EYoaMGWbXt6cboNYGnfzmjlnHWlIpOoTp6W7V6bm7yjfPHTGMB+2dfGsG2JTHQu6usnKms4SQab9iDRZecJ2yeTZLBvjjXCt\/KTx1jus1+lYIvdyERE1GWNdyPnrfykjKXCeGOSDHarBC0YtkREtK7KrPwkY7JP5g1Zh2FLRERrpWTxky58qtRl7MMx25Z4xmxPAeyo34ny7AP4Wf3OMVtaSZ4x29t5Vb5VlSh+GgHYrbsAkWHbEk\/Y8sOSSuPfD62LpsK2RPHTEMBB3SHrsBuZiIhWVonip6EEeqMbHDBsicirF6d9+aC6Zm9rQi9Od3tx+qEXp61M81g2GTc86MXpVxk\/bMUlvM5z\/f1J8dObnOInHbILt5yLMGyJaIZUaP4rH1SNfxDJB\/+f8qH4hywC05penG734rRvjzdFvsB8UMU5f8qygI1a9nWeU6V\/F\/kSsy\/FT\/fs7QAOAfzYVsg6DFsimiKtLF2h+XOTH8oSMn+Yw6229AC8lPG8tuyYgjcA2DK\/12rZ17kN8m955nmfUCE7s0lAGxi2RHRBWnd\/2uMNB4EvyH+QXVYaJQHk3u+vLbUurwVmIjT9fpd2nRdU+PqkZ+JM\/i1tlfFSQ9Zh2BKRFmrd3Wtw7NYXAmip1WXfbxvPueUJBMg1bjLsl3mdFxH8u1PFTy89xU+dCFmHYUtEgHxwBQpJnMIWRlXSkrYfks6vTba6JNjsmN5Wg18qHF+r1gkF4kKWeZ1rYLvbUVD8NOxSyDoMWyJyij7om+hKLnrOJltdvnNfLQjDhUjAz4SH0tRzL\/M6L8x9GSgoftLVxZ0JWYdhS0RuHDG0bJ3TROun6JxNtrpCXx6KgmkRoed0rjZUjFZ0DZu8znXYyil+cssqtlpdXBXDlohQMmB+qHN6TIlWnlN7q0sCzTduCnmfZa7HPMqct8x9Slvmda7RH4Hipz0A\/SYXo1iUFG+9YdgSESp0X9bZ+ilq5TlNVAkXPXfZ61FahdCr+\/0WvVen7udt0imAm4vswtMkGVPe7cXpFyneusewJVpzOcUzI3ugwgd3GVVacLW1uqTL3I73WT830K1qr92p+V2rM+yXcp0btDdJBv1JMmh8n9uqpDr6QMaUp1riDFsi8n0Y3wx84P9aR7WunMPXyhvKJt1WnVXCNvRG8ryW77oswp5vC8Dt0Pu1B+aRc51D6rzOdRsD+G2SDDr3haAXp1syBel9qPaBYUtE9oN9b5IMTibJ4E0gCOpo8dnnHEm34Gbg\/Fc9j5mXPc+HQIvu97q6VT1dyKeTZHAmBT02hFHjYhP2vRap8zrXbVP+JjtDLabxj2cK0hSGLdEa83Qhj81CD77CkyZCYMd1C8r\/HprbEQilSgJdyG8k9Hzd5r7W\/TzsNbu4rhIgb6dvBup4v57r7Iyl96KNFn0d9rrUbaxC1reYhjUEcJthS7Te7AfrgSk4sSssIecDvAodeGNPi8XX0qyjgMf32t10Ed9zbtfUrWqf175fX6jbx8zDfrFwtiS8fM9bx3Wum+9LX+sqhuxIur03J8ngA8OWaL0FW1z41uo68xTy\/LDIh7Fs4q3NzI2U5\/W1uuxjq7KPH7ovFzJ9xHabX\/V8IZmHDr1Tu+hC4P1e9Vyr0nIee+jmo+b0IoQeuwwz16ttc4Tsw0ky2NBfIhm2RGvKM444DnTV+Vq3NqSrsB\/ktpXn+FpdcwdfqAvZ\/O57r77XUZon9EKtNN9x+9gqQo+1LXjfe577Ojdg5stYW6S6+GSOkJ35t2TYEq0v+2Fsg8fxFUrZx1Zhg9r7YSrBb1t7Py\/Qqva9ZvuefcGz6CIX9nntcwLhlrV9bBX2OkNatbZVfeLpvVjkOtet9Xm0aoOD9yWquXND1mHYEq0vGyCh0PviCQjfB3khT0HWyH74G74Pr3kDyD5u5rnlvfq6Ve21qkJfq5nnNOx1nqsr2XOdHd\/1ROB45edtiK+3pRGyGMVBYIMDayhjsrkh6zBsidaQpwsZobAV9sPk6pxLN9oP8LznhCd8ME\/wlexCdmw3K6RoqPL79YRe6Dkd3+3zfLGx1xky9hm63vbfF\/Nc54Y03rKVDQ52Jdi982QVveGB79\/Li2FLtJ7sB2luiyswNcb3gV7EPib04Q98b2naaTHzdHHa50Ug2ELFSphz7NY+ry\/ULgTmNttzlOF7TPC5a7zOl44MEZzZFZ88DlXI5v7d+lz5+vWrPUYNkP5\/3S0xlAn8RIU8fz+jnA\/PM\/lxTibJ4It8cG5IS2nHfLAcTpKBDeApvTjdAfCXOnQ6SQalW3vy\/J\/N4R\/zQh7fPwxfmsMPy3TdObL3qZ1uFJzSIwtKvLfHy7xeTYprXA\/CaJIMCsNLujFt6+pmoHhtRuA6A8D1vHWE67jO+P78W\/K35vv7ODGtVf33ek0WiNBuzxNuReTfeLdEd\/EhgN0q\/+4+bNkSXU4\/yDdx389LCQr3c96L06\/yAfw+8A3e28oz7H1+rjgH1ba2clvTin1eeM4VVLELGQi35OHpEQjydNXnPqfiK9Iq\/byBa\/M2L2iFL9B85wqSa30iX8r+kCCzP24HH9\/fqw3a2kmXcdG47FhCtrZN6Bm2RDQOfNBOkQ8c29VY5cPY9uQUPifCXZz2XHl8r7FM8PnGbncqfMGwr7FUCzFQHWzPlcd338Lnln\/fRZ4Xnh6TTpHemTNPz4Ezlm37NuoKWYdhS0RvSrR6HPuhXerDONC6LBW2wt73aoW1g31ha883IzAVp8rawfp+o7LdwMJe51Ljp4Hr7FuhK8Q+b5XrjIot8Nb04rQvXfp\/Bb4M6JBtZNs+hi3RejutUvjjKeCZJ3icsgGAwH1955wSCJ8yXaqOr0vX1+L10c\/re\/15bOihzPsN3KfKc\/u+hPjOOcNTeW2NpfDM95OnbE\/CDOky3gfwr6f6Hm2ErLOyYSuTkr+an7L\/JyHqulMpeLkC4Lps1aZ\/9gp+nkjhSX+ODxgdBGWnANnW0WmV55XuPDuGas\/p42tpVQkfX9gW7sjjmRvrC8+gQNe5PaeP73WVfr\/S+p7nOiPnS9uhFHhdk0pe34\/+O7bK\/H3NkH+DMxkjtloLWWdlq5ED1YR7y9oL0VNNympkKq1Lfz+eate\/J8kg9EELfHvMF9N9V\/gYS1oo9oOzqMJWVwM7uY+xAtXBudffPKZUFbIVqA7Ofe2e65xbde0TeL+5z4vAcwPYrtCFDXw7jw2lSp\/b8vd5ECh+crta7Re9n7qtbMuWiJrhKaTJbXFJC8OOk\/m6K4v4HpMXeH1P0FbpQnZ8H\/RFO+Poa1IpbJzAmHHwWgeuc6UWtfC93uB1Rvi5d6oGbUDedZ4iBVAnnqBtvSVrMWyJaB66e7VoFyBfQPiCM1fggzsvBHwt58rhk7PIhS+EfcFT+b0q9j37rqXju63y+w283rzrDE93\/duq83Nz5P1tAfLFKqcAaqkh6zBsiWgeVQql7G2VxmsNO47pDQEpjLJdoVWqci1fsP4emAakX9MizwlP2Hrfr7DXuWoFNBAeLw4+r3zRskVovi868wqGrVpm0VcA5ebJLjVkHYYtEVUmH146CGzLBvC38uAJkCpsqyu0sIbvw37u581Z5ML3PAt3ITue6m\/vxgRLvM7w\/Nu\/rXN+aqjCWepyTmRhDM2tXVzrPNlFMWyJaF66mzA0D9R+EGPBEPA9dqrVJaHgC0FfZXEVvtbt1PNI6FXZeKAMG3wzYRu4zot04\/pe90zrNnCtfY9diK7+VtN53ptrPZblJedau7hpDFsimountTf1gR+Y4xraoL4UT3EWPCHgW8Vori5Vw7YyIS1N\/b51EC7ahezYc0yFbeA6ny7yfitMtbLXelzjWK22ge9fZnzTed7KuGwTz10Lhi0RLUK3Fm3ryjc\/0gbHPGyr5eJ5pHVtuxVRQ6vWdZ37zrOD76FXWxeyYs9jV3XyXec6Qsc+79TzSLW3vdb2MXXZks0k\/rHhLnvKbnVhXDYPw5aIFqE\/XO1iD76WkA3Kedgg+RXfwy70YV\/H88Lz3JAu9E0JWh0EoddSiYSIbc3rUPddZ9\/rrMqe42I6Tc619h2rwz1P630ordmmnnMh0t293YvTg16cfmHYEtHcPJsT6HFN29JFHR\/GvlWOpHvxwFORipq6kIHv7\/fQHpfWrX7vdXUhO\/ZcOmztdZ5nLvGMwHXeVIVJtnCp7vec51DGZhd+n3VSAfsGwLksSvI7gKsMWyJalG4B\/dqL0w+9OD3zfBjXEgLCfqj\/42n5OPa+i\/J1Jd9roDBKs+f7Iec62xbpIuzzvvEUJunb2vCkaO\/ltsmXkAMZT37p+VscM2yJaCGe6Sm\/tvBhXCVQqty3kLT4fItcaHW+V\/ectjjLd51HNbcu7bWzhWdanc8b8vckGfi+7CyFtGJP5AvI74HrMwSwwbAlojrYD2Wf2j6MfV2cAbV1IRt5H\/hNdaeWeR9l\/h1Kq3idm3jP2rDqetpNcAtpyFrQLwNDF5AvR09cdzfDlojqkBc+qLkL2Sl6TtQZ8JoESyiE6irGsorO6xbZr1uZAC9zn0UttetYrVZ1JlXYvlas8xZAX7fCGbZEtLDA\/FetidAr8wHfRPg4vkUu0NB7RYmwPWjgCw06cJ0hBVFLWQ2qYsieyupVW\/b1MmyJqC6hD9xGFjqQYPFVBjtD+4FXMztWrY83Ia8beZwT\/gvJqcB2mui1sEJ\/W42pGLJu9ap+aPUqhi0R1SUUPk1+UOYFTN5tCwssctFY8Mh5Q13XTe\/PmnctveFSo4VWw5qHbNVXNmTdrkK5XygZtkRUC8\/mBE7uh9AipNW1Z49Lq7bpEIDnvfnef518oTPyhH6t5Dr\/bY+Lpq9z0+e\/IFN4zgJb9VmHVbbuY9gSUZ1s+DQ+1jZJBrtmvHjcVjGNp4u17bAdA2hrqUJ7ndFgtbfW9PnRi9ONXpx+yJlDrLmt+7arXHeGLRHVxmxOMPbsCNOUTQBPpJXbbzrgDdeqbKwLWfmguupHADZbCDvge8\/FplzjU\/nx7UBUt8b+LdW47Ge9HGXAUIVs5dfEsCWiurnw2WkhfAAJgkky2JcuvcofhItQi1w03arFJBl8mCSDa1LxutFW0DpynXelEKjf0vM38u8pS3yeeDZTsNz+uJuL\/G0xbImobgdSmWm7lFfZbhth67Q0Ht0JiwScj3QZv5ElPvO6jHXILny9GbZEVCtp\/axT0LoWZyuteJqfdBmfeNYu1moNWYdhS0REK60Xp31ZwzhvKk8jIeswbImIqLNk79y5SAHUPoB\/c9YwHskG9I2ErMOwJSKiLuvbA2WofXf\/sLeJkdQWtLIBPcOWiIhWhrRmD3LmzOqQba22gGFLRERdVrplK9N5zmRvWWspIeswbImIqMsKx2zNdB5bALXUkHWufP361R5bCdJf\/94c3pOl3VonS4HpFUqGk2SwqX5fmiyJ3B\/BURRnd+XYHQD3AdwBcAPAMYAjAEkUZ+fm8Y\/kfrfUfV8DeGHva2VJdF09j3s8AJy780Rx9sI8zCtLohsA9GsBgE\/utYfOM+\/j2tTlvx+iOvXi1IbS20kyCK5UJZsG7AZCdneZAauxZUszsiR6DuCdBJALv1sAYgD\/ZUl0S+53PUuidwCeS2Dq+z7T9\/WRkP7P83gAuC7h9zxLoo8SykFyro\/yGvVz3pBzP8+S6L46DizwOCJqjbdlK9N5Png2DehES9Zi2NKULIliCVkAeAHgqbRSnesA3kn4vZNAPFf3PTb3fVUQlO62I3m8+9HPeQvAK\/X7FGmFP1fneq3Ok0gr9TyKM33OuR9HRMsli1P8a3p7xtJ72amQdda+G1laNs\/VoV+iONOBcUFC46NqgT2N4iwxd\/Pqcjeg6kZ2jgE8iOLskzsgrTsdeJ9Ul\/Fd3V3suabe6yTX81Gou1laxe9UGN6N4uzI3A1ZEr2SVihynuuOfey8j1uGLv\/9ENXJ0408Urs4bUiXsa4yHst63E3v6Tu3Xpz2K7VspdJrpch4nG656JCwYhW0R74P5xVwboMW367Ta2ntOTckcKeCFt+vqR7n9HbDRnF2HsXZzBiwI1969HN6z6OPh\/5NAoE57+OIqD0\/SMPpPYCXJmj\/rrKnbNukcOsAwL+lwlbt9dfoBsVL9FhCBgBuSVfqFOlydMfP5TGr6IUNWsV2p3pbpMJ2A89Lh13heaTYqbJ5H0dES\/FWtrtrbWepKtTWfSduGlJh2Jq9\/hpbymqZJDB0eMaeD99n6r+TnEC67IItOU\/3uv39gm0RypeVysxzhsJWB\/urvKIsY97HEdFynMr6xVt17wZUl16cbstc36l1mINh24vTTbVws7OSYYvv3aTuw\/e67k6Wlq77IF7V7uOlypLoRpZEj7Ikep4l0bssif7LkuirZzzZJ9E9EwA+yjlcoVfIvI8jovbtyR66ncwhycwz6eq205BmC6Rk0efdwHqSP9b9baIXp\/1QabcIFYFcy1lZ5Fpg0emZAilNCnb+UwU5D6T19lGOnUsBVeVWbZcLXEygeYuQnLrvKz0Iz3LGY6dEcXbFHsP3YqpXZvoQZFw5Cc2Vnfdxbevy3w9RnTwFUgBws6WN6iuTDNs3\/\/+0hlNhKxW8B4H1JFdBbtji24evrrp1Cxu4IHgw7zSQLn9YlglFp877Sgvymfpycy69C+66O+\/cf4TCFt+\/LD0y84OdF1GcecfZ531cm7r890NUJ0\/Y5i5qsSy9OHWV0b6lIZ0xgJ1JMji46EaWSuPQws1rw3Qnu4UNICsZzRW0NEtatHqO69Mozv4XxdljqVA+cj\/moUGquvknAHfN+POjUPfwvI8jolZ0qkXrK34KcJXSB9BjtrLF0G2Z07TudHWyPkb10RXf3jmui5CgvmumIBWG5ryPI6LGdCZsQ8VPxqGvUnqqQEoGnvtSVm2NJIzzfn4DsFfjz3CBn1P7Biq4pVpcDj9w66Wrk4NVzQWrT5XxVP13lWrjeR9HRPVa+tSeouIn4aYjbftqm2YKpBzpVt433cq\/tbHJbh3KriBlmVWizs144k8580pzdXnMrWhsVavrvua24Fi4VIJfTLvKG7P1kX\/P\/5Nfz6M4+5+5i9e8j2tKl\/9+iOrkGbO9vawK5LLFT7LhQe5rDE79kVDtS7+zs6qLWmh6lagkNB2IFqZbs95eAxu0ITJlKNQC1t3VMwVa8zyOiFabXvkpJ2gP5YvAZlHQIi9s8S1wv0ySwQ6Am5LeP8jA8Eoyq0R9knHEp2r89j53gKmNHqO9I\/Nqv5Upffv5T4L2vEQ383MA\/5cl0StzDrebj3PxnPM+johWV8niJzcmu10mZJ3csHUmyeBEuqxudmmwuk7qw9d5jG\/dlp\/Mh+3znNYQlRRYa\/mZ+rnY5MBTrKbpsd\/75hxurPUcwGOzGtW8jyOiFVSi+EmH7MyYbJFSYetI6F6KMds56O7j13p8UVq47gPXhjLNKYqzpxKmr1Wgurm2j6M4czsw6bHeqWUfJbRd9bANxSPpmfjFLk4x7+OIaLUUFD+NFw1ZJ1ggddlVKZAyC1l4V4mSlYY+qkPBoh4fFrjQIvj3Q+uirQKpguKn2rftq9SyXUWe7mPvJgOe7d7YnUxEdMkUFD+NZdpp7dv2rX3YmlWMjgsWV0hkKUGwO5mIqBUb9sA8CoqfRgAeNhGyztqHbRRnD6I4uyI\/v9jbNVnW7yd1\/wf2PkREVKuFwzan+GkE4OEkGWxMksFBEyHrrH3YEhHRasopfpoKWXW8MQxbIiLqssot216c9qWo0G6u03rIOgxbIiLqstJhm1P8tLSQdRi2RETUZdfsASun+GnpIeswbImIqMt+tge0XpzueIqfOhOyDsOWiIg6rRenM63bXpxuSfHTXypkx7J4UWdC1mHYEhFR1\/Xdf0iF8QcA\/5jip7\/dPFl1rDMYtkRE1HWbqvjpvV26FMDNSTLYaXKe7KK4NnJLuLYtLYJ\/P\/WTz4gNGe\/T+qoox13ja4Gxw6EU5ewvskg9fedZGxnSPezbJGB3kgw6u896L0435O+pz5YtEa2rTVns4L35+UuKbf6ULzi\/BoIWctsfAD7LKkXUDBu0QwD9LgatjCUfyHjyZ+nu\/pNhS0RUj8598K+ovyfJYLNLPQmui7sXp18kXH8348kcsyUiqslV6Zqm5jycJIMde3BZVLHWZwlY2wJ3Dhm2RER0Gex1ZTqPCllbrGWN5QvCNsOWiOi73ybJ4IrvB8DtEj8n9oRUC7eZ+1KZNZfzQhZqXPkA7EYmIpoSnDoySQYfSvwEH08LaXT7uyKyHKRvzWWfMYAndlyZYUtERF33xh5oi1oO0m4473MoC2vMtMIZtkRE1GmTZPDBHmua6jLWy0GGDAHcniSD7VALnGFLRERdNrQHmiY7CJXpMnYbHmwWfSFg2BIRUZe1VnQmrdkTWdAkjxuXLb3hAcOWiKiAfAjP7DxDrWhl8QrVmg2tFga3q1BoXDYPw5aIKECqUD\/Ih\/DFzjPUqkZbthVas674aTc0LpuHYUtEFGY3gKAVUrI1ewjgx7zipzIYtkREHrKxQN6HMLWj9patrGX8oaA1q0N24a5shi0Rkd9StuOkaYu0Jn1k3uxJTo9FrSHrMGyJiIxenPbtri10uanWbGjerJ4rW1vIOgxbIqJZW\/ZA0TxK6i4ZEgi1Zl3IFs6VXQTDlohoFiuPV4C0Zt8AeOlpzbYSsg7Dloho1oY9QMshXfqVqbHZe+amVkPWYdgSEc1iFXJ3VFpMJGdN46WErLOyYSvbXdk9KVldSER0uZRq2coCJPueNY2XGrLOyoYtERGthE17wFLb4P2hDnciZJ0rX79+tceoAdKtMfVta5IMCv+IiOD\/+6Fm3J4kgw+9OOUHY7f8aKfjyFrVWzIfWk\/TGgLY7ULAamzZEhFR1x24jSBkTHZfWrIvVdB2qiVrMWyJiKjrfgVw1ovTMxmT\/UMVP3U6ZN30I4YtERFdBldNd\/Go4yHrCrY+A7jHMduWeMbcOGZLpXn+fkYASm1aTUGbnnHwvDHbPXuAGpG3OQDkb3+37KbtyyC7Ce3oqUcM25Z4PiwZtlQa\/37qJx+I9oM9GLaTZHDFHqP6+a69GAPY7\/IUTlkW0hZsARyzJSLyGtoDtFRDAP2uBm0vTjflC7Eu2JrCsCUioi4bybhs7TvxLEqtvfzeMyThDAHcZNgSEc3qXMHNGntjDyybLX6yt4tTVcB1wrAlIppV64bltJBOtWhlrN+uVqWNADycJIO+rpJm2BIRzTqxB2hpOvFv0YvTbZnn+6dnuz5IAdfeJBls+CqlGbZERIZv3qZbwYjWS5niJ5kWtpFXwMWwJSLyOzW\/l9p9hlZDyeKnQ1m3eXeSDHKHHhi2RER+M61bWn0li5+GErLbZaukGbZERH4M2zVTovhJr8NcKmQdhi0RkcckGbyRohdacSWKn1yF8dzrMDNsiYjC9u0BWh0lip\/GAJ6EKoyrYNgSEYXts3W7ekoUP41VhXEtX7gYtkREAVJhuimtm7m6D6k7ShY\/Hbp1mIsqjKtg2BIR5Zgkg5O6Wjc0l1p2typZ\/FSpwrgKhi0REa2sEsVPc1cYV8GwJSKilSPFTyc5xU8jAL8tUmFcBTePbwk3\/6ZF8O+nfoHN498G1uLdkJ8iO5Nk4Hs8leTZPL7S33ovTjcAHAQKnyDFTzuLVhdXxZYtEdF39ySA7c\/v8uFd9MP1k5dEip8OpPjJF7S6wrjVoAXDloioVo2N+a2x3DWpJWRd8dPv9nZx6DYKqLPCuAqGLRFRPYZNFtisMV9REyDFT9LtHyp+eqsqjJcSsg7HbFviGXM7BbCjfifKsw\/gZ\/V7pXEsmiWtoW1Pa3QjUFCT51DGAZf6gb4KPGO2AHBTj4X34nTT8\/8JbQhgt43Cp7IYti3xhC3RIhi2LejFaV+Nw9rr\/UVaVScM2foEwvbhJBkclCh+GsmXnjf2hmVj2LaEYUs1Y9jSSgqE7Vv5chMakx1JS7b1wqeyOGZLRERddy8QtK7CuN\/FoJXirZ1enJ4xbImI6DL6e9kVxiG9OO3LNKRzAH8B+IHdyC2Rqrkyk+KJyjjr4jd5LUuiOwDeud+jOLsyfQ+iWYFuZO1QuoxtYdvS9eJ0SwpfZ4YMGbZE1AiGLc0jJ2xPpfipMxXGjjSmdvOq2NmNTEREl8F2l4LWLabRi9MvOesvO2OGLRERdd1hV9acNitWhRbTcIYybekaw5aIiLpu6fsJVwzZQ7Vt3wHYjUxERB03Xmardo6QdctDTnV5M2yJiKjLlhK0FULWzfV1IeutkmbYEhFRl7VeFNWL050KIevm+npD1uHUHyKqLEuiGwAeAbgD4JYc\/gTgGMCLKM6Oykz9yZLoOoD76jw35KZzOdfrKM5emIdNMc\/zNIqzRI6713cHwHUARwCO3O3q8dcBxOo1HMt9kyjOzvV9tZznvaPek3s\/xwBey7UJntOR16Sv73V1TY7yzuN7Xep8j+Q1XbzervFM\/dmbJINdc6wRZabwSMjuA9ivspgGw5aIKsmSKAbwzB43XsvPK3fAhq2E4TMJkjzHAO6WDRcAL+R39yXAujhflkS35L6+13Au9zu2NyD8vM8k0EI+AXgQOifKX5fgeQKvy16PyxS2t+34Z91K7CKEeUPWYTcyEZWWJdFzE7SfACTyof5UAhbSsovV\/UJcoBypc+jzQELiIrRLeCWPOVevTYfSLQCvpHXugvZYBZNzHcA7aRUWuWWC9kXgvdyQc3q\/CEjQPlfX5QWABwDuAngs1wlF5zGe53zxWGu9ON3oxekbAO9zgtZ2F1cOWrBlS0RlqSBwXkgLaarFGWotelq2rmvT2yXqOc\/dKM5c2Fyw3dVi5rVlSfTMfAH4JKH1WHdVy\/N+VPfztgIDz3ssLc5P+qDnvRxHcfaLuY8+X7BVbXoWjqI4u2tu1+d5LV983BcP77XukjZatr04vSbdxX\/Y24y9eVuyFlu2RFSWbtG+iOLsse+DWwLirnzAB0Vxdh7FWXBcVM6jQ+6++u88x77XFsWZbeHekPcxNSa8wPO6gJwKWkxfE+eWfHnR9BcZb9Di27kS1cK9U9C6da\/9Qd61XicyLntWELRuCs\/cLVmLYUtEhSQYXKvsXLpHgyQocgubStIt2bxQ0WZaoYru0kXOa5zneWda+ZrnmlyEuLRGXTHVi1DQKt7zBLzw9Qism16cbsq+4i9zKoz1PNnc6uKqGLZEVMYd9d+v80JFWfgD3oROqdCL4swGqjYVYqFQs+EkYVgk73kdfV59Tv3fZa5blS8DZV7XypL5sgcyLjuzG48YArjZRMg6DFsiKsO1umADqw5ZEt3IkuhRlkTPsyR6lyXRf1kSfc2SyI7fddY8X0CkSAs2MLMkupP3Y+6f+0XAfnFYJ6rL2LfxPCRk3bKKjS6ewbAlojL0h\/vMmOS8JGRfAfhPxizd3FId7ivDE8i+sH0lBU5FP+uibw8UkSrjvC7jkWwQsFl38VUIw5aIlkLGgT+qMcdzNWXmrvpZB2WmF62ra\/ZAHlli8XOgy3gsi2RsuA0C2sKwJaIydGt24WCQ7lM9n\/RpFGf\/kyriJIqzI\/djHnqpeebsznTJR3F2peqPPceKKRW2UgB1Ikss+hy6ubL2hjYwbImoDB22RQU5Zej5rt55rCtKj6+eq27liy8VBVN51lFuN7IUQO3nLEyhi59qmcYzD4YtEZWhW5hFU02cvMIdfdtM687xtAQ7K0uiMtdlqqpb\/be+BmXOs0427AFHllk8CcyZHQH4rY3ipzIYtkRUxtSSg7KKUZC0zvLuowug8gLVLvzQZXHelwOpItbvR19TPW82Zut2ysymAKY1O3O7rPzUnySDN\/aGZWHYElEhWRVJd\/U+CwVuYBlDS7fkvIFacsODLrklay7PBK5cE72+89R4tOf6vgtdX01NHVpp0oLV\/x1qzQ7rXvmpLlwbmYhKkRB555kG9FotzXhHdZU+1b\/rQh7pctXh88m07txWcOdy2y2Yczg23H33cSreV384zqzLbM8lXyBuyWt+rca5b5mu4WPfLkaB62vP5dyR+x1FcfZA32BfV9577CLP2sgA8GSSDPalNesL2TGAnbYrjKtgy5aISpFwuGvGb29Id\/Ez+bkI2ryiJ1nlSd9+Q53jmfzu1hO2c1O76q68ZrfBgnsvOmiPfEELub6yOYG+LvZc+jpfr6lY7TLYkkpjX9C+lSrjzgZtL06vMWyJqDQJhLuy7Ztu0UKCJgHwU17QOrIxwF1zHteSexzF2S+ynKKu1NUFRp2iwlJvhQf1nh5EceYNWk2uy0\/SM+Cb+vRJjrvrtw5+9VQaj6UAaqtrXcYyprzVi9MD+ZJwzm5kIqI5XPbu2q4KdCNbQwCdClnZtm9Lfu7Z29myJSKiy2RPpvN0ImhlMY0D6cF46QtaAKcMWyIiugxct\/FSVoDSpJt4uxenZzL9KLTRAQD8PUkGfYYtERF13RjA5rLnzUrI7spOQi8Dc3ydkewotAN2IxMR0SWwu8xVoEzI\/hnYScjRmx1c7CjEsCUioi4bT5LBvj3YhoohC9nsoO\/r6mbYEhFRly2lRas2ni8Tsm4T+u1JMjizN4IrSBERUZd4pv7s+VqKTZHlIA8KxmOdoXRxF25Az5YtERGtvV6cbvTi9EPO5gaa3lGoMGjBsCUioo4rFWbzUuOyn2WlqjwjAA+l+KlSZTTDloiI1lIvTrdkTPhPe5vhxmTnXoOZYUtERGtFuozfAPinoMvYhWzp7uIQhi0REa2NXpzuSGvWt6yiU1vIOgxbIiJaebKG8QmAv3Km8hwCuFlnyDoMWyIiWllSALUvVcZ2mz7nEMCPMk+2kXm9DFsiIlpJUgB1Fth0HiZkvYtR1IVhS0REXbZpDxRRc2b\/8XQZjwHsAbjeRsg6DFsiIloJBXNmXchuTJLBbtv74TJsiYioy\/r2gE\/OnNmlhqzDsCUioi67Zg9ovTjtqy5jPWe2EyHrcCMCIiLqDM9GBJgkgyv2WC9ONwDsAvjd3DQGsA9gf9kBqzFsiYioM3xhK3NfTyDjsgB25McWPx0C2OlSyDoMWyIi6oxA2D6Rbe9CITsE0Fpl8TwYtkRE1BmBsB3L\/9qQHUnI1rraU52kJb7FsCUios4IhK1Pq5vKVyVjyjsAtgFcZdgSEVFnlAjbU2nNNrKs4qJkCtKOnefLqT9ERHRZHALY7GLQ9uJ0uxenZzIFyS6owTFbIiLqjpyW7eEkGWzbg8tUUBk9hWFLRESdEQjb4SQZVF4juSlVQla6vQ8YtkRE1BmBsL2YZ7tMFUJ2LFOV9t10JIYtERF1hidsR5NksGGOtapCyI4A7E6SwYG9gQVSRETUZUtr0apdhM5kg4NQ0A4B3J4kgw1f0IJhS0REHbeUsO3F6bbaRagoZDeLFtZg2BIRUZe1ugRjL043ZQrPS7OLkDYC8FuZkHUYtkRE1GWthK3aqu99TsiOATyU7uI39sY8DFsiIlpbMi57AOBf32IUitsb1zsmW4RhS0REa6kXpzvScrZ74mpvAfy46Ab0DFsiIlorMi57AuCvnOKnkRQ\/bdWxdR\/DloiI1kIvTjd6cfpGxmV\/trcrezIuW6r4qQyGLRERrTzpMj4BcM\/epgxdl7G9YVEMWyIiWlklu4zHairPwl3GPgxbIiLqsr49UIZUGe+X6DL+W6qMK03lqYphS0REXXbNHigiG7ifAfjD3qacygYHO4tUGZfFsCUiopUgBVAfZAP3vC7jJ5Nk0G9zJyGGLRERdVmpfWxlw4CTgoUpDqXLeN\/e0DSGLRERdVluN7Iss1i0YcCpzJndbqPL2If72RIRUWd49rPFJBlcscfUHrN\/2tuUsewv23pL1mLLloiIOq0Xp1Obx\/fidFNtfxfi1jJeetCCYUtERJdAH7PTeUI78xzWsZZx3diNTEREneHrRpZW6gmAg5xx2UPpMm5kUYpFMWyJiKgzAmGbp9Mh6zBsiYioM0qG7RjAm8sQsg7DloiIOqMgbE8B7AN406Xx2DIYtkRE1BmesB1JK\/agzRWf6sawJSKizpCwHUrAfrjMAasxbImIiBrGebZEREQNY9gSERE17P8DS4i3apLSoMsAAAAASUVORK5CYII=","width":213}
%---
%[text:image:3622]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[control:slider:818c]
%   data: {"defaultValue":75,"label":"Mass (kg)","max":100,"min":0.1,"run":"Section","runOn":"ValueChanged","step":0.1}
%---
%[control:slider:26d3]
%   data: {"defaultValue":38,"label":"Damping (Ns\/m)","max":100,"min":0.1,"run":"Nothing","runOn":"ValueChanged","step":0.1}
%---
%[control:slider:6d87]
%   data: {"defaultValue":521,"label":"Spring constant (N\/m)","max":1000,"min":10,"run":"Nothing","runOn":"ValueChanged","step":1}
%---
%[control:editfield:49fe]
%   data: {"defaultValue":1,"label":"Initial position (m)","run":"Nothing","valueType":"Double"}
%---
%[control:editfield:5d40]
%   data: {"defaultValue":0,"label":"Initial velocity (m\/s)","run":"Nothing","valueType":"Double"}
%---
%[control:button:25cb]
%   data: {"label":"Run Mass-Spring-Damper model","run":"Section"}
%---
%[control:checkbox:5b0e]
%   data: {"defaultValue":false,"label":"Display model details?","run":"Section"}
%---
%[text:image:6677]
%   data: {"align":"bottom","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:0f1d]
%   data: {"align":"middle","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAjElEQVR42mP4\/\/8\/AwgnJiYapKamfgfS\/ynBUDMMYOYywBggiYcPH\/6nFIDMAJmFYQHIdmoBqFm4LZjrYPd\/gpoyGIPYVLeA5j6gmwUlJaVAxUlgDGKPBhFODaQG1QgIoqKtr\/6r99wlCYP0EG0BSMOWe\/9JwiA9oxaMWkBHC2ieD2iSk+lR6dOk2QIAjF+EgB\/BqfoAAAAASUVORK5CYII=","width":24}
%---
