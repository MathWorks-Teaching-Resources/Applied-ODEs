%[text] # Undetermined Coefficients
%[text] [⇦ Main Menu](file:MainMenu.m)
%[text] The method of undetermined coefficients is a powerful technique for solving a common class of linear, second-order, nonhomogeneous ordinary differential equations. This method applies when the nonhomogeneous term has a specific form that directly suggests the form of a particular solution. In this script, we'll explore this method through theory, examples, and applications in pendulum motion and chemical bonds.
%[text:tableOfContents]{"heading":"Table of Contents"}
%[text] **Before you get started:**
%[text] %[text:anchor:H_BF646A47] This live script is intended to be used with the code hidden. On the **View** tab of the MATLAB Toolstrip, in the **View** section, select **Hide Code**.  Alternatively, select **Hide Code** using the icon ![live script code hidden icon](text:image:2325) at the top right of the Live Editor pane.
%[text] ![Lightbulb mark](text:image:64f3) Although the code is hidden, some interactivity requires familiarity with MATLAB. If you need more instruction, consider taking [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted), a free 2-hour online tutorial that teaches the essentials of MATLAB.
%[text] %[text:anchor:H_8F8A032D] ![Warning symbol](text:image:8762)  For an optimal experience, follow the instructions and steps in the given sequence. Proceed to a new section only after completing the preceding one. Some sections depend on variables created in prior sections and will generate errors if run out of order.
%[text] The ![Try this icon](text:image:30f8)  and  ![Exercise icon](text:image:72f9) icons refer to two different types of interactive activities that you will find in this script. The ![Try this icon](text:image:4b50)  usually indicates an interaction where you will explore the visualization of some concept introduced in this script. The ![Exercise icon](text:image:8198) interactions are designed to challenge your understanding of those concepts and may be used for grading and completion checks by your professor.
%%
%[text] ## Method of Undetermined Coefficients
%[text] ### Why Use This Method?
%[text] The method of undetermined coefficients is used to find particular solutions to linear, second-order, nonhomogeneous ordinary differential equations of the form:
%[text]{"align":"center"} %[text:anchor:M_304b] $ay'' + by' + cy = g(x)${"altText":"ay'' + by' + cy = g(x)"} $(\\star)${"altText":"(\star)"}
%[text] where $y = y(x)${"altText":"y = y(x)"} is the solution, $a${"altText":"a"}, $b${"altText":"b"}, and $c${"altText":"c"} are constants, and $g(x)${"altText":"g(x)"} is a nonzero term, or **forcing function**, with a specific form. The **particular solution**, $y\_p${"altText":"y\_p"}, is a solution to [equation $(\\star)${"altText":"(\star)"}](internal:M_304b) with $a\\frac{d^2y\_p}{dx^2} + b\\frac{dy\_p}{dx} + cy\_p = g(x)${"altText":"a\frac{d^2y\_p}{dx^2} + b\frac{dy\_p}{dx} + cy\_p = g(x)"}, and a **general homogeneous solution**, $y\_h${"altText":"y\_h"}, is the sum of two linearly independent homogeneous solutions to $ay'' + by' + cy = 0${"altText":"ay'' + by' + cy = 0"}, as discussed in [Characteristic Equations](file:.\\CharacteristicEquationsSoln.m). Using the principle of superposition, we can write the general solution to [equation $(\\star)${"altText":"(\star)"}](internal:M_304b)  as a sum of two parts:
%[text]{"align":"center"} $y = y\_h + y\_p${"altText":"y = y\_h + y\_p"}. 
%[text] The method of undetermined coefficients works when $g(x)${"altText":"g(x)"} involves only sums and products of polynomials, exponentials, and sines or cosines. If you are not comfortable solving for the homogeneous solution, please review the discussion in [Characteristic Equations](file:.\\CharacteristicEquationsSoln.m).
%%
%[text] #### Example: A polynomial forcing function
%[text] Consider the differential equation 
%[text]{"align":"center"} %[text:anchor:M_2687] $y''-4y'+3y = x^2-2x+4${"altText":"y''-4y'+3y = x^2-2x+4"}.       $(\\diamondsuit)${"altText":"(\diamondsuit)"}
%[text] The essence of the method of undetermined coefficients is to start with an educated guess at the shape of the particular solution and then try to determine coefficients that will solve the equation. In this case, we have a quadratic polynomial $g(x)=x^2-2x+4${"altText":"g(x)=x^2-2x+4"}. Because the derivatives of polynomials are lower degree polynomials, let's guess that $y\_p = Ax^2+Bx+C${"altText":"y\_p = Ax^2+Bx+C"}. Plugging our guess into our equation, we have:
%[text]{"align":"center"} $y\_p' = 2Ax+B${"altText":"y\_p' = 2Ax+B"}    and      $y\_p'' = 2A${"altText":"y\_p'' = 2A"},        so
%[text]{"align":"center"} $y\_p'' - 4y\_p' + 3y\_p = 2A - 4\\left(2Ax + B\\right) + 3\\left(Ax^2+Bx +C\\right) = x^2-2x+4${"altText":"y\_p'' - 4y\_p' + 3y\_p = 2A - 4\left(2Ax + B\right) + 3\left(Ax^2+Bx +C\right) = x^2-2x+4"}
%[text] Simplifying 
%[text]{"align":"center"} $2A - 8Ax - 4B + 3Ax^2 + 3Bx + 3C = x^2-2x+4${"altText":"2A - 8Ax - 4B + 3Ax^2 + 3Bx + 3C = x^2-2x+4"}
%[text] and gathering coefficients, we have:
%[text]{"align":"center"} $3Ax^2 + \\left(-8A+3B)x + \\left(2A-4B+3C\\right) = x^2-2x+4${"altText":"3Ax^2 + \left(-8A+3B)x + \left(2A-4B+3C\right) = x^2-2x+4"}.
%[text] This gives us the following system of equations:
%[text]{"align":"center"}  $3A = 1${"altText":"3A = 1"}                  (from the $x^2${"altText":"x^2"} term)
%[text]{"align":"center"} $-8A+3B = -2${"altText":"-8A+3B = -2"}               (from the $x${"altText":"x"} term)            
%[text]{"align":"center"}  $2A-4B+3C = 4${"altText":"2A-4B+3C = 4"}                  (from the constant term)         
%[text] So, solving in order, we have
%[text]{"align":"center"} $A = \\frac{1}{3}${"altText":"A = \frac{1}{3}"}
%[text]{"align":"center"} $-8\\left(\\frac{1}{3}\\right) + 3B = -2 ${"altText":"-8\left(\frac{1}{3}\right) + 3B = -2 "}
%[text]{"align":"center"}  $\\Rightarrow B = \\frac{-2+8/3}{3} = \\frac{2}{9}${"altText":"\Rightarrow B = \frac{-2+8\/3}{3} = \frac{2}{9}"}
%[text]{"align":"center"} $2\\left(\\frac{1}{3}\\right) - 4\\left(\\frac{2}{9}\\right) + 3C = 4 ${"altText":"2\left(\frac{1}{3}\right) - 4\left(\frac{2}{9}\right) + 3C = 4 "}
%[text]{"align":"center"}  $\\Rightarrow C = \\frac{4-\\frac{2}{3}+\\frac{8}{9}}{3} = \\frac{36-6+8}{27} = \\frac{38}{27}${"altText":"\Rightarrow C = \frac{4-\frac{2}{3}+\frac{8}{9}}{3} = \frac{36-6+8}{27} = \frac{38}{27}"}
%[text]{"align":"center"} $y\_p = \\frac{1}{3}x^2+\\frac{2}{9}x + \\frac{38}{27}${"altText":"y\_p = \frac{1}{3}x^2+\frac{2}{9}x + \frac{38}{27}"}.
%[text] The homogeneous solution to this equation is found by solving the characteristic equation:
%[text]{"align":"center"} $r^2-4r+3 = 0 \\Rightarrow (r-3)(r-1) = 0,${"altText":"r^2-4r+3 = 0 \Rightarrow (r-3)(r-1) = 0,"}
%[text] so
%[text]{"align":"center"}  $y\_h = c\_1e^{3x}+c\_2e^{x}${"altText":"y\_h = c\_1e^{3x}+c\_2e^{x}"}, 
%[text] and
%[text]{"align":"center"} $y = c\_1e^{3x}+c\_2e^{x}+\\frac{1}{3}x^2 +\\frac{2}{9}x + \\frac{38}{27}${"altText":"y = c\_1e^{3x}+c\_2e^{x}+\frac{1}{3}x^2 +\frac{2}{9}x + \frac{38}{27}"}.
  %[control:button:33fc]{"position":[1,2]}
% Check this result
% Define symbolic variables
syms x C1 C2 y
% Write down the proposed solution
ySoln = C1*exp(3*x)+C2*exp(x) + 1/3*x^2 + 2/9*x+38/27;
% Compute both sides of the differential equation using the proposed solution
LHS = diff(ySoln,x,2)-4*diff(ySoln,x) + 3*ySoln;  % Left-hand side, the statement of the ODE
RHS = x^2-2*x+4;                                  % Right-hand side, the statement of the forcing function
displayFormula(['"The proposed solution is "' "y == ySoln" '"."';...
    '"Plugging into the original ODE we have "' "LHS == RHS" '","'])
% Check if the equality is correct
if isAlways(LHS == RHS)
    displayFormula('"which is true!"')
else
    displayFormula('"so we made a mistake, somewhere."')
end

% % Solve this problem
% syms y(x) x
% diffeq = diff(y,x,2)-4*diff(y,x) + 3*y == x^2-2*x+4
% dsolve(diffeq)
%%
%[text] %[text:anchor:TMP_0749] ![](text:image:6d9b) **Exercise 1.** This exercise is randomized and repeatable.
  %[control:button:1963]{"position":[1,2]}
[diffeq,RHS] = GenerateProblem("poly");
syms A
MyGuess = A;
%%
%[text] a) What is an appropriate guess $y\_p(x)${"altText":"y\_p(x)"} in this case? Use capital letters, `A, B, C, ...` in order as needed to represent undetermined coefficients, and lowercase `x` to represent the independent variable.
%[text] ```matlabCodeExample
%[text] MyGuess = A*x^2+B*x+C    % To represent the general quadratic guess
%[text] ```
syms A B C D E x
coeffs = [A B C D E];
WorkOutGuess = coeffs(1:RHS.power+1)*x.^([RHS.power:-1:0]')
MyGuess = WorkOutGuess;   %[control:editfield:03c1]{"position":[11,23]} %[control:button:0654]{"position":[25,26]}
CheckGuess(MyGuess,RHS,A)
%%
%[text] b) What is the particular solution, $y\_p(x)${"altText":"y\_p(x)"}, after you have solved for all the coefficients? Replace `MyGuess` with the function you computed.
%[text] ![Warning symbol](text:image:82d1) **On precision:** You must have an answer that is exact to be marked correct. If you use decimals, be sure that they are exact (e.g. `0.5` is the same as `1/2`) and not approximate (e.g. `0.3333` is not the same as `1/3`).
syms x
ParticularSolution = dsolve(diffeq.full)-dsolve(diffeq.homog);   %[control:editfield:7027]{"position":[22,62]} %[control:button:6816]{"position":[64,65]}
ypCorrect = CheckParticularSolution(ParticularSolution,diffeq,MyGuess);
%%
%[text] c) What is the homogeneous solution, $y\_h(x)${"altText":"y\_h(x)"}? Use `C1` and `C2` for the general coefficients.
%[text] ![MATLAB icon](text:image:45af) **Pro-tip**. Remember that $e^x${"altText":"e^x"} is `exp(x)` in MATLAB.
syms x C1 C2
HomogSolution = dsolve(diffeq.homog);   %[control:editfield:3669]{"position":[17,37]} %[control:button:0bb3]{"position":[39,40]}
yhCorrect = CheckHomogSolution(HomogSolution,diffeq,MyGuess);
%%
%[text] d) What is the solution $y(x)${"altText":"y(x)"}? Use `C1` and `C2` for the general coefficients.
GeneralSolution = dsolve(diffeq.full);   %[control:editfield:3b98]{"position":[19,38]} %[control:button:1397]{"position":[40,41]}
if ypCorrect && yhCorrect && isAlways(GeneralSolution==ParticularSolution+HomogSolution,"Unknown","false")
    displayFormula(['"That is correct! "' ""; '"The general solution is "' "y == GeneralSolution"])
elseif GeneralSolution == MyGuess
    disp("This is the default, please enter a proposed solution.")
else
    displayFormula(['"That does not appear to be correct. Remember that "' "y = y_p+y_h"])
end
%%
%[text] #### Example: An exponential forcing function
%[text] Varying the forcing function in [Equation $(\\diamondsuit)${"altText":"(\diamondsuit)"}](internal:M_2687), we can solve
%[text]{"align":"center"} $y''-4y'+3y = 2e^{-2x}${"altText":"y''-4y'+3y = 2e^{-2x}"}.
%[text] In this case, derivatives of exponentials are multiples of the original exponential, so the guess for our particular solution can be $y\_p = Ae^{-2x}${"altText":"y\_p = Ae^{-2x}"}. Proceeding as before, $y\_p' = -2Ae^{-2x}${"altText":"y\_p' = -2Ae^{-2x}"} and $y\_p'' = 4Ae^{-2x}${"altText":"y\_p'' = 4Ae^{-2x}"}. Plugging into our equation, we have:
%[text]{"align":"center"} $4Ae^{-2x}-4(-2Ae^{-2x})+3Ae^{-2x} = 2e^{-2x}${"altText":"4Ae^{-2x}-4(-2Ae^{-2x})+3Ae^{-2x} = 2e^{-2x}"}
%[text]{"align":"center"} $4Ae^{-2x}+8Ae^{-2x}+3Ae^{-2x} = 2e^{-2x}${"altText":"4Ae^{-2x}+8Ae^{-2x}+3Ae^{-2x} = 2e^{-2x}"}
%[text]{"align":"center"} $\\left(4A+8A+3A\\right) = 15A = 2${"altText":"\left(4A+8A+3A\right) = 15A = 2"} $\\Rightarrow${"altText":"\Rightarrow"} $A = \\frac{2}{15}${"altText":"A = \frac{2}{15}"}.
%[text] As before, the homogeneous solution is 
%[text]{"align":"center"}  $y\_h = c\_1e^{3x}+c\_2e^{x}${"altText":"y\_h = c\_1e^{3x}+c\_2e^{x}"}, 
%[text] and
%[text]{"align":"center"} $y = c\_1e^{3x}+c\_2e^{x}+\\frac{2}{15}e^{-2x}${"altText":"y = c\_1e^{3x}+c\_2e^{x}+\frac{2}{15}e^{-2x}"}.
%[text] Checking, 
%[text]{"align":"center"} $\\frac{dy}{dx} = 3c\_1e^{3x}+c\_2e^x - \\frac{4}{15}e^{-2x}${"altText":"\frac{dy}{dx} = 3c\_1e^{3x}+c\_2e^x - \frac{4}{15}e^{-2x}"}
%[text]{"align":"center"} $\\frac{d^2y}{dx^2} = 9c\_1e^{3x}+c\_2e^{x}+\\frac{8}{15}e^{-2x}${"altText":"\frac{d^2y}{dx^2} = 9c\_1e^{3x}+c\_2e^{x}+\frac{8}{15}e^{-2x}"}
%[text]{"align":"center"} $\\matrix{\\left(9c\_1e^{3x}+c\_2e^x+\\frac{8}{15}e^{-2x}\\right)-4\\left(3c\_1e^{3x}+c\_2e^x-\\frac{4}{15}e^{-2x}\\right)+3\\left(c\_1e^{3x}+c\_2e^x+\\frac{2}{15}e^{-2x}\\right) &=& (9c\_1-12c\_1+3c\_1)e^{3x}+(c\_2-4c\_2+3c\_2)e^x + \\left(\\frac{8}{15}+\\frac{16}{15}+\\frac{6}{15}\\right)e^{-2x} \\cr\n&=& 0e^{3x}+0e^{x}+\\left(\\frac{30}{15}\\right)e^{-2x} \\cr\n&=& 2e^{-2x}}${"altText":"\matrix{\left(9c\_1e^{3x}+c\_2e^x+\frac{8}{15}e^{-2x}\right)-4\left(3c\_1e^{3x}+c\_2e^x-\frac{4}{15}e^{-2x}\right)+3\left(c\_1e^{3x}+c\_2e^x+\frac{2}{15}e^{-2x}\right) &=& (9c\_1-12c\_1+3c\_1)e^{3x}+(c\_2-4c\_2+3c\_2)e^x + \left(\frac{8}{15}+\frac{16}{15}+\frac{6}{15}\right)e^{-2x} \cr &=& 0e^{3x}+0e^{x}+\left(\frac{30}{15}\right)e^{-2x} \cr &=& 2e^{-2x}}"}
%[text] ![MATLAB icon](text:image:8d0e) **Pro-tip**. There is enough algebra involved in solving these problems that arithmetic mistakes are easy to make. To check your work, you can use symbolic math in MATLAB. The basic commands required are covered in [CheckYourWork](file:.\\CheckYourWorkSoln.m).
%%
%[text] ### Requirement of Linear Independence
%[text] Recall that a second-order linear homogeneous differential equation will always have two linearly independent general solutions. When the method of characteristic equations finds a repeated root, a second linearly independent general solution is formed by multiplying the first solution by the independent variable. We can continue that approach here.
%[text] Observe the results if we force [Equation $(\\diamondsuit)${"altText":"(\diamondsuit)"}](internal:M_2687) by $g(x) = 5e^{3x}${"altText":"g(x) = 5e^{3x}"}.
%[text]{"align":"center"} $y''-4y'+3y = 5e^{3x}${"altText":"y''-4y'+3y = 5e^{3x}"}.
%[text] The guess is $y\_p = Ae^{3x}${"altText":"y\_p = Ae^{3x}"}. Proceeding as before, $y\_p' = 3Ae^{3x}${"altText":"y\_p' = 3Ae^{3x}"} and $y\_p'' = 9Ae^{3x}${"altText":"y\_p'' = 9Ae^{3x}"}. Plugging into our equation, we have:
%[text]{"align":"center"} $9Ae^{3x}-4(3Ae^{3x})+3Ae^{3x} = 5e^{3x}${"altText":"9Ae^{3x}-4(3Ae^{3x})+3Ae^{3x} = 5e^{3x}"}
%[text]{"align":"center"} $9Ae^{3x}-12Ae^{3x}+3Ae^{3x} = 5e^{3x}${"altText":"9Ae^{3x}-12Ae^{3x}+3Ae^{3x} = 5e^{3x}"}
%[text]{"align":"center"} $0 = 5${"altText":"0 = 5"} $\\Rightarrow${"altText":"\Rightarrow"}     Impossible!
%[text] This type of finding indicates that our original guess was incorrect. In this case, the problem is that $Ae^{ex}${"altText":"Ae^{ex}"} is a solution to the homogeneous differential equation, not the forced one. To obtain a potential solution to the *forced* version, we need to find a linearly independent solution where the derivatives include the terms we need: $y\_p = Axe^{3x}${"altText":"y\_p = Axe^{3x}"}. Now $y\_p' = Ae^{3x}+3Axe^{3x}${"altText":"y\_p' = Ae^{3x}+3Axe^{3x}"} and $y\_p'' = 3Ae^{3x}+3Ae^{3x}+9Axe^{3x} = 6Ae^{3x}+9Axe^{3x}${"altText":"y\_p'' = 3Ae^{3x}+3Ae^{3x}+9Axe^{3x} = 6Ae^{3x}+9Axe^{3x}"}. Plugging in, we have:
%[text]{"align":"center"} $6Ae^{3x}+9Axe^{3x}-4\\left(Ae^{3x}+3Axe^{3x}\\right)+3Axe^{3x} = 5e^{3x}${"altText":"6Ae^{3x}+9Axe^{3x}-4\left(Ae^{3x}+3Axe^{3x}\right)+3Axe^{3x} = 5e^{3x}"}
%[text]{"align":"center"} $(6A-4A)e^{3x} + (9Ax-12Ax+3Ax)e^{3x} = 5e^{3x}${"altText":"(6A-4A)e^{3x} + (9Ax-12Ax+3Ax)e^{3x} = 5e^{3x}"}
%[text]{"align":"center"} $2A = 5${"altText":"2A = 5"} $\\Rightarrow${"altText":"\Rightarrow"} $A = \\frac{5}{2}${"altText":"A = \frac{5}{2}"}
%[text]{"align":"center"} $y = c\_1e^{x}+c\_2e^{3x}+\\frac{5}{2}xe^{3x}${"altText":"y = c\_1e^{x}+c\_2e^{3x}+\frac{5}{2}xe^{3x}"}
% % Check my solution
% syms x y(x)
% dsolve(diff(y,x,2)-4*diff(y,x)+3*y == 5*exp(3*x))
%%
%[text] ![](text:image:543c) **Exercise 2.** This exercise is randomized and repeatable.
  %[control:button:6c07]{"position":[1,2]}
[diffeq2,RHS2] = GenerateProblem("exp");
syms A
MyGuess = A;
%%
%[text] a) What is an appropriate guess $y\_p(x)${"altText":"y\_p(x)"} in this case? Use capital letters, `A, B, C, ...` in order as needed to represent undetermined coefficients.
%[text] ```matlabCodeExample
%[text] MyGuess = A*exp(-2*x)    % As shown in the example with g(x) = 2*exp(-2*x) and y_h = C1*exp(x)+C2*exp(3*x)
%[text] MyGuess = A*x*exp(3*x)   % As shown in the example with g(x) = 5*exp(3*x) and y_h = C1*exp(x)+C2*exp(3*x)
%[text] ```
syms A x
WorkOutGuess2 = A*exp(RHS2.beta*x)
MyGuess = WorkOutGuess2;   %[control:editfield:2217]{"position":[11,24]} %[control:button:96ea]{"position":[26,27]}
CheckGuess(MyGuess,RHS2,A)
%%
%[text] b) What is the particular solution, $y\_p(x)${"altText":"y\_p(x)"}, after you have solved for all the coefficients?
syms x
ParticularSolution = simplify(dsolve(diffeq2.full)-dsolve(diffeq2.homog));   %[control:editfield:824c]{"position":[22,74]} %[control:button:327f]{"position":[76,77]}
CheckParticularSolution(ParticularSolution,diffeq2,MyGuess)
%%
%[text] c) What is the homogeneous solution, $y\_h(x)${"altText":"y\_h(x)"}? Use `C1` and `C2` for the general coefficients.
syms x C1 C2
HomogSolution = dsolve(diffeq2.homog);   %[control:editfield:1874]{"position":[17,38]} %[control:button:8912]{"position":[40,41]}
CheckHomogSolution(HomogSolution,diffeq2,MyGuess)
%%
%[text] #### Example: A sinusoidal forcing function
%[text] Varying the forcing function in [Equation $(\\diamondsuit)${"altText":"(\diamondsuit)"}](internal:M_2687), we can solve
%[text]{"align":"center"} $y''-4y'+3y = 2\\cos(5x)${"altText":"y''-4y'+3y = 2\cos(5x)"}.
%[text] Naively, the initial guess for $y\_p${"altText":"y\_p"} appears to be $y\_p = A\\cos(5x)${"altText":"y\_p = A\cos(5x)"}, but then $y\_p' = -5A\\sin(5x)${"altText":"y\_p' = -5A\sin(5x)"} and$y\_p'' = -25A\\cos(5x)${"altText":"y\_p'' = -25A\cos(5x)"}, which give us the undesired result:
%[text]{"align":"center"} $-25A\\cos(5x) +20A\\sin(5x) +3A\\cos(5x) = 2\\cos(5x)${"altText":"-25A\cos(5x) +20A\sin(5x) +3A\cos(5x) = 2\cos(5x)"}
%[text] and thus,
%[text]{"align":"center"} $20A = 0${"altText":"20A = 0"}    and     $-23A = 2${"altText":"-23A = 2"}
%[text] which cannot both be true. As in the [Characteristic Equations](file:.\\CharacteristicEquationsSoln.m:M_195e) discussion of complex roots, because sines and cosines are fundamentally related to one another, if you have a sine, you will almost always require a cosine and vice versa. This means a working guess for this forcing function is $y\_p = A\\cos(5x)+B\\sin(5x)${"altText":"y\_p = A\cos(5x)+B\sin(5x)"}. Then
%[text]{"align":"center"} $y\_p' = -5A\\sin(5x) + 5B\\cos(5x)${"altText":"y\_p' = -5A\sin(5x) + 5B\cos(5x)"} 
%[text]{"align":"center"} $y\_p'' = -25A\\cos(5x)-25B\\sin(5x)${"altText":"y\_p'' = -25A\cos(5x)-25B\sin(5x)"}
%[text] so
%[text]{"align":"center"} $-25A\\cos(5x)-25B\\sin(5x) + 20A\\sin(5x)-20B\\cos(5x)+3A\\cos(5x)+3B\\sin(5x) = 2\\cos(5x)${"altText":"-25A\cos(5x)-25B\sin(5x) + 20A\sin(5x)-20B\cos(5x)+3A\cos(5x)+3B\sin(5x) = 2\cos(5x)"}
%[text]{"align":"center"} $-25A-20B+3A = 2${"altText":"-25A-20B+3A = 2"}              (coefficient of $\\cos(5x)${"altText":"\cos(5x)"})
%[text]{"align":"center"} $-25B+20A+3B = 0${"altText":"-25B+20A+3B = 0"}              (coefficient of $\\sin(5x)${"altText":"\sin(5x)"})
%[text]{"align":"center"} $-22B+20A = 0 \\Rightarrow A = \\frac{22}{20}B = \\frac{11}{10}B${"altText":"-22B+20A = 0 \Rightarrow A = \frac{22}{20}B = \frac{11}{10}B"}
%[text]{"align":"center"} $-22\\left(\\frac{11}{10}B\\right) -20B = 2 \\Rightarrow -\\frac{442}{10}B = 2${"altText":"-22\left(\frac{11}{10}B\right) -20B = 2 \Rightarrow -\frac{442}{10}B = 2"}
%[text]{"align":"center"} $B = -\\frac{10}{221}${"altText":"B = -\frac{10}{221}"}
%[text]{"align":"center"} $A = -\\frac{11}{221}${"altText":"A = -\frac{11}{221}"}
%[text]{"align":"center"} $y = c\_1e^{x}+c\_2e^{3x}-\\frac{11}{221}\\cos(5x)-\\frac{10}{221}\\sin(5x)${"altText":"y = c\_1e^{x}+c\_2e^{3x}-\frac{11}{221}\cos(5x)-\frac{10}{221}\sin(5x)"}
% % Check that ySoln solves the ODE
% ySoln = C1*exp(x)+C2*exp(3*x)-11/221*cos(5*x)-10/221*sin(5*x);
% diff(ySoln,x,2)-4*diff(ySoln,x)+3*ySoln
%%
%[text] ![](text:image:76d0) **Exercise 3.** This exercise is randomized and repeatable.
  %[control:button:84b8]{"position":[1,2]}
[diffeq3,RHS3] = GenerateProblem("sincos");
syms A
MyGuess = A;
%%
%[text] a) What is an appropriate guess $y\_p(x)${"altText":"y\_p(x)"} in this case? Use capital letters, `A, B, C, ...` in order as needed to represent undetermined coefficients.
%[text] ```matlabCodeExample
%[text] MyGuess = A*cos(5*x)+B*sin(5*x)   % The guess when g(x) = 2*cos(5*x)
%[text] ```
syms A B C D E x
alpha3 = abs(RHS3.alpha);
WorkOutGuess3 = A*sin(alpha3*x)+B*cos(alpha3*x)
MyGuess = WorkOutGuess3;   %[control:editfield:6835]{"position":[11,24]} %[control:button:7eb2]{"position":[26,27]}
CheckGuess(MyGuess,RHS3,A)
%%
%[text] b) What is the particular solution, $y\_p(x)${"altText":"y\_p(x)"}, after you have solved for all the coefficients?
syms x
ParticularSolution = simplify(dsolve(diffeq3.full)-dsolve(diffeq3.homog));   %[control:editfield:39af]{"position":[22,74]} %[control:button:3345]{"position":[76,77]}
CheckParticularSolution(ParticularSolution,diffeq3,MyGuess)
%%
%[text] c) What is the homogeneous solution, $y\_h(x)${"altText":"y\_h(x)"}? Use `C1` and `C2` for the general coefficients.
syms x C1 C2
HomogSolution = dsolve(diffeq3.homog);   %[control:editfield:865f]{"position":[17,38]} %[control:button:289d]{"position":[40,41]}
CheckHomogSolution(HomogSolution,diffeq3,MyGuess)
%%
%[text] ## How to Use The Method of Undetermined Coefficients
%[text] **Step 1:** Find the homogeneous solution $y\_h${"altText":"y\_h"} by solving $ay'' + by' + cy = 0${"altText":"ay'' + by' + cy = 0"} using [characteristic equations](file:.\\CharacteristicEquationsSoln.m).
%[text] **Step 2:** Based on the form of $g(x)${"altText":"g(x)"} and $y\_h${"altText":"y\_h"}, assume a form for the particular solution $y\_p${"altText":"y\_p"}.
%[text:table]
%[text] | **Types in** $g(x)${"altText":"g(x)"} | Fundamental guess |
%[text] | --- | --- |
%[text] | **Polynomial** | $y\_p = x^sP\_n(x)${"altText":"y\_p = x^sP\_n(x)"} |
%[text] | **Polynomial** $\\times${"altText":"\times"} **Exponential** | $y\_p(x) = x^sP\_n(x) e^{\\beta x}${"altText":"y\_p(x) = x^sP\_n(x) e^{\beta x}"}  |
%[text] | **Polynomial** $\\times${"altText":"\times"} **Sinusoid** | $y\_p(x) = x^s\\left(P\_n(x)\\cos(\\beta x) + Q\_n(x)\\sin(\\beta x))${"altText":"y\_p(x) = x^s\left(P\_n(x)\cos(\beta x) + Q\_n(x)\sin(\beta x))"} |
%[text] | **Sinusoid** $\\times${"altText":"\times"} **Exponential** | $y\_p(x) = x^s\\left(A\\cos(\\beta x)+C\\sin(\\beta x)\\right)e^{\\alpha x}${"altText":"y\_p(x) = x^s\left(A\cos(\beta x)+C\sin(\beta x)\right)e^{\alpha x}"} |
%[text] | **Polynomial** $\\times${"altText":"\times"} **Sinusoidal** $\\times${"altText":"\times"} **Exponential** | $y\_p(x) = x^s\\left(P\_n(x)\\cos(\\beta x) + Q\_n(x)\\sin(\\beta x)\\right)e^{\\alpha x}${"altText":"y\_p(x) = x^s\left(P\_n(x)\cos(\beta x) + Q\_n(x)\sin(\beta x)\right)e^{\alpha x}"} |
%[text:table]
%[text] Recall that $P\_n = A\_nx^n+A\_{n-1}x^{n-1}+\\cdots + A\_1x+A\_0${"altText":"P\_n = A\_nx^n+A\_{n-1}x^{n-1}+\cdots + A\_1x+A\_0"} and $Q\_n = B\_nx^n+B\_{n-1}x^{n-1}+\\cdots + B\_1x+B\_0${"altText":"Q\_n = B\_nx^n+B\_{n-1}x^{n-1}+\cdots + B\_1x+B\_0"} are general polynomials of degree $n${"altText":"n"}, and $\\alpha${"altText":"\alpha"} and $\\beta${"altText":"\beta"} are fixed constants from the original forcing function $g${"altText":"g"}. The power $s${"altText":"s"} is determined by terms in $y\_h${"altText":"y\_h"} that need to be avoided in $y\_p${"altText":"y\_p"} to preserve linear independence. The value of $s${"altText":"s"} will be 0 if there is no overlap between the guess $y\_p${"altText":"y\_p"} and the homogeneous solution $y\_h${"altText":"y\_h"}. 
%[text] If $g(x)${"altText":"g(x)"} doesn't have one of these forms, use other methods like [variation of parameters](https://en.wikipedia.org/wiki/Variation_of_parameters) or [numerical approximation](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Numerical-Methods-with-Applications&project=NumericalMethods.prj&file=NumericalODEs.mlx).
%[text] **Step 3:** Substitute $y\_p${"altText":"y\_p"} and its derivatives into the original equation, $ay\_p'' + by\_p' + cy\_p = g${"altText":"ay\_p'' + by\_p' + cy\_p = g"}.
%[text] **Step 4:** Solve for the undetermined coefficients by equating coefficients of like terms.
%[text] **Step 5:** Write the general solution $y = y\_h + y\_p${"altText":"y = y\_h + y\_p"}.
%[text:table]{"columnWidths":[130,181,-1,272],"ignoreHeader":true}
%[text] | **If** $g(x)${"altText":"g(x)"} **involves...** |  | **The guess form will include:** |  |
%[text] | --- | --- | --- | --- |
%[text] | <p align="center">$g(x) = \\alpha x^n${"altText":"g(x) = \alpha x^n"}</p> | an $n^{\\text{th}}${"altText":"n^{\text{th}}"} degree polynomial | <p align="center">$\\matrix{ y\_p(x)  &= & P\_n(x) \\cr & = & A\_n x^n + A\_{n-1}x^{n-1} \\cr &&+\\cdots +  A\_1 x + A\_0} ${"altText":"y\_p(x) = P\_n(x) = A\_n x^n + A\_{n-1}x^{n-1}+\cdots + A\_1 x + A\_0"}</p> | an arbitrary $n^{\\text{th}}${"altText":"n^{\text{th}}"} degree polynomial |
%[text] | <p align="center">$g(x) = \\alpha e^{\\beta x}${"altText":"g(x) = \alpha e^{\beta x}"}</p> | exponential with argument $\\beta x${"altText":"\beta x"} | <p align="center">$y\_p(x) = Ae^{\\beta x}${"altText":"y\_p(x) = Ae^{\beta x}"} </p> | an arbitrary polynomial times the original exponential of $\\beta x${"altText":"\beta x"} |
%[text] | <p align="center">$g(x) = \\alpha\_1 \\sin(\\beta x) + \\alpha\_2\\cos(\\beta x)${"altText":"g(x) = \alpha\_1 \sin(\beta x) + \alpha\_2\cos(\beta x)"}</p> | a sine or a cosine or a sum of a sine and a cosine with argument $\\beta x${"altText":"\beta x"} | <p align="center">$y\_p(x) = A\\cos(\\beta x) + B\\sin(\\beta x)${"altText":"y\_p(x) = A\cos(\beta x) + B\sin(\beta x)"}</p> | a linear combination of arbitrary polynomials times both the sine and the cosine of $\\beta x${"altText":"\beta x"} |
%[text:table]
%[text] %[text:anchor:TMP_6aee] ![Warning symbol](text:image:9e80) **Modification Rule**
%[text] If any term in the assumed form for $y\_p${"altText":"y\_p"} is also a solution to the homogeneous equation, multiply the guessed form by $x${"altText":"x"} (or $x^2${"altText":"x^2"} if necessary) until no term coincides with a homogeneous solution.
%%
%[text] ### Step-by-Step Example
%[text] Consider the differential equation: $y'' - 3y' + 2y = e^x${"altText":"y'' - 3y' + 2y = e^x"}
%[text] **Step 1:** Find the homogeneous solution.
%[text]{"align":"center"} Characteristic equation: $r^2 - 3r + 2 = 0${"altText":"r^2 - 3r + 2 = 0"}.
%[text]{"align":"center"} Factoring: $(r-1)(r-2) = 0${"altText":"(r-1)(r-2) = 0"}, 
%[text]{"align":"center"} so $r\_1 = 1${"altText":"r\_1 = 1"}, $r\_2 = 2${"altText":"r\_2 = 2"}
%[text]{"align":"center"} Homogeneous solution: $y\_h = c\_1 e^x + c\_2 e^{2x}${"altText":"y\_h = c\_1 e^x + c\_2 e^{2x}"}
%[text] **Step 2:** Assume a form for the particular solution.
%[text]{"align":"center"} Since $g(x) = e^x${"altText":"g(x) = e^x"} and $e^x${"altText":"e^x"} appears in $y\_h${"altText":"y\_h"}, 
%[text]{"align":"center"} we use the modification rule and guess that: $y\_p = Axe^x${"altText":"y\_p = Axe^x"}
%[text] **Step 3:** Find derivatives and substitute.
%[text]{"align":"center"} $y\_p' = A(e^x + xe^x) = Ae^x(1 + x)${"altText":"y\_p' = A(e^x + xe^x) = Ae^x(1 + x)"}
%[text]{"align":"center"} $y\_p'' = Ae^x(1 + x) + Ae^x = Ae^x(2 + x)${"altText":"y\_p'' = Ae^x(1 + x) + Ae^x = Ae^x(2 + x)"}
%[text] Substituting into the equation:
%[text]{"align":"center"} $Ae^x(2 + x) - 3Ae^x(1 + x) + 2Axe^x = e^x${"altText":"Ae^x(2 + x) - 3Ae^x(1 + x) + 2Axe^x = e^x"}
%[text] **Step 4:** Solve for coefficients.
%[text]{"align":"center"} Simplifying: $Ae^x(2 + x - 3 - 3x + 2x) = e^x${"altText":"Ae^x(2 + x - 3 - 3x + 2x) = e^x"}
%[text]{"align":"center"} $Ae^x(-1) = e^x${"altText":"Ae^x(-1) = e^x"}, so $A = -1${"altText":"A = -1"}
%[text] **Step 5:** Write the general solution.
%[text]{"align":"center"} $y = c\_1 e^x + c\_2 e^{2x} - xe^x${"altText":"y = c\_1 e^x + c\_2 e^{2x} - xe^x"}
%%
%[text] #### Practice with Undetermined Coefficients
%[text] ![](text:image:8db4) **Exercise 4.** This exercise is randomized and repeatable.
  %[control:button:82e4]{"position":[1,2]}
[diffeq4,RHS4] = GenerateProblem("any",randi(2));
MyGuess = A;
%%
%[text] a) What is an appropriate guess $y\_p(x)${"altText":"y\_p(x)"} in this case? Use capital letters, `A, B, C, ...` in order as needed to represent undetermined coefficients.
syms A B C D E F G H I J K L M x
coeffs = [A B C D E F G H I J K L M];
idx = RHS4.power + 1;
poly1 = coeffs(1:idx)*x.^([RHS4.power:-1:0]');
poly2 = coeffs(idx+1:2*idx)*x.^([RHS4.power:-1:0]');
WorkOutGuess4 = exp(RHS4.beta*x)*(poly1*cos(RHS4.alpha*x)+poly2*sin(RHS4.alpha*x))*x^RHS4.overlap
MyGuess = WorkOutGuess4;   %[control:editfield:2bf3]{"position":[11,24]} %[control:button:0fe9]{"position":[26,27]}
CheckGuess(MyGuess,RHS4,A)
%%
%[text] b) What is the particular solution, $y\_p(x)${"altText":"y\_p(x)"}, after you have solved for all the coefficients?
syms x
ParticularSolution = simplify(dsolve(diffeq4.full)-dsolve(diffeq4.homog));   %[control:editfield:6274]{"position":[22,74]} %[control:button:74ab]{"position":[76,77]}
CheckParticularSolution(ParticularSolution,diffeq4,MyGuess)
%%
%[text] c) What is the homogeneous solution, $y\_h(x)${"altText":"y\_h(x)"}? Use `C1` and `C2` for the general coefficients.
syms x c1 c2
HomogSolution = dsolve(diffeq4.homog);   %[control:editfield:7aac]{"position":[17,38]} %[control:button:9f23]{"position":[40,41]}
CheckHomogSolution(HomogSolution,diffeq4,MyGuess)
%%
%[text] %[text:anchor:TMP_459e] As noted in the introduction, many standard physical models involve second-order linear ODEs with relatively simple forcing functions. From a mathematical perspective, they are all the same, but the systems they describe can be quite different to build. In math courses, you will get damped harmonic oscillators, driven RLC circuits, and chemical bonds offered interchangeably because the mathematical model of each is a second-order linear ODE. 
%[text] ## ![](text:image:7c6b) Application: Forced Harmonic Oscillator with Damping
%[text]{"align":"center"} ![](text:image:694e)
%[text] The motion of a damped harmonic oscillator is described by:
%[text]{"align":"center"} $m\\ddot{x} + c\\dot{x} + kx = F\_0 \\cos(\\omega t)${"altText":"m\ddot{x} + c\dot{x} + kx = F\_0 \cos(\omega t)"}.
%[text] where:
%[text] - $x${"altText":"x"} = displacement as a function of time
%[text] - $m${"altText":"m"} = mass
%[text] - $c${"altText":"c"} = damping coefficient
%[text] - $k${"altText":"k"} = spring constant
%[text] - $F\_0${"altText":"F\_0"} = amplitude of driving force
%[text] - $\\omega${"altText":"\omega"} = driving angular frequency \
%[text] ### **Steady-State Solution**
%[text] The displacement in steady state is:
%[text]{"align":"center"} $x(t) = A \\cos(\\omega t - \\phi)${"altText":"x(t) = A \cos(\omega t - \phi)"}
%[text] with a phase shift
%[text]{"align":"center"} $\\phi = \\arctan\\left(\\frac{2\\zeta \\omega \\omega\_0}{\\omega\_0^2-\\omega^2}\\right)${"altText":"\phi = \arctan\left(\frac{2\zeta \omega \omega\_0}{\omega\_0^2-\omega^2}\right)"}
%[text] and an amplitude:
%[text]{"align":"center"} $A = \\frac{F\_0/m}{\\sqrt{(\\omega\_0^2 - \\omega^2)^2 + (2\\zeta\\omega\\omega\_0)^2}}${"altText":"A = \frac{F\_0\/m}{\sqrt{(\omega\_0^2 - \omega^2)^2 + (2\zeta\omega\omega\_0)^2}}"}
%[text] where:
%[text] - $\\omega\_0 = \\sqrt{\\frac{k}{m}}${"altText":"\omega\_0 = \sqrt{\frac{k}{m}}"}   is the natural frequency,
%[text] - $\\zeta = \\frac{c}{2\\sqrt{mk}}${"altText":"\zeta = \frac{c}{2\sqrt{mk}}"} is the damping ratio. \
%[text] ### Homogeneous Solution
%[text] The homogeneous solution in the underdamped case is 
%[text]{"align":"center"} $x\_h(t) = e^{-\\zeta \\omega\_0 t}\\left(x(0)\\cos(\\omega\_dt) + \\frac{\\dot{x}(0)+\\zeta\\omega\_0x(0)}{\\omega\_d}\\sin(\\omega\_d t)\\right)${"altText":"x\_h(t) = e^{-\zeta \omega\_0 t}\left(x(0)\cos(\omega\_dt) + \frac{\dot{x}(0)+\zeta\omega\_0x(0)}{\omega\_d}\sin(\omega\_d t)\right)"} 
%[text] where 
%[text] - $x(0)${"altText":"x(0)"} is the initial position,
%[text] - $\\dot{x}(0)${"altText":"\dot{x}(0)"} is the initial velocity,
%[text] - $\\omega\_d = \\omega\_0\\sqrt{1-\\zeta^2}${"altText":"\omega\_d = \omega\_0\sqrt{1-\zeta^2}"} is the damped natural frequency. \
%[text] ### Complete Solution
%[text] The full solution is 
%[text]{"align":"center"} %[text:anchor:M_68a8] $x(t) = e^{-\\zeta \\omega\_0 t}\\left(x(0)\\cos(\\omega\_dt) + \\frac{\\dot{x}(0)+\\zeta\\omega\_0x(0)}{\\omega\_d}\\sin(\\omega\_d t)\\right) + \\frac{F\_0/m}{\\sqrt{(\\omega\_0^2 - \\omega^2)^2 + (2\\zeta\\omega\\omega\_0)^2}}\\cos\\left(\\omega t- \\arctan\\left(\\frac{2\\zeta \\omega \\omega\_0}{\\omega\_0^2-\\omega^2}\\right)\\right)${"altText":"x(t) = e^{-\zeta \omega\_0 t}\left(x(0)\cos(\omega\_dt) + \frac{\dot{x}(0)+\zeta\omega\_0x(0)}{\omega\_d}\sin(\omega\_d t)\right) + \frac{F\_0\/m}{\sqrt{(\omega\_0^2 - \omega^2)^2 + (2\zeta\omega\omega\_0)^2}}\cos\left(\omega t- \arctan\left(\frac{2\zeta \omega \omega\_0}{\omega\_0^2-\omega^2}\right)\right)"}.
%[text] ![](text:image:168c) **Exercise 5.**
%[text] Prove that the complete solution [presented above](internal:M_68a8) can be computed using the method of undetermined coefficients with a guess of $x\_p = A\\cos(\\omega t - \\phi)${"altText":"x\_p = A\cos(\omega t - \phi)"}.
%[text] **Solution:**
%[text] Recall that $\\cos(\\omega t - \\phi) = \\cos(\\omega t)\\cos(\\phi)+\\sin(\\omega t)\\sin(\\phi),${"altText":"\cos(\omega t - \phi) = \cos(\omega t)\cos(\phi)+\sin(\omega t)\sin(\phi),"}
%[text]{"align":"center"} $x\_p = A(\\cos(\\omega t)\\cos(\\phi)+\\sin(\\omega t)\\sin(\\phi))${"altText":"x\_p = A(\cos(\omega t)\cos(\phi)+\sin(\omega t)\sin(\phi))"}
%[text]{"align":"center"} $\\dot{x}\_p = -\\omega A(\\sin(\\omega t)\\cos(\\phi)+\\cos(\\omega t)\\sin(\\phi))${"altText":"\dot{x}\_p = -\omega A(\sin(\omega t)\cos(\phi)+\cos(\omega t)\sin(\phi))"}
%[text]{"align":"center"} $\\ddot{x}\_p = -\\omega^2A(\\cos(\\omega t)\\cos(\\phi)+\\sin(\\omega t)\\sin(\\phi)) = -\\omega^2 x\_p${"altText":"\ddot{x}\_p = -\omega^2A(\cos(\omega t)\cos(\phi)+\sin(\omega t)\sin(\phi)) = -\omega^2 x\_p"}
%[text] Plugging in,
%[text]{"align":"center"} $-\\omega^2A(\\cos(\\omega t)\\cos(\\phi)+\\sin(\\omega t) \\sin(\\phi)) + 2\\zeta \\omega\_0\\omega A(-\\sin(\\omega t)\\cos(\\phi)+\\cos(\\omega t)\\sin(\\phi)) + \\omega\_0^2A(\\cos(\\omega t)\\cos(\\phi)+\\sin(\\omega t) \\sin(\\phi)) +  = \\frac{F\_0}{m}\\cos(\\omega t)${"altText":"-\omega^2A(\cos(\omega t)\cos(\phi)+\sin(\omega t) \sin(\phi)) + 2\zeta \omega\_0\omega A(-\sin(\omega t)\cos(\phi)+\cos(\omega t)\sin(\phi)) + \omega\_0^2A(\cos(\omega t)\cos(\phi)+\sin(\omega t) \sin(\phi)) +  = \frac{F\_0}{m}\cos(\omega t)"}
%[text] Coefficient of $\\sin(\\omega t)${"altText":"\sin(\omega t)"}: $A\\left((\\omega\_0^2-\\omega^2)\\sin(\\phi) - 2\\zeta \\omega\_0 \\omega \\cos(\\phi)\\right) = 0${"altText":"A\left((\omega\_0^2-\omega^2)\sin(\phi) - 2\zeta \omega\_0 \omega \cos(\phi)\right) = 0"}
%[text] Coefficient of $\\cos(\\omega t)${"altText":"\cos(\omega t)"}: $A\\left((\\omega\_0^2-\\omega^2)\\cos(\\phi)+2\\zeta \\omega\_0\\omega\\sin(\\phi)\\right) = \\frac{F\_0}{m}${"altText":"A\left((\omega\_0^2-\omega^2)\cos(\phi)+2\zeta \omega\_0\omega\sin(\phi)\right) = \frac{F\_0}{m}"}
%[text] This means that $A \\neq 0${"altText":"A \neq 0"}, so $(\\omega\_0^2-\\omega^2)\\sin(\\phi) - 2\\zeta \\omega\_0 \\omega \\cos(\\phi) = 0${"altText":"(\omega\_0^2-\omega^2)\sin(\phi) - 2\zeta \omega\_0 \omega \cos(\phi) = 0"}, which means that $\\frac{\\sin(\\phi)}{\\cos(\\phi)} = \\tan(\\phi) = \\frac{2\\zeta \\omega\_0\\omega}{\\omega\_0^2-\\omega^2}${"altText":"\frac{\sin(\phi)}{\cos(\phi)} = \tan(\phi) = \frac{2\zeta \omega\_0\omega}{\omega\_0^2-\omega^2}"} or, in other words, $\\phi = \\arctan\\left(\\frac{2\\zeta \\omega\_0 \\omega}{\\omega\_0^2-\\omega^2}\\right)${"altText":"\phi = \arctan\left(\frac{2\zeta \omega\_0 \omega}{\omega\_0^2-\omega^2}\right)"}. Then using the second equation to solve for $A${"altText":"A"}, and by the trigonometric identities $\\sin(\\arctan(\\theta)) = \\frac{\\theta}{\\sqrt{1+\\theta^2}}${"altText":"\sin(\arctan(\theta)) = \frac{\theta}{\sqrt{1+\theta^2}}"} and $\\cos(\\arctan(\\theta)) = \\frac{1}{\\sqrt{1+\\theta^2}}${"altText":"\cos(\arctan(\theta)) = \frac{1}{\sqrt{1+\theta^2}}"},
%[text]{"align":"center"} $\\matrix{A &=& \\frac{F\_0/m}{(\\omega\_0^2-\\omega^2)\\cos(\\phi) + 2\\zeta \\omega\_0\\omega \\sin(\\phi) \\cr &=& \\frac{F\_0/m}{(\\omega\_0^2-\\omega^2)\\frac{1}{\\sqrt{1+\\left(\\frac{2\\zeta\\omega\_0\\omega}{\\omega\_0^2-\\omega^2}\\right)^2}} + 2\\zeta \\omega\_0\\omega \\frac{\\frac{2\\zeta\\omega\_0\\omega}{\\omega\_0^2-\\omega^2}}{\\sqrt{1+\\left(\\frac{2\\zeta\\omega\_0\\omega}{\\omega\_0^2-\\omega^2}\\right)^2}}}\\left(\\frac{1}{\\frac{\\omega\_0^2-\\omega^2}{\\omega\_0^2-\\omega^2}}\\right) \\cr\n&=&\\frac{F\_0/m}{\\frac{(\\omega\_0^2-\\omega^2)^2 + (2\\zeta \\omega\_0\\omega)^2}{\\sqrt{(\\omega\_0^2-\\omega^2)^2+\\left(2\\zeta\\omega\_0\\omega\\right)^2}}}\\cr\n&=&\\frac{F\_0/m}{\\sqrt{(\\omega\_0^2-\\omega^2)^2+\\left(2\\zeta\\omega\_0\\omega\\right)^2}}}${"altText":"\matrix{A &=& \frac{F\_0\/m}{(\omega\_0^2-\omega^2)\cos(\phi) + 2\zeta \omega\_0\omega \sin(\phi) \cr &=& \frac{F\_0\/m}{(\omega\_0^2-\omega^2)\frac{1}{\sqrt{1+\left(\frac{2\zeta\omega\_0\omega}{\omega\_0^2-\omega^2}\right)^2}} + 2\zeta \omega\_0\omega \frac{\frac{2\zeta\omega\_0\omega}{\omega\_0^2-\omega^2}}{\sqrt{1+\left(\frac{2\zeta\omega\_0\omega}{\omega\_0^2-\omega^2}\right)^2}}}\left(\frac{1}{\frac{\omega\_0^2-\omega^2}{\omega\_0^2-\omega^2}}\right) \cr &=&\frac{F\_0\/m}{\frac{(\omega\_0^2-\omega^2)^2 + (2\zeta \omega\_0\omega)^2}{\sqrt{(\omega\_0^2-\omega^2)^2+\left(2\zeta\omega\_0\omega\right)^2}}}\cr &=&\frac{F\_0\/m}{\sqrt{(\omega\_0^2-\omega^2)^2+\left(2\zeta\omega\_0\omega\right)^2}}}"}
%%
%[text] ### Pendulum Simulation with Resonance
%[text] Resonance in a **forced harmonic oscillator with damping** occurs when the driving frequency of an external periodic force is close to the system’s natural frequency, but damping modifies the behavior significantly compared to an ideal undamped system. 
%[text] ![](text:image:1ae4) **Exercise 6.** In an idealized system with $c=0${"altText":"c=0"}, what is the particular solution when $\\omega = \\omega\_0 = \\sqrt{\\frac{k}{m}}${"altText":"\omega = \omega\_0 = \sqrt{\frac{k}{m}}"}? You can use the values `omega, m, k, t,` and `F_0`.
%[text] **Solution:**
%[text] When $c=0${"altText":"c=0"} we have $m\\ddot{x} + kx = F\_0 \\cos\\left(\\sqrt{\\frac{k}{m}} t\\right)${"altText":"m\ddot{x} + kx = F\_0 \cos\left(\sqrt{\frac{k}{m}} t\right)"}, or in other words, $\\ddot{x} + \\omega\_0^2x = \\frac{F\_0}{m}\\cos(\\omega\_0 t)${"altText":"\ddot{x} + \omega\_0^2x = \frac{F\_0}{m}\cos(\omega\_0 t)"}. Then $x\_h(t) = c\_1\\cos(\\omega\_0 t) + c\_2\\sin(\\omega\_0t)${"altText":"x\_h(t) = c\_1\cos(\omega\_0 t) + c\_2\sin(\omega\_0t)"} and $x\_p(t) = At\\cos(\\omega\_0t)+Bt\\sin(\\omega\_0 t)${"altText":"x\_p(t) = At\cos(\omega\_0t)+Bt\sin(\omega\_0 t)"}. Solving, we have
%[text] $\\dot{x}\_p(t) = A\\cos(\\omega\_0t)+B\\sin(\\omega\_0t) -At\\omega\_0\\sin(\\omega\_0t) +Bt\\omega\_0\\cos(\\omega\_0t)${"altText":"\dot{x}\_p(t) = A\cos(\omega\_0t)+B\sin(\omega\_0t) -At\omega\_0\sin(\omega\_0t) +Bt\omega\_0\cos(\omega\_0t)"}
%[text] $\\ddot{x}\_p(t) = -2A\\omega\_0\\sin(\\omega\_0t) + 2B\\omega\_0\\cos(\\omega\_0t) -At\\omega\_0^2\\cos(\\omega\_0t)-Bt\\omega\_0^2\\sin(\\omega\_0t)${"altText":"\ddot{x}\_p(t) = -2A\omega\_0\sin(\omega\_0t) + 2B\omega\_0\cos(\omega\_0t) -At\omega\_0^2\cos(\omega\_0t)-Bt\omega\_0^2\sin(\omega\_0t)"}
%[text] And so, 
%[text] $-2A\\omega\_0\\sin(\\omega\_0t) +2B\\omega\_0\\cos(\\omega\_0t) = \\frac{F\_0}{m}\\cos(\\omega\_0t)${"altText":"-2A\omega\_0\sin(\omega\_0t) +2B\omega\_0\cos(\omega\_0t) = \frac{F\_0}{m}\cos(\omega\_0t)"}.
%[text] This means that $A = 0${"altText":"A = 0"} and $B = \\frac{F\_0}{2m\\omega\_0} = \\frac{F\_0}{2\\sqrt{mk}}${"altText":"B = \frac{F\_0}{2m\omega\_0} = \frac{F\_0}{2\sqrt{mk}}"}, so the steady-state solution is $x\_p(t) = \\frac{F\_0}{2\\sqrt{mk}}t\\sin(\\omega\_0 t)=\\frac{F\_0}{2\\sqrt{mk}}t\\sin(\\omega t${"altText":"x\_p(t) = \frac{F\_0}{2\sqrt{mk}}t\sin(\omega\_0 t)=\frac{F\_0}{2\sqrt{mk}}t\sin(\omega t"}).
syms F_0 m k t omega 
xp =  F_0/2/sqrt(m*k)*t*sin(omega*t);    %[control:editfield:0aad]{"position":[6,37]} %[control:button:1c7e]{"position":[40,41]}
CheckExercise6(xp)
%[text] %[text:anchor:TMP_699d] ![](text:image:1945) **Try**. Explore how different parameters affect pendulum motion:
%%
c = 0.22; %[control:slider:7474]{"position":[5,9]}
omega0 = 1.8; %[control:slider:189b]{"position":[10,13]}
F_0 = 0.5; %[control:slider:3a3a]{"position":[7,10]}
omega = 3.6; %[control:slider:19b4]{"position":[9,12]}
theta0 = -0.3; %[control:slider:0a21]{"position":[10,14]}
thetaPrime0 = 0; %[control:slider:4261]{"position":[15,16]}
PlotPendulum(c, omega0, F_0, omega, theta0, thetaPrime0,0); %[control:dropdown:6233]{"position":[57,58]}
%%
%[text] ## Application: Chemical Bonds
%[text] Chemical bonds between atoms behave like springs connecting masses. The amount of vibration is a measure of the energy (temperature!) of the molecule. When additional energy is applied—typically via electromagnetic radiation such as infrared (IR) light—these bonds can change the frequency of oscillation. This oscillation is known as **molecular vibration**, and it occurs in discrete energy levels governed by quantum mechanics. One simple approach is to model the stretching of a diatomic molecular bond as a harmonic oscillator subject to external perturbations. This starts with Hooke's Law: $\\mu\\ddot{x} = -kx${"altText":"\mu\ddot{x} = -kx"} where $k${"altText":"k"} is the bond's force constant, $\\mu = \\frac{m\_1m\_2}{m\_1+m\_2}${"altText":"\mu = \frac{m\_1m\_2}{m\_1+m\_2}"} is the reduced mass of the two atoms. and $x${"altText":"x"} is the displacement from equilibrium. Consider a diatomic molecule where the bond length oscillates about its equilibrium position:
%[text]{"align":"center"} $x'' + \\omega^2 x = F(t)${"altText":"x'' + \omega^2 x = F(t)"}
%[text] %[text:anchor:M_3fdd] where $\\omega^2 = \\frac{k}{\\mu}${"altText":"\omega^2 = \frac{k}{\mu}"} and $F(t)${"altText":"F(t)"} is an external forcing function. When a molecule is exposed to an external electromagnetic field (e.g., IR light), the field can **excite vibrational modes** if its frequency matches the energy gap between vibrational states. This is called resonant absorption.
%%
%[text] ### Example: Periodic External Force
%[text]{"align":"center"} ![](text:image:090e)
%[text] Consider a molecule of hydrogen chloride, HCl.  The mass of a hydrogen atom is approximately $1.67\\times 10^{-27}\~\\text{kg}${"altText":"1.67\times 10^{-27}\~\text{kg}"} and the mass of a chlorine atom is approximately $5.90\\times 10^{-26}\~\\text{kg}${"altText":"5.90\times 10^{-26}\~\text{kg}"}. We can model this diatomic molecule as a harmonic oscillator with a reduced mass of $\\mu = 1.62\\times 10^{-27}\~\\text{kg}${"altText":"\mu = 1.62\times 10^{-27}\~\text{kg}"}. The resting bond length, $r\_0${"altText":"r\_0"}, is measured at approximately $1.275\~\\AA${"altText":"1.275\~\AA"}. Its vibrational zero-point energy is $1443.0 \\text{ cm}^{-1}${"altText":"1443.0 \text{ cm}^{-1}"} and the fundamental frequency is $\\tilde{\\nu} = 2886 \\text{ cm}^{-1}${"altText":"\tilde{\nu} = 2886 \text{ cm}^{-1}"}. [\[1,](internal:M_320f)[2\]](internal:M_48c2) 
%[text] Converting the wavenumber to an angular frequency, we have:
%[text]{"align":"center"} $\\omega\_0 = 2\\pi c \\tilde{\\nu} \~ \\text{rad}/\\text{s}${"altText":"\omega\_0 = 2\pi c \tilde{\nu} \~ \text{rad}\/\text{s}"}
%[text] with $\\tilde{\\nu} = 2886 \\text{ cm}^{-1}${"altText":"\tilde{\nu} = 2886 \text{ cm}^{-1}"} and $c = 3.00\\times 10^{10} \~ \\text{cm}/\\text{s}${"altText":"c = 3.00\times 10^{10} \~ \text{cm}\/\text{s}"} as the speed of light. Plugging in the values, this gives us 
%[text]{"align":"center"} $\\matrix{\\omega\_0 &=& 2\\pi\\times 2886 \\times 3.00\\times 10^{10} \~\\text{rad}/\\text{s} \\cr &\\approx& 5.42\\times 10^{14} \~\\text{rad}/\\text{s}}${"altText":"\matrix{\omega\_0 &=& 2\pi\times 2886 \times 3.00\times 10^{10} \~\text{rad}\/\text{s} \cr &\approx& 5.42\times 10^{14} \~\text{rad}\/\text{s}}"}.
%[text] ![](text:image:848a) **Exercise 7.** Solve for [$k${"altText":"k"}](internal:M_3fdd) in this model. Keep an appropriate number of significant digits.
%[text] **Solution:** Note that $\\mu \\approx 1.62\\times 10^{-27} \~\\text{kg}${"altText":"\mu \approx 1.62\times 10^{-27} \~\text{kg}"} and $\\omega\_0 = \\sqrt{\\frac{k}{\\mu}}${"altText":"\omega\_0 = \sqrt{\frac{k}{\mu}}"} so $k = \\mu\\omega\_0^2 \\approx \\left(1.62\\times 10^{-27}\\right)\\left(5.42\\times 10^{14}\\right)^2 \\approx 476 \~\\text{N}/\\text{m}${"altText":"k = \mu\omega\_0^2 \approx \left(1.62\times 10^{-27}\right)\left(5.42\times 10^{14}\right)^2 \approx 476 \~\text{N}\/\text{m}"}.
kHCl = 476 ;   %[control:editfield:772d]{"position":[8,11]} %[control:button:2964]{"position":[14,15]}
CheckExercise7(kHCl)
%%
%[text] ### Chemical Bond Visualization
%[text] ![](text:image:4d0f) **Try.** Explore how different external frequencies affect bond oscillations of our modeled hydrogen chloride. Recall that infrared light spans a range from around $14,000\~\\text{cm}^{-1}${"altText":"14,000\~\text{cm}^{-1}"} to $10\~\\text{cm}^{-1}${"altText":"10\~\text{cm}^{-1}"}, with mid-infrared in approximately the $4,000-400\~\\text{cm}^{-1}${"altText":"4,000-400\~\text{cm}^{-1}"}range.
%%
bond_omega = 2886;
external_freq =  2886;   %[control:editfield:53c8]{"position":[17,22]}
external_amp = 2; %[control:dropdown:552a]{"position":[16,17]}
PlotChemicalBond(bond_omega, external_freq, external_amp,0,12e-12); %[control:dropdown:0ef4]{"position":[60,62]}
%%
%[text] ## Further Exploration
%[text] There is additional exploration of the transient and steady-state solutions to a damped harmonic oscillator in the [Harmonic Oscillator Explorer](https://www.mathworks.com/matlabcentral/fileexchange/123715-harmonic-oscillator-explorer) by Duncan Carlsmith.
%[text] You can learn how to calculate symbolic solutions to ODEs in [CheckYourWork](file:.\\CheckYourWorkSoln.m). 
%%
%[text] ## References
%[text] %[text:anchor:M_320f] \[1\] [https://cccbdb.nist.gov/exp2x.asp?casno=7647010&charge=0](https://cccbdb.nist.gov/exp2x.asp?casno=7647010&charge=0) 
%[text] %[text:anchor:M_48c2] \[2\] [https://en.wikipedia.org/wiki/Hydrogen\_chloride](https://en.wikipedia.org/wiki/Hydrogen_chloride) 
%%
%[text] [⇦ Main Menu](file:MainMenu.m)
%%
%[text] %[text:anchor:H_0AAABA39] ## Local Helper Functions
%[text] If you want to see the details of the code, select the **View** tab and switch to **Output Inline**. Alternatively, select **Output inline** using the icon ![live script output inline icon](text:image:068b) at the top right of the Live Editor pane.
%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.
%%
function PlotPendulum(gamma, omega0, F0, omega, theta0, thetaPrime0,tOffset)
    tVals = linspace(0, 20, 1000)+tOffset;
    
    syms theta(t)
    % Define the differential equation
    eqn = diff(theta, t, 2) + gamma*diff(theta, t) + omega0^2*theta == F0*cos(omega*t);
    eqnH = diff(theta, t, 2) + gamma*diff(theta, t) + omega0^2*theta == 0;
    Dtheta = diff(theta,t);

    % Solve the differential equation
    theta_sol = dsolve(eqn,[theta(0)==theta0 Dtheta(0)==thetaPrime0]);
    theta_homog_sol = dsolve(eqnH,[theta(0)==theta0 Dtheta(0)==thetaPrime0]);
    
    % Convert the solution to a function for plotting
    theta_func = matlabFunction(theta_sol);
    if theta_homog_sol == 0
        theta_transient = zeros(size(tVals));
    else
        theta_homog_func = matlabFunction(theta_homog_sol);
        theta_transient = theta_homog_func(tVals);
    end
    
    theta_total = theta_func(tVals);

    theta_steadystate = theta_total - theta_transient;

    figure;
    tiledlayout(2,1);
    
    nexttile;
    plot(tVals, theta_transient, 'r--', 'LineWidth', 1.5);
    hold on;
    plot(tVals, theta_steadystate, 'b-', 'LineWidth', 1.5);
    plot(tVals, theta_total, 'k-', 'LineWidth', 2);
    xlabel('Time');
    ylabel('Angular Displacement θ');
    legend('Transient (θ_h)', 'Steady State (θ_p)', 'Total Solution', 'Location', 'best');
    title('Pendulum Motion Components');
    grid on;
    
    nexttile;
    plot(tVals, F0*cos(omega*tVals), 'g-', 'LineWidth', 1.5);
    hold on;
    plot(tVals, theta_total, 'k-', 'LineWidth', 2);
    xlabel('Time');
    ylabel('Amplitude');
    legend('Driving Force', 'Response', 'Location', 'best');
    title('Driving Force vs Response');
    grid on;
    
    fprintf('Parameters: γ=%.2f, ω₀=%.2f, F₀=%.2f, ω=%.2f\n', gamma, omega0, F0, omega);
    displayFormula("theta_homog_sol")
    if abs(omega - omega0) < 0.1
        fprintf('⚠ Near resonance condition!\n');
    end
end

function PlotChemicalBond(wv0, wavenum, F0,tStart,tEnd)
    tVals = linspace(tStart, tEnd, 1000);
    omega0 = 2*pi*3e10*wv0;
    omega = 2*pi*3e10*wavenum;

    % Particular solution
    if abs(1-wv0/wavenum) > 1e-6
        % Non-resonant case
        A = F0/(omega0^2 - omega^2);
        x_h = -A*cos(omega0*tVals);
        x_p = A*cos(omega*tVals);
    else
        % Near resonance - use modified form
        A = F0/(2*omega0);
        x_p = A*tVals.*sin(omega0*tVals);
        x_h = -A*sin(omega0*tVals);
    end

    % Total solution
    x_total = x_h + x_p;

    figure
    tiledlayout(2,1);
    
    nexttile
    plot(tVals, x_total, 'b-', 'LineWidth', 1.5);  
    xlabel('Time (s)');
    ylabel('Bond Displacement (m)');
    % legend('Total Motion', 'Location', 'best');
    title('Chemical Bond Oscillation');
    grid on;
    
    nexttile
    waveVals = 1000:2:4000; % wavenumber
    ampVals = abs(F0/(4*pi^2*9e20)./(2886^2-waveVals.^2));
    ampVals(waveVals==2886) = F0/(4*pi*3e10*2886);
    semilogy(waveVals,ampVals,LineWidth=2)
    title("Frequency response of HCl model")
    xlabel("Wavenumber of IR light")
    ylabel("Amplitude of HCl Oscillation")

    fprintf('Bond wavenumber: %.0f, External wavenumber: %.0f, Response Amplitude: %.4e\n', ...
        omega0/(2*pi*3e10), omega/(2*pi*3e10), A);
end

function [diffeq,RHS] = GenerateProblem(type,overlap)
arguments
    type (1,1) string {mustBeMember(type,["poly","exp","sincos","any"])}
    overlap (1,1) logical = false
end

if type == "any"
    opts = ["poly" "exp" "sincos" "polyexp" "expsincos" "polysincos" "all"];
    idx = randi(7);
    choice = opts(idx);
    overlap = randi(3)-1;
else
    choice = type;
    overlap = double(overlap);
end

if contains(choice,"sincos") || choice == "all"
    if overlap
        overlap = 1;
    else
        overlap = 0;
    end
end

% Generate many random constants
constants = randi([-5, 5],[7,1]);
if constants(1) == 0
    constants(1) = 1;
end


syms x y(x)
deg = randi(4,1);
n = 0;      % The maximum degree of a polynomial
alpha = 0;  % The argument for sincos
beta = 0;   % The argument for exp

switch choice
    case "poly"
        g = x.^(deg:-1:0)*constants(1:deg+1);
        n = deg;
    case "exp"
        if constants(2) ~= 0
            beta = constants(2);
        else
            beta = -1;
        end
        g = constants(1) * exp(beta * x);
    case "sincos"
        if constants(2) ~= 0
            alpha = constants(2);
        else
            alpha = 1;
        end
        if logical(randi(2)-1)
            g = constants(1)*sin(alpha*x);
        else
            g = constants(1)*cos(alpha*x);
        end
    case "polyexp"
        beta = constants(deg+2);
        g = x.^(deg:-1:0)*constants(1:deg+1)*exp(beta*x);
    case "expsincos"
        alpha = constants(2);
        beta = constants(3);
        if logical(randi(2)-1)
            g = constants(1)*sin(alpha*x)*exp(beta*x);
        else
            g = constants(1)*cos(alpha*x)*exp(beta*x);
        end
    case "polysincos"
        alpha = constants(deg+2);
        n = deg;
        if logical(randi(2)-1)
            g = x.^(deg:-1:0)*constants(1:deg+1)*sin(alpha*x);
        else
            g = x.^(deg:-1:0)*constants(1:deg+1)*cos(alpha*x);
        end
    case "all"
        opt = randi(3);
        alpha = constants(deg+2);
        beta = constants(end);
        if opt == 1
            g = x.^(deg:-1:0)*constants(1:deg+1)*sin(alpha*x)*exp(beta*x);
        elseif opt == 2
            g = x.^(deg:-1:0)*constants(1:deg+1)*cos(alpha*x)*exp(beta*x);
        else
            deg2 = randi(4);
            g = (x^deg*constants(1)*sin(alpha*x)+x^deg2*constants(2)*cos(alpha*x))*exp(beta*x);
            n = max(deg,deg2);
        end
        
end

RHS.power = n;
RHS.beta = beta;
RHS.alpha = alpha;
RHS.type = choice;
RHS.overlap = overlap;

homogType = ChooseHomogType(RHS);
[diffeq,RHS] = GenerateHomogProblem(homogType,RHS);

diffeq.full = diffeq.LHS == g;
displayFormula(['"Solve "'; "diffeq.full"])
end

function homogType = ChooseHomogType(RHS)
    if RHS.overlap == 0
        homogType = "any";
    else
        if RHS.alpha
            homogType = "complex";
        elseif RHS.beta
            homogType = "real";
        else
            homogType = "repeated";
        end
    end
end

function [diffeq,RHS] = GenerateHomogProblem(type,RHS)
arguments
    type (1,1) string {mustBeMember(type,["real","repeated","complex","any"])}
    RHS
end

if type == "any"
    opts = ["real" "repeated" "complex"];
    idx = randi(3);
    choice = opts(idx);
else
    choice = type;
end

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
if RHS.overlap
    if choice == "complex"
        LH = a*poly([RHS.alpha+RHS.beta*1i RHS.alpha-RHS.beta*1i]);
    else
        if RHS.overlap == 1 && choice == "real"
            if v(2) ~= RHS.beta
                LH = a*poly([RHS.beta v(2)]);
            else
                LH = a*poly([RHS.beta v(1)]);
            end
        else
            LH = a*poly([RHS.beta RHS.beta]);
        end
    end
end

syms x y(x)
roots = solve(LH*[x^2;x;1]);

if ~RHS.overlap
    if RHS.type == "complex" && ~isreal(roots(1))
        if RHS.alpha == real(roots(1)) && RHS.beta == abs(imag(roots(1)))
            LH = a*poly([RHS.alpha-1+RHS.beta*1i RHS.alpha-1-RHS.beta*1i]);
            roots = [RHS.alpha-1+RHS.beta*1i RHS.alpha-1-RHS.beta*1i];
        end
    elseif RHS.type ~= "complex" && any(roots == 0)
        coeffs = randi(10,[1 2]);
        LH = a*poly([coeffs(1) -coeffs(2)]);
        roots = [coeffs(1) -coeffs(2)];
    end
end

diffeq.LHS = LH(1)*diff(y,x,2)+LH(2)*diff(y,x)+LH(3)*y;
diffeq.homog = diffeq.LHS == 0;
RHS.homogtype = choice;
RHS.roots = roots;
RHS.LHS = LH;

end

function [LH,a,v] = CreatePolynomial()
v = randi(11,[1 2])-6;
a = (randi(2,1)-1)*(randi(11,1)-6);
if a == 0
    a = 1;
end
LH = a*poly(v);
end


function CheckGuess(MyGuess,RHS,DefaultAns)
arguments
    MyGuess 
    RHS 
    DefaultAns
end
if MyGuess == DefaultAns
    disp("This is the default. Please enter a solution and resubmit.")
    return
end
syms x A B C D E F G H I J
coeffs = [A B C D E F G H I J];

OverlapDegree = RHS.overlap;

MyGuess = simplify(MyGuess);

polyFun = [coeffs(1:RHS.power+1)*x.^((RHS.power:-1:0)') coeffs(RHS.power+2:2*RHS.power+2)*x.^((RHS.power:-1:0)')];
expFun = exp(RHS.beta*x);
alpha = abs(RHS.alpha);
sincosFun = [cos(alpha*x); sin(alpha*x)];

ySoln1 = polyFun*sincosFun*expFun*x^OverlapDegree;
ySoln2 = polyFun*flipud(sincosFun)*expFun*x^OverlapDegree;

if isAlways((ySoln1 == MyGuess)||(ySoln2 == MyGuess))
    disp("Correct!")
    syms y_p
    displayFormula(['"The guess is "' "y_p = MyGuess"])
elseif alpha ~= RHS.alpha
    sincosFunSigned = [cos(alpha*x); -sin(alpha*x)];
    ySoln1Signed = polyFun*sincosFunSigned*expFun*x^OverlapDegree;
    ySoln2 = polyFun*flipud(sincosFunSigned)*expFun*x^OverlapDegree;
    if isAlways((ySoln1Signed == MyGuess)||(ySoln2 == MyGuess))
        disp("Technically correct!")
        syms y_p
        displayFormula(['"Conventionally, this guess is written with positive coefficients as "' "y_p = ySoln1"])
    else
        displayFormula(['"Does your guess include both "' "sin(alpha*x)" '" and "' "cos(alpha*x)" '"?"'])
    end
else
    if RHS.type == "poly"
    try
    if polynomialDegree(MyGuess) ~= polynomialDegree(ySoln1)
        disp("This is not the right degree. Notice that g(x) was of degree " + RHS.power + ".")
    else
        disp("Please check your coefficients. Did you use A, B, C, etc? Did you include all terms?")
        disp("Did you write your guess with addition only? All signs can be absorbed into the coefficients.")
    end
    catch ME
        disp("This should only be a polynomial.")
    end
    end
    if contains(RHS.type,"exp")
        displayFormula(['"Does your guess include "' "exp(RHS.beta*x)"  '"?"'])
        displayFormula(['"Is "' "exp(RHS.beta*x)" '" a homogeneous solution?"'])
    end
    if contains(RHS.type,"sincos")
        displayFormula(['"Does your guess include both "' "sin(alpha*x)" '" and "' "cos(alpha*x)" '"?"'])
    end
    if RHS.type == "all" 
        displayFormula(['"Does your guess include both "' "polyFun(1)" '" and "' "polyFun(2)" '"?"'])
        displayFormula(['"Is "' "exp(RHS.beta*x)*cos(RHS.alpha*x)" '" a homogeneous solution?"'])
    end
    if OverlapDegree ~= 0 && subs(MyGuess,x,0) ~= 0
        disp("Did you check the homogeneous solutions?")
    end
    if RHS.power > 0
        disp("Do you use coefficients A, B, C, ... in alphabetical order?")
    end
end
end


function out = CheckParticularSolution(yP,diffeq,DefaultAnswer)
out = false;
if yP == DefaultAnswer
    disp("This is the default. Please enter a solution and resubmit.")
    return
end
yh = dsolve(diffeq.homog);
ytot = dsolve(diffeq.full);
ySoln = ytot-yh;
if isAlways(yP==ySoln,"Unknown","false")
    disp("Correct!")
    displayFormula("y_p == yP")
    out = true;
elseif isAlways(yP==ytot,"Unknown","false")
    displayFormula('"That isn''t the particular solution from the method of undetermined coefficients!"')
    displayFormula('"It looks like you included the general homogeneous terms, too."')
    displayFormula(['"What does this look like if you solve for the minimal "' "y_p" '" with "' "y_h==0" '"?"'])
else
    disp("Please try again.")
end
end

function out = CheckHomogSolution(yH,diffeq,DefaultAns)
out = false;
if yH == DefaultAns
    disp("This is the default. Please enter a solution and resubmit.")
    return
end
syms x C1 C2 C3 C4 y(x) coeff1 coeff2
assume(x,"real")
assume(C1,"real")
assume(C2,"real")
GenSol = subs(yH,[C1 C2],[coeff1 coeff2]);
GenSol1a = subs(GenSol,[coeff1 coeff2],[C1 C2]);
GenSol2a = subs(GenSol,[coeff1 coeff2],[C2 C1]);
GenSol1b = subs(GenSol,[coeff1 coeff2],[C1 -C2]);
GenSol2b = subs(GenSol,[coeff1 coeff2],[C2 -C1]);
GenSolAns = dsolve(diffeq.homog);
GenSolAns = subs(GenSolAns,[C3 C4],[C1 C2]);
ytot = dsolve(diffeq.full);
if isAlways(GenSol1a==GenSolAns,"Unknown","false") || isAlways(GenSol2a==GenSolAns,"Unknown","false") ...
        || isAlways(GenSol1b==GenSolAns,"Unknown","false") || isAlways(GenSol2b==GenSolAns,"Unknown","false") ...
        || isAlways(-GenSol1a==GenSolAns,"Unknown","false") || isAlways(-GenSol2a==GenSolAns,"Unknown","false") ...
        || isAlways(-GenSol1b==GenSolAns,"Unknown","false") || isAlways(-GenSol2b==GenSolAns,"Unknown","false")
    disp("Correct! The solution is: ")
    displayFormula("y(x) == GenSol1a")
    out = true;
elseif isAlways(GenSol1a == C1*x + C2*exp(4*x),"Unknown","false")
    disp("This is the default solution.")
elseif imag(yH) ~= 0
    displayFormula(['"You wrote "' "y(x) == GenSol1a" '" but your answer should not involve complex values."'])
    displayFormula('"Please express your solution with only real values. Use sines and cosines if necessary."')
    disp('Review <a href="matlab: edit CharacteristicEquations.m">Characteristic Equations</a>')
elseif isAlways(yP==ytot,"Unknown","false")
    displayFormula('"That isn''t the homogeneous solution from the method of undetermined coefficients!"')
    displayFormula('"It looks like you included the particular solution terms, too."')
    displayFormula(['"Remember that the homogeneous solution solves "' "diffeq.homog"])
else
    displayFormula('"Incorrect. Please try again."')
    displayFormula(['"Remember that the homogeneous solution solves "' "diffeq.homog"])
end
assume(x,"clear")
assume(C1,"clear")
assume(C2,"clear")
end

function CheckExercise6(xp)
syms F_0 omega t m k x_p(t)
if isAlways(xp==F_0*cos(omega*t),"Unknown","false")
    disp("This is the default value. The solution is not just the forcing function.")
elseif isAlways(xp == F_0/(2*sqrt(m*k))*t*sin(omega*t),"Unknown","false")
    disp("Correct!")
    displayFormula(['"The steady-state solution is "' "x_p(t) == xp" '"."'])
elseif subs(xp,t,0) ~= 0
    disp("Incorrect. Remember that your particular solution must be linearly independent of the homogeneous solution.")
elseif isAlways(xp == F_0/(2*sqrt(m*k))*sin(omega*t),"Unknown","false")
    disp("Incorrect. Did you forget a factor of t?")
else
    disp("Incorrect. Remember to use the value omega and NOT omega_0. You can also use m, k, t, and F_0.")
end
end

function CheckExercise7(kAns)
kHCl = round(1.62e-27 * (5.42e14)^2,0); % Calculate k for HCl
if kAns == kHCl
    disp("Correct!")
    displayFormula(['"The computed value for the spring coefficient for HCl is approximately "'  "kHCl" '" N/m."'])
elseif kAns == 0
    disp("This is the default. The spring constant is not 0.")
elseif abs(kAns-kHCl)<1
    disp("Close enough, though you kept more precision than is appropriate given the values provided.")
    displayFormula(['"The computed value for the spring coefficient for HCl is approximately "'  "kHCl" '" N/m."'])
elseif abs(kAns-480)<1e-1
    disp("This is a common number given online, but doesn't match the values given in this problem.")
    disp("Please try again.")
else
    disp("Incorrect.")
    syms omega_0
    displayFormula(['"Remember that "' "omega_0 = sqrt(k/mu)"])
end
end

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"hidecode","rightPanelPercent":40}
%---
%[text:image:2325]
%   data: {"align":"middle","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAArElEQVR42mP4\/\/8\/AwgnJiYapKamfgfS\/ynBUDMMYOYywBggiYcPH\/6nFIDMAJmFYQHIdmoBqFm4LZjrYPd\/gpoyGIPYVLeA5j4gbEASHJNlwZYtW\/93dHTixDCDQTRMDKRn8FhATBDNmTOH\/CAiBI4cOQI2HETTLBW9fv2a\/FRUtPXVf\/WeuyRhkB6iLQBp2HLvP0kYpGfUglELhpMFNM9oNKlw6FHp06TZAgAoeVix9Bg9oQAAAABJRU5ErkJggg==","width":24}
%---
%[text:image:64f3]
%   data: {"align":"baseline","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:8762]
%   data: {"align":"baseline","height":23,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADoAAAA6CAYAAADhu0ooAAAEp0lEQVR42t2a208TQRTG67OJxvv9fiGoD6LGgPiCGo1G\/wljTKDl1pL00RuKIKCIIiKg6ItB8IJ38K4Panz13RcfSBBBQQHRek4ys\/kYpu1uu2132+Sku6eb6X7zmzlz5ux6PEn6lJaWbi0uLu4mGyLrJWvMz8+f4UmnjxA5QhZS7HNZWdnUdNE5hQR9EsLGioqKWuj7kRRbUlJSmS40D4Co4yD+rfAPEdW5rhdKQj4KQQM4J0n0DhjCVW4XuR9oHlV\/J98rSZVsnmuF0nz8oNIsLCxcFQwGp4vf86AjzrhV5D4dTTq+Tr8d0VD95fP5Frpx2L4XAgYlTQpMq+n8DxKm4+0wV6tdJZIo7YWbPwbi26QfqdL5S+H\/7SqqdMPvJE2iOFPOTUEzpM5bpEodUOMWkXs06yb7r6qZEc5dOn\/hKqqQCESiOYkqic4Ff62jRZKg3XCzJ0B8q0akjupzSZU6aZGTl5Q34kZ\/BgKB2ezzer3LOMcNJ5SpSvJIlY7POTWn3QUBpRzEt0QQqYvMzxxNlW7staRJQ3gO0Bw1IdSYz9Qx28Bf57QhuxNu7iSIbzYhclKEpvZ6HElVR5OOl5qkGZEqdcB5p9DMC0OzyYJIXaTuFr4R6rzFTkj3jK1WHDRDarSmdnPAX59qkbkQaU+B\/7IqglM7+g4qVqu5rhzaeeoIqpC2RaVJN52pGfYbdFRlW0iVrr2QcppkFSC+MUxUNSt0AlU6f5JSqpCuGcUtv9+\/JExZ05JQpErf2eC\/mOxIi4v6aRDfEGGdtCJUjeCPhW+Uk5BkCu2xQjNGoQZVWl+30Pk\/4W9I1tzM0RWfeVhFyXysCp0QyaHoPUZtLU\/G3OxWadIfL+Dilt1CMZrTtZuB6qVE7zezdUVnDv0mctlYhKpUHyaFKoR6SzTjEYr\/pVBtTDhNLDZz0m1ydxKrUHWdfiCp+ny+FYmgKUP8sHx8YJamDUK1VDnVtHs5wSFTDeLrLOw34xGqrtf3E0IVgoBRiiwoKJhvlqZNQjEubIKOb7Jr3TQaxeIyF6+sbMFsEKqu2\/ZShQZVmsPJFhqOKrVzxTaaWFTW7SNNCD3IlUI08h2KYXOO63eXpErtrYwnCHWpNDniWqVpsxlUacnLAhDNsa6bWTqaolIQSrFVwei6FxdVGlZ3baY5SNav2KCdVLlYblXkRqB5FnqvOlYKNgWjUJjsTEIZpzbXWIm0d9QCMlfneI\/oFKFKhoZgWs0GIP7zv+qDHu7BeOZVAoSqWZqEM+73+9eaodlpN80ECjXiBwLih87Rnoith4vrgGZlvJEyQUJVqrdNUaULOmRp0U6a8uUMssNo\/BDYBqHDnKlppt21qDTxwQ7vGhywbkbrxBrN1Bsny9DRbFcLxV6vdxad\/3C6UJyryvRrU7OgdfBjPYivcIHIkCYX79BSpZObLqYZkSq\/kicjaqZ04oMcrpS7SGRIzeJIy60JVDk6SZpcbRdDeRr5v2hyU6fbV\/l8VVlXm5lcX0wJsTveYpMVw14PzMOGNBQqE4h+3M8x5hti3UwH64S52y6D0YALA49Z6+P3hCXiDLH2fEsjgd+ZKr9wyRr\/A+UKAPezYlA8AAAAAElFTkSuQmCC","width":23}
%---
%[text:image:30f8]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[text:image:72f9]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:4b50]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[text:image:8198]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:button:33fc]
%   data: {"label":"Check that y solves the differential equation","run":"Section"}
%---
%[text:image:6d9b]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:button:1963]
%   data: {"label":"Generate Problem","run":"Section"}
%---
%[control:editfield:03c1]
%   data: {"defaultValue":" A","label":"MyGuess = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:0654]
%   data: {"label":"Check solution","run":"Section"}
%---
%[text:image:82d1]
%   data: {"align":"middle","height":23,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADoAAAA6CAYAAADhu0ooAAAEp0lEQVR42t2a208TQRTG67OJxvv9fiGoD6LGgPiCGo1G\/wljTKDl1pL00RuKIKCIIiKg6ItB8IJ38K4Panz13RcfSBBBQQHRek4ys\/kYpu1uu2132+Sku6eb6X7zmzlz5ux6PEn6lJaWbi0uLu4mGyLrJWvMz8+f4UmnjxA5QhZS7HNZWdnUdNE5hQR9EsLGioqKWuj7kRRbUlJSmS40D4Co4yD+rfAPEdW5rhdKQj4KQQM4J0n0DhjCVW4XuR9oHlV\/J98rSZVsnmuF0nz8oNIsLCxcFQwGp4vf86AjzrhV5D4dTTq+Tr8d0VD95fP5Frpx2L4XAgYlTQpMq+n8DxKm4+0wV6tdJZIo7YWbPwbi26QfqdL5S+H\/7SqqdMPvJE2iOFPOTUEzpM5bpEodUOMWkXs06yb7r6qZEc5dOn\/hKqqQCESiOYkqic4Ff62jRZKg3XCzJ0B8q0akjupzSZU6aZGTl5Q34kZ\/BgKB2ezzer3LOMcNJ5SpSvJIlY7POTWn3QUBpRzEt0QQqYvMzxxNlW7staRJQ3gO0Bw1IdSYz9Qx28Bf57QhuxNu7iSIbzYhclKEpvZ6HElVR5OOl5qkGZEqdcB5p9DMC0OzyYJIXaTuFr4R6rzFTkj3jK1WHDRDarSmdnPAX59qkbkQaU+B\/7IqglM7+g4qVqu5rhzaeeoIqpC2RaVJN52pGfYbdFRlW0iVrr2QcppkFSC+MUxUNSt0AlU6f5JSqpCuGcUtv9+\/JExZ05JQpErf2eC\/mOxIi4v6aRDfEGGdtCJUjeCPhW+Uk5BkCu2xQjNGoQZVWl+30Pk\/4W9I1tzM0RWfeVhFyXysCp0QyaHoPUZtLU\/G3OxWadIfL+Dilt1CMZrTtZuB6qVE7zezdUVnDv0mctlYhKpUHyaFKoR6SzTjEYr\/pVBtTDhNLDZz0m1ydxKrUHWdfiCp+ny+FYmgKUP8sHx8YJamDUK1VDnVtHs5wSFTDeLrLOw34xGqrtf3E0IVgoBRiiwoKJhvlqZNQjEubIKOb7Jr3TQaxeIyF6+sbMFsEKqu2\/ZShQZVmsPJFhqOKrVzxTaaWFTW7SNNCD3IlUI08h2KYXOO63eXpErtrYwnCHWpNDniWqVpsxlUacnLAhDNsa6bWTqaolIQSrFVwei6FxdVGlZ3baY5SNav2KCdVLlYblXkRqB5FnqvOlYKNgWjUJjsTEIZpzbXWIm0d9QCMlfneI\/oFKFKhoZgWs0GIP7zv+qDHu7BeOZVAoSqWZqEM+73+9eaodlpN80ECjXiBwLih87Rnoith4vrgGZlvJEyQUJVqrdNUaULOmRp0U6a8uUMssNo\/BDYBqHDnKlppt21qDTxwQ7vGhywbkbrxBrN1Bsny9DRbFcLxV6vdxad\/3C6UJyryvRrU7OgdfBjPYivcIHIkCYX79BSpZObLqYZkSq\/kicjaqZ04oMcrpS7SGRIzeJIy60JVDk6SZpcbRdDeRr5v2hyU6fbV\/l8VVlXm5lcX0wJsTveYpMVw14PzMOGNBQqE4h+3M8x5hti3UwH64S52y6D0YALA49Z6+P3hCXiDLH2fEsjgd+ZKr9wyRr\/A+UKAPezYlA8AAAAAElFTkSuQmCC","width":23}
%---
%[control:editfield:7027]
%   data: {"defaultValue":"MyGuess","label":"The particular solution is y_p(x) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:6816]
%   data: {"label":"Check solution","run":"Section"}
%---
%[text:image:45af]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB8AAAAcCAYAAACZOmSXAAACP0lEQVR42mNgoCLIy8vzys\/Pf15QUNDNQE9QWFioBLT4CxD\/B2GgA5LoZjnQwi0wi6H4TVlZGS89LA5FsxiGK2hqcW5urijQkidAfA+L5S\/S0tJYaWU3I9CCjUC8GYg\/YfM9MBH60yq4G6GW1OEIdhBeT1VLQUEJNLQDavg2IJ6Kx\/IfwJQvQLGlDQ0NbECDsoEGXoEa\/BUYrDpA+gMey0FBH0+RxdnZ2fJAg26gGVwKdEwBPouheCslFgsDDbiDZuC2kpISbiD9lAjLfwILISFyE9YKNMPugwxDSnDE4GSiLQwNDWUGxSfUcjkgPgU15DMQ6xUVFamBEhMJlu8nqowGWtoCLThAmqYlJCRwAAsTdmD0zgTy\/UBsIH2GBItB+C\/IExgWggwHSkQB8V4g\/odF4zmgg1Rh6oGOmESixdiLW6BBlUDBdwQ0\/QCGiC80CnLItBiEr6JYXlxcLAItInFp+AbE7lCHBgDZfyiw\/D8wygwxymho4fENTfFnoLgDksU\/KbEYivtxtURApdVlqKK7QFfqQ4M6HIh\/UcFicD0PSmNYHQBNfMWZmZmCUB8XQFMqqZaAsmQNKFsCPWUFpBciJeYogtkuKyuLB2h3EFDzJhItfgZMoLo42nigqvcgSfU20BGLSLBYCU\/jQx9UJAPVmBBte3l5OT8RWfIrMYbm5OQogqKE1DK+FV8JBsoRxJqFM9HhsVwciL\/jsLyQHi3V+VgsrmGgBwAGrRFyHJNUVVLJATuBli4FYnVKzAEAi4Bewge+mbwAAAAASUVORK5CYII=","width":23}
%---
%[control:editfield:3669]
%   data: {"defaultValue":"MyGuess","label":"The homogeneous solution is y_h(x) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:0bb3]
%   data: {"label":"Check solution","run":"Section"}
%---
%[control:editfield:3b98]
%   data: {"defaultValue":" MyGuess","label":"y = ","run":"Section","valueType":"MATLAB code"}
%---
%[control:button:1397]
%   data: {"label":"Display solution","run":"Section"}
%---
%[text:image:8d0e]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB8AAAAcCAYAAACZOmSXAAACP0lEQVR42mNgoCLIy8vzys\/Pf15QUNDNQE9QWFioBLT4CxD\/B2GgA5LoZjnQwi0wi6H4TVlZGS89LA5FsxiGK2hqcW5urijQkidAfA+L5S\/S0tJYaWU3I9CCjUC8GYg\/YfM9MBH60yq4G6GW1OEIdhBeT1VLQUEJNLQDavg2IJ6Kx\/IfwJQvQLGlDQ0NbECDsoEGXoEa\/BUYrDpA+gMey0FBH0+RxdnZ2fJAg26gGVwKdEwBPouheCslFgsDDbiDZuC2kpISbiD9lAjLfwILISFyE9YKNMPugwxDSnDE4GSiLQwNDWUGxSfUcjkgPgU15DMQ6xUVFamBEhMJlu8nqowGWtoCLThAmqYlJCRwAAsTdmD0zgTy\/UBsIH2GBItB+C\/IExgWggwHSkQB8V4g\/odF4zmgg1Rh6oGOmESixdiLW6BBlUDBdwQ0\/QCGiC80CnLItBiEr6JYXlxcLAItInFp+AbE7lCHBgDZfyiw\/D8wygwxymho4fENTfFnoLgDksU\/KbEYivtxtURApdVlqKK7QFfqQ4M6HIh\/UcFicD0PSmNYHQBNfMWZmZmCUB8XQFMqqZaAsmQNKFsCPWUFpBciJeYogtkuKyuLB2h3EFDzJhItfgZMoLo42nigqvcgSfU20BGLSLBYCU\/jQx9UJAPVmBBte3l5OT8RWfIrMYbm5OQogqKE1DK+FV8JBsoRxJqFM9HhsVwciL\/jsLyQHi3V+VgsrmGgBwAGrRFyHJNUVVLJATuBli4FYnVKzAEAi4Bewge+mbwAAAAASUVORK5CYII=","width":23}
%---
%[text:image:543c]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:button:6c07]
%   data: {"label":"Generate Problem","run":"Section"}
%---
%[control:editfield:2217]
%   data: {"defaultValue":"WorkOutGuess2","label":"MyGuess = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:96ea]
%   data: {"label":"Check solution","run":"Section"}
%---
%[control:editfield:824c]
%   data: {"defaultValue":"MyGuess","label":"The particular solution is y_p(x) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:327f]
%   data: {"label":"Check solution","run":"Section"}
%---
%[control:editfield:1874]
%   data: {"defaultValue":"MyGuess","label":"The homogeneous solution is y_h(x) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:8912]
%   data: {"label":"Check solution","run":"Section"}
%---
%[text:image:76d0]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:button:84b8]
%   data: {"label":"Generate Problem","run":"Section"}
%---
%[control:editfield:6835]
%   data: {"defaultValue":" A","label":"MyGuess = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:7eb2]
%   data: {"label":"Check solution","run":"Section"}
%---
%[control:editfield:39af]
%   data: {"defaultValue":"MyGuess","label":"The particular solution is y_p(x) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:3345]
%   data: {"label":"Check solution","run":"Section"}
%---
%[control:editfield:865f]
%   data: {"defaultValue":"MyGuess","label":"The homogeneous solution is y_h(x) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:289d]
%   data: {"label":"Check solution","run":"Section"}
%---
%[text:image:9e80]
%   data: {"align":"middle","height":23,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADoAAAA6CAYAAADhu0ooAAAEp0lEQVR42t2a208TQRTG67OJxvv9fiGoD6LGgPiCGo1G\/wljTKDl1pL00RuKIKCIIiKg6ItB8IJ38K4Panz13RcfSBBBQQHRek4ys\/kYpu1uu2132+Sku6eb6X7zmzlz5ux6PEn6lJaWbi0uLu4mGyLrJWvMz8+f4UmnjxA5QhZS7HNZWdnUdNE5hQR9EsLGioqKWuj7kRRbUlJSmS40D4Co4yD+rfAPEdW5rhdKQj4KQQM4J0n0DhjCVW4XuR9oHlV\/J98rSZVsnmuF0nz8oNIsLCxcFQwGp4vf86AjzrhV5D4dTTq+Tr8d0VD95fP5Frpx2L4XAgYlTQpMq+n8DxKm4+0wV6tdJZIo7YWbPwbi26QfqdL5S+H\/7SqqdMPvJE2iOFPOTUEzpM5bpEodUOMWkXs06yb7r6qZEc5dOn\/hKqqQCESiOYkqic4Ff62jRZKg3XCzJ0B8q0akjupzSZU6aZGTl5Q34kZ\/BgKB2ezzer3LOMcNJ5SpSvJIlY7POTWn3QUBpRzEt0QQqYvMzxxNlW7staRJQ3gO0Bw1IdSYz9Qx28Bf57QhuxNu7iSIbzYhclKEpvZ6HElVR5OOl5qkGZEqdcB5p9DMC0OzyYJIXaTuFr4R6rzFTkj3jK1WHDRDarSmdnPAX59qkbkQaU+B\/7IqglM7+g4qVqu5rhzaeeoIqpC2RaVJN52pGfYbdFRlW0iVrr2QcppkFSC+MUxUNSt0AlU6f5JSqpCuGcUtv9+\/JExZ05JQpErf2eC\/mOxIi4v6aRDfEGGdtCJUjeCPhW+Uk5BkCu2xQjNGoQZVWl+30Pk\/4W9I1tzM0RWfeVhFyXysCp0QyaHoPUZtLU\/G3OxWadIfL+Dilt1CMZrTtZuB6qVE7zezdUVnDv0mctlYhKpUHyaFKoR6SzTjEYr\/pVBtTDhNLDZz0m1ydxKrUHWdfiCp+ny+FYmgKUP8sHx8YJamDUK1VDnVtHs5wSFTDeLrLOw34xGqrtf3E0IVgoBRiiwoKJhvlqZNQjEubIKOb7Jr3TQaxeIyF6+sbMFsEKqu2\/ZShQZVmsPJFhqOKrVzxTaaWFTW7SNNCD3IlUI08h2KYXOO63eXpErtrYwnCHWpNDniWqVpsxlUacnLAhDNsa6bWTqaolIQSrFVwei6FxdVGlZ3baY5SNav2KCdVLlYblXkRqB5FnqvOlYKNgWjUJjsTEIZpzbXWIm0d9QCMlfneI\/oFKFKhoZgWs0GIP7zv+qDHu7BeOZVAoSqWZqEM+73+9eaodlpN80ECjXiBwLih87Rnoith4vrgGZlvJEyQUJVqrdNUaULOmRp0U6a8uUMssNo\/BDYBqHDnKlppt21qDTxwQ7vGhywbkbrxBrN1Bsny9DRbFcLxV6vdxad\/3C6UJyryvRrU7OgdfBjPYivcIHIkCYX79BSpZObLqYZkSq\/kicjaqZ04oMcrpS7SGRIzeJIy60JVDk6SZpcbRdDeRr5v2hyU6fbV\/l8VVlXm5lcX0wJsTveYpMVw14PzMOGNBQqE4h+3M8x5hti3UwH64S52y6D0YALA49Z6+P3hCXiDLH2fEsjgd+ZKr9wyRr\/A+UKAPezYlA8AAAAAElFTkSuQmCC","width":23}
%---
%[text:image:8db4]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:button:82e4]
%   data: {"label":"Generate Problem","run":"Section"}
%---
%[control:editfield:2bf3]
%   data: {"defaultValue":"WorkOutGuess4","label":"MyGuess = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:0fe9]
%   data: {"label":"Check solution","run":"Section"}
%---
%[control:editfield:6274]
%   data: {"defaultValue":"MyGuess","label":"The particular solution is y_p(x) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:74ab]
%   data: {"label":"Check solution","run":"Section"}
%---
%[control:editfield:7aac]
%   data: {"defaultValue":"MyGuess","label":"The homogeneous solution is y_h(x) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:9f23]
%   data: {"label":"Check solution","run":"Section"}
%---
%[text:image:7c6b]
%   data: {"align":"bottom","height":25,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAE0AAABMCAYAAAAoVToVAAAEVElEQVR42u2c4ZG0IAyGrwRLoARLoIQtwQ7WEizBEiyBEiiBEiiBDjydifM5jiCQBPU+fuTX3e7iIyRvEuBnnuefamlWIVRoFVqFVqEx2\/f7FYtJMFGh\/QPTLPZZbFhML2YXmy\/Mwv8O8Nnmz0ODGdQvZiIAxZqB7xR\/ChrMCk0Iymfrb3xeDQ1ghZadW0zBclv9Vxv4Lrlbzgo+G1rGn1dBWx8+MLPWBxpDgBJ\/Zwy8GE3xO+zQYCb4HkAyzuou8KKGR0IDJ29KwzoZRx8IGOIx0MDfuJJ+xSNhxotA4SheINWyOA5OldRQMAaXEGW726B5gHVMUAaP2Ux50hWH5gG22kQchQ2jruuKQQMfFhrMQATMFRDEkh0aREkX4XDFC4BljTXngWKXy4CIgvZELnCCM2zQAsL1zARC721OvgeIssCMG8ihwZKZOWcZwodSWUsNTQd8wlHUNi+FpsmgQXXBm5ocwHXEKl+CWJ4L2YcKmvUAaw6+zuXMsl29TRequwWrw2hogaUhDjPC5fgyT7S82yQWmm9pjMfZQlxKutNUNjTwV+hok\/n97qLAODMLYJELrb\/44hEJTQcKlmK3fI+JuYbcd2SE1udCMxQhOuH7XWiwAEpcRHT2LOHKQc\/M0JodOBWbRUTmvxTWpEL7cEPbgWszxK69S7Nho9pI2F9Yl94E\/ipKvsD\/F89Hc6TGpe8h6iBtArq9Ua6oVGi+IKCwXZ0CFVnWYBB6MJZW3EPFrNcw0CSR75oKPrCjSPSzoRE6ezbf42uc7Pa5yZyXdjc0TvU+eAKKOZE3rtTyFATQOEs+OtBSbBN86nT8OwYaRUtOcVdcPQ0ZEeEm1C49k1TQLAG0vgC04TBrmoiAZEL1Q5TkeHggmMFfbT6rS2gSydDOAYy4NS+QHGpz9gnuYrzQkQaTRlHuz+AMCAbbCTs8t8Im7IZi2ycsIcUsalvE+CwmYZcXIV4QJOsWbNoKjFCSclxV10S\/K6mLkCSVDoYNMBPyReYXIRP8Dxc4WRLYiT\/TXI0V8n0bEU3qrLZbpK8laawI7sES5qsDsfgWHM1isj4BUe1tIJzVimtbwn6XkGCCZkpAOwkAuG0JCQGB9DRcYtqF3a5qU1YOVyT7EDVdWHWZxwVIEmgZ6Y8m0mqopm5G05luU1\/GctEFJYch9JmCFFpiNNMFBK7G+NATOUO\/UTlxmWrCCHp2fHsi9pdJ481Vzo4znQn8bodN206AJW955Uio3feB10IEgCWXkTgkQf8SYGUPlF0MZHwgsPERRxcvDqiaJyxRzxFx973zkOyFj3OcZaNIeeQoS+EcB\/8bjxyxHKeNI8roZ7qO5PhRyXKOhQdqGOWIfdUVEye+JHQAbcJesLS74GnibADdcW2OjMggttZgf3b91+FasAEgmYgNMWx3gZTyM6VO0qkSF6fccWdaTwxQbSeQ\/4ub+nZLTsUWAva3YNXrDeudkBVatQoNb78ox6WFMDJfcAAAAABJRU5ErkJggg==","width":25}
%---
%[text:image:694e]
%   data: {"align":"baseline","height":144,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfUAAAElCAYAAAD9dns+AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAITcAACE3ATNYn3oAAAKraVRYdFhNTDpjb20uYWRvYmUueG1wAAAAAAA8P3hwYWNrZXQgYmVnaW49J++7vycgaWQ9J1c1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCc\/Pg0KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyI+PHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj48cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0idXVpZDpmYWY1YmRkNS1iYTNkLTExZGEtYWQzMS1kMzNkNzUxODJmMWIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyI+PHhtcDpDcmVhdG9yVG9vbD5NaWNyb3NvZnQgV2luZG93cyBQaG90byBWaWV3ZXIgMTAuMC4yNjEwMC4xODgyPC94bXA6Q3JlYXRvclRvb2w+PHhtcDpjcmVhdG9ydG9vbD5NaWNyb3NvZnQgV2luZG93cyBQaG90byBWaWV3ZXIgMTAuMC4yNjEwMC4xODgyPC94bXA6Y3JlYXRvcnRvb2w+PC9yZGY6RGVzY3JpcHRpb24+PHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9InV1aWQ6ZmFmNWJkZDUtYmEzZC0xMWRhLWFkMzEtZDMzZDc1MTgyZjFiIiB4bWxuczp0aWZmPSJodHRwOi8vbnMuYWRvYmUuY29tL3RpZmYvMS4wLyI+PHRpZmY6T3JpZW50YXRpb24+MTwvdGlmZjpPcmllbnRhdGlvbj48L3JkZjpEZXNjcmlwdGlvbj48L3JkZjpSREY+PC94OnhtcG1ldGE+DQo8P3hwYWNrZXQgZW5kPSd3Jz8+d1SxtAAANTlJREFUeF7t3b1zE9nWNvyLp0rZUwW+\/4HjYaKO8JTJx1MFMZ4AFI5JIMRETTYmo6MxISTYoSAYE+MqcA41dtTRYezseZPbKFbAG3hts720dn+oPyVdvyrXGVpSt9T20dV777V3X\/v+\/TuIiIho\/v0fvYGIiIjmyyAebYGhTkRENL8G8WhzEI9OAbwBQ52IiGj+DOLRxiAefQLwN4D\/uO0MdSIiojkxiEerg3i0B+AjgF\/149dYKEdERMtiEI9uAFgD8G2SDI\/1430l73sbwJ\/6MWeSDK+xpU5ERMtkTVq5\/wzi0bdBPNrUT+ibQTzaBnCaEehjAE\/B7nciIlpi1wH8PYhHq\/qBPvCK4P6S96qNATwHsDpJhrtgqBMREWFbb+hSqAhO2QewNkmGO5Nk+M1tZKgTEdGyW9MbupBXBCfeA\/hpkgy3JsnwVD\/IUCciomUXCtBWDOLRjUE82gHwL4A\/9OPiCMBvk2S4aYW5w1AnIiLqSIEiuDMAv0+S4cYkGX7SD2oMdSIiopYVLIJ7OEmGq5NkeKAfDGGoExERtaRAEZxf0b6nH8zDUCciImqYFMEd5BTB7UuYX6loL4OhTkREy+5Ib6iLFMHtShHcPf248CvaZwpzh6FORETUAKloPwXwRD8mClW0l8FQJyIiqtEgHm1JEdyfgSK4MwnzQhXtZTDUiYho2dUSrF4R3JtAEdyZV9FeyzE1hjoREVEFBYrgXEX72iwV7WUw1ImIiGZQsAjuZdWK9jIY6kREtOxK31e9QBHcvlS0b7cR5g5DnYiIll3h0C1QBOcq2s0brjSNoU5ERJSjYBFcIxXtZTDUiYho2a3qDU6BIrjGK9rLYKgTEdGymwr1AkVwYwDPJcwbrWgvg6FORETLbsP\/R4EiOHfDlR39QNeuff\/+XW8jIiJaSIN4tCFd6dpPEu47gTFzSEX7ThcFcEWxpU5ERHQxrS1UBHcE4JeuKtrzSBHfHthSJyKiZZLRUrecANjuQwGcNohHqwA2AWy7C5FJMrzGUCciakGaRHcAvJV\/Po7i9J16CrWgYKifSTd7bwrgHHn\/WwD+0I9NkuE1dr8TEbXjFYAV+XmhH6Re6GVFO34senMsFyRTge4w1ImIiC5s9qmiXabV7cgKdm8A3NLP0RjqRETteAzgq\/w81g9S5\/b7Mnbuwlym1f0ZKN7z7QP4BSyUIyKiZZIxpv77JBke6I1tGsSjG1L4th1YV953BmAPwK5\/wxiGOhERLY1AqI8nyfCG2taaGcI8WMTH7nciIlp2pW+9Wgejmz0r0I+8NebNQAdb6kQ0r9IkugngEYA7ANZl81cAXwAcRnH6Wj3\/DoAP8s9nUZwm3vb7sp+b8vgXAO8AvI7i9PzHXn6w9pcm0Yq8p0eyL30c93xEcXrtcmfC2qe33X3WFXn8EMA7\/TmzFNlPmkQf5HHzPc67QEv9edsFcoN4tC2r12UFOSTMd4qO97OlTkRzJ02iRwA+A4i9QIcE6X0Ar9Ikuu9tn5Im0UqaRK8kRF0IO+sy7exzmkT+\/oMk0D\/I6\/x9zUze41vZ730viCHB+ypNog9y7CDZz4ec\/XzO288Ca22VuEE82pRq9r9yAt3dl73UrVwZ6kQ0V6S16eZ8Q1rUz+Qnkdb6ec7iLi60H8m\/X3v78F93E8CHgsH+Sl1g1OGthDBcD4T8+O5kzXv3LjbueJv9c\/YawLm8d7c4zrJpPNS9+7H\/nVPNPlOYO+x+J6K5Ii1XF3SXXdS+NInuRHF6Jfx097f4AuBBFKdf\/Y0S4h+8C4cvUZzeVs\/x9\/dO3tO5XFhMddvr41td2\/o54ousQPfFbfCC2r+IuO0\/x0mT6IX0aEDe3wPj3NyUQL9yUWK9x3kX6H7\/bZYALUKK4HazFowRpbrZQ9hSJ6J5c9mtbgU6Lrbr1qzlHMBdHei4eP0XAHe9TevS5R\/i3tODKE4THegVfJX3eCWsZf935TM4U8MNEtYu0GEFOi7299XYH1XkFcFlBXqllrnGUCeiuSWhNatnWeErQeoXoU2FpvLaCsyKghcIst1\/f1bXvx\/o77Len7E\/mpF0tedVtJ\/J3PhawtxhqBPRvPHHvN8WHO+2ZI25O34I+mPSliL7Kytvn34L3np\/\/oVI3r5gjNdTCTJFbU+690Pj5mfe1LTaF7thqBPRvEm8buJ1qVD\/kNM9PiXUAlassWdTVit4VgXeY\/BxGXf3q9lrf3\/0g0xRy+pqHwN4mjfPvCqGOhHNFW+82x8Ld9Oy\/ls23LMYoRoM9R7SRW\/6s1ANBvFoTaraQ1PUxgCeA1idJMNd\/WDdGOpENHck2G\/LlCw\/3G9KuL\/ythHVzlsN7h8Av+rHxb6E+Y6\/PnuTGOpENJeiOD2XSvOfpeXudy8\/qqPFbizGMjVlrMf0ND39WeiHNb0hi0yLO5ZCOMsRgJ8myXCrrTB3GOpENPeiOD2M4vSuqt6uHOqq+Ox8nrqwjal6ViGdtqzBX+hmLtI6380ohDvxpqc1vqCNhaFORIvkmfffmVXxecvICr0K27zx33ORUC\/ynEW0qjdoXuv8iX5Mxs0fTpLhWp3T02bBUCeiRZXXqo6zuqS9m5848xjqekgiGNoyNbCO3o15FAx1aZ0fZLTOX8q4eWMV7WUw1IlorqRJ9CgjjP3FVvKmcK3LPPepfUn4+eugHzYxZa1pcuc1vw7grRXsEujLuu47QmPqg3i0KdPU7unHZNz8l0ky3G573DwL134norkhAfy\/8s93KrDuZ62Fbqyr\/kWefy77cmPQ62rRli+yVOuVlr\/eX9466UWeX+Q5viLPN9axh7oxjP95X\/utdWt\/8y6w9jsArLhwlvXa9wJhPgaw3ZeWucaWOhHNE7+VeV\/uTuZ+XKCf6xugBNyVwF6RIHP78QP90Ar0eZIxr19\/Xn2HumWzhh+hH2qd96qr3RnEoy1ZlpahTkTzQ26n6qrcdWgfSjDdlm7nTDIl7jaAx6qr3rXcH0RxOteB7kRx+kWm\/rnP6j6TW9\/+Z+PmOLp6ftFtepXtehGZM6lq71VXu6wxfwzgjRvvZ\/c7ES2FIl3Vy05mBLixdTdNcKFkdL+HvJRbovYpzFdleODKojeTZHiNLXUiInL8mgTdE7Jsxn1rnXs3jPlXB7rDUCciIldQd+VWrd5\/L5v3Mnbe6Zxzx1uSNu+GMQx1IqJFlyZR3pz8dQD+evmHBQoNF9XLSTLc7FHrfMtbklaP9TsnrtCPY+pEtBSWdUxdj5Mb8\/f1VEBzCt+iyBlTf9iXynZ5n7sAbunHlOeTZLjj\/sGWOhHRYvMD25\/KpqcCQrrcFzbQczzvQ6AP4tGq3Mr1Y06gu5vGXAY62FInomWxrC11\/Ohedy3ydWMhmi8A3i1Dl3ugpT6eJMNCN3VpilS072SMmTtnsvjNgX4ADHUiIlomgVA\/miTDDbWtFbJ63bb8hMbMIYVwu7plrrH7nYiIll0nVe5SBHeaUwQ3BvBcqvEzAx1sqS+WQTziL5Pq1FnrhagpgZZ6qwVy8h72And98z2X1nnhSny21ImIaNmd6g1NGMSjNa8ILivQ910RXJlAB0OdiIioWVLRvgfgn9BKcF43+8okGW5NkuFMFxoMdSIiogZ4K8EdZ1S1XxkzL9sy1zimvkCMMfWx\/DERFaFbEBxTp4UTGFP\/re4lYaUIbjenAG637Jh5Hob6AjFCnV\/KVBj\/fmgZNB3qBYrgziTM9+oMc4fd70RERBUVKII7kyr71UkyrLV17mOoE9FSkZbU0pBx3Q1Z5KQ1y3KeCxTB+WHe+LQ5hjoRdcJ9GQ7i0cEgHq3px+smLalTAB8H8ei47ZDrgre4yUcA5rKidVuW81ygCO4IwO9thbnDUCei1kmIuy\/DewA+tfDl\/8nrFr0ly3K2wt2kQ0K2FdJSfuMVav3axsVTl+e5glLnJWcluCMZo98Irc\/eJIY6EXVhT30ZXgfQWODJl7D+8m3seIYD6ZptM+CsJUUb7RLvwXmeVaELShnGOFUXS44f5rUU3c2CoU5ErZIuS+uWkpt6Q42sff+njZbzIB5te5\/3VhtjzXIMa3zXOg91svbfynmuKLOlnlME14swdxjqRNQa745Ull+b6IKXfd7T24XVmq2bPkYbARc6xq9yi8\/a9eA8V2Gek5wiuF6FucNQJ6I2Wd2zPqulV1XWPhttRQa6o\/9oKljxI1yzPnNTAZt1zEbPcw1u+ReUOUVwZ30Mc4ehTkRtCrXSnSa6prPCBg2GHDI+b2h7HTaNCwnfZhM9Ih2f5zpsILsIzp+a1rswdxjqRNSKQTzaNMYjtbxgKCWnS9hppBUpleZW7QAAbDUUrChwDq8XeE4pXZ7nGm1lFME9B7DW5tS0slzvD0OdiNpS5Av9es3TroqGVxMt56zP20i1f8FwRQOft8vzXJd7xkXn0ay3QG3LIB5tDuLRAYB\/wVAnojaUCBuUCIgiinbnN1GVnhfaTQRc0XN3q+aLp6Lnronz3IQxgKcybj7TLVCb5Mb8pWfhb\/\/\/Wwx1ImqDFTYn0hLSrOfOqsy+8kK4MBlq0F242n\/keXXSgflSxoIttX3ers5zQ04AbEyS4a5+oGteNf65jPnrngWGOhG1Qn\/pn0gAWcVTVyqRZxUI1vcAfpfja3\/UcVyhP+97APtqGxporfvHHU+S4bbMwbY+by3hGjjPWeo8z3Vzgd6rW1bLojeui11X41\/BUCeiRgW63rcnyfCbVBFbLUnd4pyF3sf+JBluytKdG9LFqtUSdEaof5LbbWq1Ld1qhOsBAMhYsPW5rtfUU6DPs8\/qiUHg\/XTNBXpvxs4lzN2iN\/r\/Q9oJGOpE1AIdHEdqSpBVUaxfMwu9j8teAfnitkK2ctgY4QoAB9L6s0Kurta6\/ryX647Lsa2eAv2aWYT2sT9JhhuB41Y+zw3Y7kugqzDXi95obqrdGhjqRNQC\/aWvQ1z\/Gzmtv1zS+vXHG0+MgifruLdqWBhGf94z79jWhURdi9H452xs3EzEGurQ77UU4zw7Z97FyrbRK1LHea7TWR\/mnpcM8zGA5\/oucAx1ImpMoOv9SthI4L33t0kRWZUvfX1RoAPOHddqRVZtOeug9FvMB4HhhkotVyNci37eql3w+jw7l1PA5H+n3k8N57lOnQb6LGEOYHWSDKcu1BjqRNQkHRhHgS5O60tfv7YMHZLW\/lF361Wma+mudx0Y1jG3KxaP6fcc+rzWdv3aMvR5hrR6dS+I9ZmrHLduuhenFVLNfjBLmAf+f8RQJ6JG6ZacDjjgojW3Z3TR6tcWIi18fyW3caiaOaOXYNbiNR1UVjf4gfFZq67y5r\/WOibwo6dAH3um4xrn2ZkKcDnPup6gynmum\/n30RSZZ74n1ey6J0s7A\/A0L8wdhjoRNUkHhhnqQrfuZgp143VZx4RxXBjvuyj9uqljZxTpTYVhEdLC98PVDHSPfnzWLnh9niEXDHr\/Tp3nuW6ZQVkX70Yxp3lT09Ra87t5Ye4w1ImoEUYV+DinGEl\/6V+fcfUxHRRZx6yt9WqMa6NkwP2nps8bOqZjPa73UYT1moOM8KnruHNJ1r0\/Nm4Uo\/lhbv2dZGKoE1FTdCFUXrgeG4ukzPKlr7szM48rdODMUp1tjS\/r\/QLhojXM2Fov1PXuBIr16jjPCPRAAD96KPRQxyznea4M4tGaFMG9MS76fO7+7DOFuXPt+\/fvehvNqUE80r\/MI5knSpTL+PtxrVe\/VXHidVV+C4xFuvt56y+wp3lLb0pr5o236cTNvy1Cegf+9jaNJ8kwtwDNeB2KvF+frMOtp9EF37u07P\/R2+UGIoULtwbx6Jv3O9qfJEPr4uIK6QL+U23+Lacn5VLgfJ1NkmFmQBu\/X5Q9z\/jx\/jcDY\/o+PY5\/CmDVKEor\/NmLkmGR3QLd7EcyW6CW47OlTkQh141uwlvyhfirtNT+NH6eGIGOUKtV0c8p25LTLc5CX5SB1m3hC+JA13tmaytjMZrCrXVjiKPQ5w28N33usljPLRLMlc4zLj7zhvyd5QU6vL9V9\/OHEei1G8Sj7QLj5vtyAbdRV6CDoU5ELbEWf5kiXbS6W7rMl74OmzJflrpr2OpeDrFax1aAaVYQllkbXZ+bIscMVaPrc5fFem7useX3q49b5jzDGNbpDZlvfgzgL+OC2HFhvlXk\/xNlMdSJqA2FW59GK9IKkCnSWtZfpGVCfeq5JarC9fOKXsRY49soEVz+cd9nFKlZ9HkuNMUscJ4LfV4xFf5Fz3NgMaPOSVX7rsw3D\/UgNBrmDkN9sf1fvYGohLG0qvwfXciW50yWspz6Ig8xbvKiW6MhurUcnJ8eYL3H3GNLIJXqelesCx79WaYYXf7W+89yYFT9537ewHuzehxCrPdZ5LgIHNs5k1vNPgXwm\/fzUBZteSl\/w9ZF1MykTuBUhp00t2DMStNh7rBQboEYhU7fJslwRW0jMhl\/P4UKLSVcdHfxt5KBeoVRyPV73oWBUaj2fpIMC7UAHek69VtamcVuuHjNnjF2WrjYTVqfp0br92FWFbRxjlZKttSt917k8+rzjLLHNvaRe1zYvx\/IheZ20XFpGZP\/qDZnnmuL1HrsBcbox3KhU3h+eV3YUieiSibJ8HiSDD+pn5kDXegv2MyLC6PVikCLMI8Ohsx7u8tjOtDLdEVnLUaT1wVfpevd0ecoszAxcJ5nObZ13OB5xo8QtQK9jkKz4Ge2yAXVv4FAf1l09bcmMNSJqHeM5VvzWtxW6M\/yRa\/DBoF9O9b70hckRVivuRVajMYIOOt95wosvGMeU1iPzXJs63dj7dunu97HEuh1BGfmBYXjFcLp6YDwxsw7vYUrQ52I+soPi7wiLv2F79\/utDBp8ZUJOWs8vHTIZSxGE2qt64uJ0sf06Nfqffv0eYbx+lyBoZSs8wzj2HWGZ9bfFnIK4d63UQBXFEOdiHrJuMmL\/lIH7FYrAi3BovRrzbCRVrTuij6q8MVutdbvBbrD\/XMxS\/e3TwfsPasrPHCeqxxbTyE0zzMujq2LEa07wVUx9XkdOfaxUQjnVoDbrPA7rx1DnYj6zP\/iDrUgrdasDqoy9GtD471WK33moJFeAj2HG\/o4Rrjq91tKiS546zzP\/HmN9x06zzCOXeW4Fn2x4lrnB7Jynn9BMZbCujrG8mvHUCeiPvO\/vENd8FbYV\/my1WEDHXLSStdFUll3KCvKCqtNFXb681Y9Jox96GNY23LXmc9h\/Y6mLiYC59o6T5X4f1veNDU9J94VwdV+\/Low1Imot4ybvFzpgg9UYx9V6BJ21eh6Pr4OG6taPesOZYVIWOh51NfV5\/ZbrSdVjyl0OF8J8MB51q8pRbqs884zjHNdanZBCWuDeLTq3XzFn2J4Jl3tdY7jN4KhTkR953+p63F1KwQqhY3QLbHL48i63lPdtTUdF0aIwQW5Ea76fc5Kt5r1Pdat81zHsfVxdY\/IjnGu6ziuZVvGznWvwD6AtT52tfvcTAmGOhH1nR+W16Vr1LG64+sIV72PW\/gRqn+px1BDV7RPFwhChh62jLHlWo4prU89nu+Huj7PZzWFnA7oywCXz2tNHavlMxtuqda5Gzvf6mPrXHoVtgfx6EAWjvoIhjoR9Z18ofrTvXakiGnDWPhlpqlsmuzjSje4TGkKBVloe2nyeXXYQQJdr\/5W+bN6dFhuZpxnqzehNBle0ed5W1a607doRQOfOcTNgbd+D52R38eWDBH8KxeYV8b9GepENA+uFMwBODeW+oQRTFXoL\/QnxlKuTp3HRSA0m+6G1hcm11s6z3pffxkXEU7dn9niAr3qqoi1GcSjNbnQOZWLHT1EAHfhy1Anot4zbvISUueXfpl96WCqJGMxGl\/dxzw2uv0t+zW3lsuc5zLPnUWvAt1rlf8jFzrWReVY7o2wBYY6Ec0Rq\/XqO6vzyzhQnW2psgBLlqwAa6obWrfWLVnvqzRjhkNIU+fZt1Pn39AspIt9W256E2qVO+9lit3lBR5DnYjmRV7LtNawEXkXEmjouFmL0aCpY0r1d5ajmgrktCKfp8jvooqzSTJs+hhBEuY70sX+lzGF0Oem2G3qCx2GOhHNBeMmL1qRYCjFWKpWq7Pq3RL6TE0dMy+wrVX06pB3nuuqts\/S1GfLJdMkT6Xa3+pid8YAnk6S4WrofDDUiWiehELufUPd0chpIWY9VllgMZqmut6R01JvqpXuKv6zzmXo916XcReV7jJm7lrmWWEObzW7rPPEUCei+RFYpxw5gVDVbuCY44aP6+hjNNVKd+GqLyKcpluyofOMAj0IVTV2Ti3eLVzf5HSzo+wtXRnqRDRvdIuq0a5Z+SLVK9lBiqpyv2RroLummw4gq7X+sslzjB\/nWS+uA\/yoL2iS9ZlrJwvGHARu4aodAfil7C1dGepENG90y9UMgjpJD8FLb9N+XjdoXdRiNLVW+Afo\/Z9MkmHj5xg\/hhv88wzj303Qn7lWXhHcv3qxGIO7petMU+sY6kQ0V9RUs6OGC9UuSbD94lpP+vGGuQuINj7rnnT5HgF4PkmGeonYRnnn+bkUhbVxQVE6PIvy7sduLXnrcxXtlW7peu379+96G80pWf\/X922SDFfUNiKT8fdzNEmG1o08Oifrgu9K4VAbXeCdkxXFdmdpvdEPsuztlVXyJsnwmv\/vOsh97\/dy5plDwnynrkI9ttSJaB4dyJ2zliLQRecLo1Ax0tV+nBPoZ3LDmFrvz85QJ6K5M0mG38oUDy2CZfu880iq2vPmmzcS5k7noZ4m0UqaRHfkZ6au4jSJbrp96MeIiIiaJIVwu9KtH5qi1miYO6XG1CU0P+jteaI4DY5XpEn0GcA6gHdRnD7QjxchFwP\/BbAC4FkUp4l+zjIwxkQ5pk6FGX8\/vR1TJ5pV3WPqUgi3l9Myr23MPE+nLfU0iWIJ9HMAz\/TjRUVxeg7gsfzzRZpE6+opREREpkE8Kl3hL63zAwB\/BwLdX9K1lUBHDaF+WPBnirSuY\/lnEsXpV\/UU4OJ599MkepEm0ees7vUoTt95x3qhHiYiIgq5oTdk8dZqt+acj2U6Xu6Srk2oFOpRnN4t8qNfJx5Jd\/k5gNf6Qc9bCf8irW\/X7X4nTaJH6jEiIiLLqt5gkRXhPgXWavfDvK3VBqdUCvVZqVb6a+k+ryyK00MAX+Sf99XDREREltxQz5im1oswdyoVymUVwGWRVvQr+efPoa53XDzXf4N3JbiD1L5vR3HqQn7hGYVOvSiUU383l4WM8ru6Iz8rbrhGFzrKRaB77rr33HdRnGb18gAyO0Jevy77cMzjWbx9uPcAAF\/lIvIw631UeW2bjL8fFsrRwrEK5WRte3PlOhlv3zPWanc39NntOsh9nbTUvVb0l6xAn5Ef+myt95BMY\/wsF1\/3JaQhoefqJ1bkuesAPkudhAt\/99xX\/nMtaRK9kJkRsQp0WMezyMXHZ2MY6Ka8\/1dpEpl\/a1VeS0StmWqpe9PU\/lGB3quWudZ6qMuXp\/tyNVvdaRJ9SJPou2qlA8DldvmZml4nFwmuda6\/xKkf3nqzHhKZ+eD3qKwDeCst3A8SgF\/luYn8t\/9c1zNjcWH9VWo3nsnPazk+3PG811ySXoZX3n7eeftw7+VcCjWvqPJaImrVlZX6pDV\/DOCJv13WxO9lmDuth7oK2qa6xt3FwnpWC4w64Vrcr2Xo5VkUp0kUp7e9QkfIcz5IIL6O4tQ991kUpz+r4sr7GTMj3gF4LK9\/LMdKojh9DOCuF+x3Ai1mv+DyWRSnD7x9uPcSWl+hymuJqD3bg3i0O4hHe3Kfc72IjLun+VYfw9zrVegk1G96\/x0Kdb9F4\/NbWs\/keRbdkpvJIB7tyI0jqF5fJGCvFEhGcapb7Ddl3NytQXBJtvm\/ZzPUozgNjllLvYX\/N2bt4zLoQ2PvGXUeVV5LRO25Lq3yP1RX+5EX5r1cplcK+E5dr0IXoX4ZsqHx9ChOX7sWjXrondfSSUJf1lVDXdbvdbfK4w0U6qd\/rz59oZb1XP\/3X\/r3LHS3f5AMB8ykymuJqHUn3m1Q+xrmW9Y685VC\/Uq8hn\/0l5nrDg+10usw077V+r23AIx5V6T65YwhX\/nd5cxe8B+zWtm51P6tUPff69uSqxVWeS0Rtc+tArdW5Z7mTZJG5ycAb6x15iuFuoyP5v3oUHf\/rmVuukV16xb6IpX1ey+7MEQvf6mO\/HIvf\/TjdFWaROtyoflBKt6tYkwtUQV1n+X1RRY3qvJaImrXkdzOt\/VV4IqQhW8OpNGp58pfqjRPvaArc8u9L9HDjNXmLpWdp+4UPc4gHt2QOYjWcn9HAHb0xpLWCixBmPWcNWPloqL6OE89c32DJp4rBXDWBeYUax\/Swn5rvP6rLHEcGgaq9Nq2cZ46LYPAPPWzSTKcmtbWB5JRO0Ylvm8MYGuSDA8qtdSjOL1W4KdQCHchZ\/1eyNXQx4o\/f8mYR9bPPTmW9TNroNNFqL5SoeqK4x5I9Xvwgs+RLvrb8jq\/XuOmzDMPTqmr8loiak1rN1wpQxfBBbyUaXYHqKH7fd5VaQVTz0k3t+vqPpeenttS7fFOKuMLXXRGcXour\/tZLgT81z3K6lKv8loiakWvaqdCRXCKq8zf9qfZdRHqWYVPTQgeb5IMtwD8Ll0XtHjc\/QUA4EHRAM8jFwN3VfV9oWCu8loiakwv5p7nFcGJo6zK\/C5C3S8caoSqMs4syJMui1UA7\/VjAB5OkuG1Kj8AfgLwW00\/v8vyhKEfEjLr4nIcOxToFRcn8ue4l\/17rvJaIlogBYvg\/DAPFnFXKpSzioryyBjiIxR8\/SyFcup9Pi5ajCQV8Hted0dviycsRqHT0hbK6ccA\/I9e7AYXz4uliA7IOZ4mFwT\/K\/88j+L0f9RTgqq8tinG3w8L5WjhBArlfssKyqYULII7ArBT9P110VK\/LBZqcN6uv99g97vmtdpfyqb\/SKECzR\/9e5\/q4vaq4oPSJHqU0Zr3u\/enLjarvJaIFluBIrhCLXOti1DPW+xD81tXoS9I7XK\/OYuXTJkkw29yC76fpEv+T\/0c6j9plfs9NC\/SJHrlLYr0Qariz40LAOBHa\/oVgP9Nk+itWlTJ3XnNsW4XO9NriWhxFSiCmynMndZDXbrPL2+ioR62+F+4U62tALffrJXLMk2S4ekkGW7KuDjNJ72W\/CNvUaQ70mvk39RF8\/8+Xave\/bgLx3MZ4tEXBlVeS0QLxlt+PFQEVynMndZDXbjuxiKh7ndN3pEVueI0iV5YU4GkS9+16NmtucRkKtltAI9VuLu56rclUP3FkS7\/JmU5W1eproP30NvHVM1GldcS0eKQIrhPMo7v3yzGcXeAqxTmTuuFcvgxlunuX\/0gZy1wSHel1VX\/LFI3ffEK8c7l1p6hVtjCMQqdelEoR\/PB+PthoRwtnLYK5aQIblfu\/GbZlwK4qWlpVXTSUpcQdwVzU61tw11p2fgt70O1Qpcbx3S3u3y3TIFORETdkxuDuSI4HehjKcRu7HaupVrqdZKuc7dEpusGrURNT\/o5dGvXRWW0tNhSp8KMvx+21GnhNNlSH8SjLZmipsfMx9Jq3\/VXf2tCJy11XLTWX3st7cxpRUVIK91VFCfLFuhERDSzNb2hjIwiuLEsDLY6SYY7TQc6ugx18Vj+945foDSjR1Igd84pQkREVELoLpmZMorgWg9zp9NQl+ltLoBfZSzUkUkq3l1r\/wHH0omIqCkybr4H4F+1rOsZgKddhLnT2Zg61c8YE+WYOhVm\/P1wTJ0WTmBMvdDfulS0b8uPv3DMWMbLO1+BtNOWOhER0TyQIrhjtRLclW529ZJOMNSJiGjZhe6MFiqC62zMPA9DnYiIlp50rfv\/DhXB7QNY61uYOwx1IiIimdaWUQR3BOCXphaNqQsL5RaIUejEQjkqzPj7KVQ8RNUN4tGq3PbZctrnEJk3gUI5yEpv3wJFcNuTZLjnbesthvoCMb6UGepUmPH3w1CvaBCPtgFsSoHVN5kP7RY6uRG4wYflDMBeX4qx5llGqFveA9jqYzc7fnwW94NJMtxg9zsRUXNuSBfuE6mafiL\/\/rVEoEMKtP4cxKNd\/QA1Ygzgodx+u1eBLvdjP5CL8I\/yd+X+pjimTkQ0R57oDVS7MwAbfepul6K93UE8+iZV+Pf0c+RChKFORDRPpMuVmnEmle3H+oEuSJi7or0naqzfN3Zd8Ax1IqJ2nUhR1nMZsz0yfsb6RZ5eBM6C6sX4uQpzfftW7b3Mlz8GC+UWi1HoxEI5Ksz4+2GhXEVyX+0\/1eZabvNJs8kolOv8713myu8UHGYZy0XIgb+RLXUiIiKg0zF0mSlxWjDQ96V1fiXQwVAnIiICAEwFZBsG8WhNlqH9K2PM3DmSnp7gMAFDnYiIlt1JKCSbIivX7QL4p8D0xjOZYreRN3TDUCciomXXavGhjOsfF+hqdzeOWSs6xY6hTkREy66VZXi91vlH745vIW7cvNSNYxjqREQd86YwUTcyu7TrUKJ1vg\/gp6xx8ywMdSKiDg3i0ZabjzyIR25deFoQJVrntdwFjqFORNQRuTvbG2\/TlXt6Uzvyis9mJRdpea1zV9G+UcdKdgx1IqLu6Bu0lO5upX6ShYf+yWid+2Fe20UFQ52IqAPSSr9yY446WmrULW\/euV5J0GkkzB2GOhFRNzpdkpTqJ6vCheadNxrmDkOdiKgbDPUFIbMXPsmqcNpZG2HuMNSJiLrBSvcFIGPnxwB+VQ+5VeBW2whzh6FORNQNq4uWOiB3RytFjZ37a7b7Yd762gMM9cX2\/+kNREQ0pXCvScaa7Z2GucNQX2z\/T28gou4FFpk50xuoNdbvY4osFKRvj9qLMHeuff\/+XW+jOTWIR\/qXeTRJhizGoUKMv5+zru8xvQA2jLHW3+R\/P6rtkJt3ULNWAfyhtp1MkmEw2AfxaFPWFPDnnJ8B2OlDkPsY6gvE+FJmqFNhxt8PNSMr1Kk7v+mCNmmZbxvd7L0Lc4ehvkCML2WGOhVm\/P1QMxjq\/TQGsCWr+m3Kf+sCuN6G+SAerU6S4SnH1ImIiC4C\/G+52HriBXqvxsw1Kdxz0+pYKEdE1AEuB9t\/YwBP+xrmuFq4dzmtjt3vC8ToPmX3OxVm\/P2cyHgizW7LKMr6bZIMPxnneyzdvtSstcDKb85YiuJ2Z7mfeRvk3ux7+mYxk2R4jaG+QIwvCYY6Fca\/n\/pJt6i+sUco1Hm+WyCBGKpneA9gu8r9zJskUyF3jRkVgIQ6u9+JiLpxojdQp36fJMPNPga6rC2\/JwvemIEuN4zhmDoRUUd01+6q+je1Z3+SDA\/0xq6pIjg9jOO4Qr4NMNSJiDqji+WujI9Sq\/TvonNWEZwytqryGepERN3oXTfvEutNqA\/i0cYgHp0CeJMR5s8BmFX5DHUiom70JkioexLmn6SIL9Rrsy9hvhOqzGeoExF1QC9JSsvJK4L7mFEE9x7AT5NkuBUKc4ehTkTUHVbALymvCO7fjCK4I5kCWbgqn6FORNQdfQOR4J3CqFGtDoUM4tG2VwRnOZMpdhtle3QY6kRE3dGFTjfUv6kdrVxMDeLRphTB\/ZVRBOcq2meaYsdQJyLqyCQZHkurjBaYVwT3d6AILrOivQyGOhFRtyp9iVN\/FSyCe5lX0V4GQ52IqEOTZLgjBXPjsuOn1E8Fi+D2paJ9u44wdxjqREQdmyTDtbbGdalZBYrgXEX7VtGK9jIY6kREPdDEFzwVVrlAsUAR3JmEeemK9jIY6kREtOxm7iUpUATnbriy2mSYOwx1IqKekTHZDeNn5vChehUognMV7WtVK9rLuPb9+3e9jebUIB7pX+aRux0fUR7+\/dRPiqWssdUj+d8bAG6px\/L8xK762Q3i0YYEsW9\/kgy31DbTIB7dALAd+L06LwHUUs1eFlvqRETt+1V+ygY66hj\/pSmF7mVfoAiukYr2MhjqRETzYywL1lC9MkO9QBHcEYBfmqpoL4OhTkQ0P7b1BqqFVeBWpAjuxKto78XFFsfUF4gxJnrG1aqoBN2lyDH1igbxaFMqq0\/lZ9VrFfr\/vRZoAUIKrg4A7LVRPb3oAmPqkJb2MaQIDsBOxsIxZzJm3rvvV4b6AjFCnagKhjotnIxQfygXT1lFcGMAu7IKYC+x+52IiOgizLOK4NwNV3oZ6G66I0OdiIjoYiaCNQTiKto7maKWRdYz2JIivn\/AUCeieZcm0Xfv545+nGhGRxLmnVe0a97CN6cA3vhFfBxTJ6K5liaR\/yV2N4rTQ+\/fRFdkjKk7R1IE17uiRHnv2wDu6cdwcf+Aa2ypExERXXjZ9A1XZiFd7J\/kYsQMdIehTkREBJxNkmGv1gHwxsvfBNaXd8ayNC1DnYiISOal94IKc2vRG+dMpuKtugsShjoREdHFHPVOlQjzI1nJbnWSDPf8qnyGOhERLbuTLqerlQjzfW9ZWnPcn6FORETLzgzIppUMcze9LvO9ckobEfVWmkTrAB4BuAPgpmw+lJ\/XUZyeF5nSlibRCoD7sp91b1\/nAL4AeBfF6Wv1siu84xxGcXpXtt3x9ntT9nUIIIni9Fy93n0Od\/wvAN65z+E\/1xc47k3vuG5u\/rk7N3mfxZH9+O8L3md4HcXpV\/WSS4H39Uj2t+5v75PAlLank2S4q7Y1Rt7DXk6QQ8J8p8w8ebbUiaiX0iR6AeCzhIQLYUgAvQDwWUI\/kwTNfwG8kiD097Ui+3uVJtFnCf9C0iR6BeCDen\/rAGIA\/3XvLU2ilTSJPhjHX5fPcfncIuTzfJbX+ovtuAuXV2kSfcj7LGkSxXJeYi\/Q4X2Gz2kS3fe2Z5Lz8Urta160coc1765vH3MC3W+ZFw50MNSJqI8kIGJv0xcAz+QnkVbpTQBvvedkcQF36O3nmbSUnfWi+5NAfCT\/fG3sawWAC9YPEr7n3nO\/qOe+zQthAOsS6K\/kNfqc+K3qO97xp8j5fSH\/\/Cr7uAvggbxHyDFeFbngUOeDFG8FuI85U9NmDnOH3e9E1CsSEC5wAOBZFKeJ929IWL0wgmSq+12e+yjUzS2h9cEL\/ql94OJ5+svyC4AHfhe1tGz9C4OvXlf7Xf\/4XkA7U58T9nHP5blTXezGuUuiOH3m\/RsyZPBB\/jn1vuQ5\/nszu9G99\/VFzt1NuSBIsrrtuxbofv8tb6x6FoN4dCPnrm9O6W72ELbUiag3JID9FroZdFGcnkdx+li1eE3y3KkxbieK0y\/S0nWKdDmf60DHxb7eqX3dlGCfCk4JZT+YixwXAB5bgY6LfSbS6nZiGTf3ubB2n2HqvKj3didnTX1XI\/AsitPH+pwsq0E82sq56xvqaJlrDHUi6pP7Xov53Ap0Je\/xovyWeW53c04Rmd8Nj1APgdDd\/3kO5cIhSM6Z\/94uLxYknF3Iv8v4DFDnJCvUAeBrgd\/VUvDGzd8E7voGb555bWHuMNSJqE\/8YDNbo768gCtKWutOoXDVGxy1L2T1Juhu\/pwWMYwLhhD\/ef4+\/f\/O21eZC53c39Wik9ug5o2buzAPzjOviqFORH3ih0dWK3ImaRLdTJPoUZpErkL8v+62rfq5PVX0nPgXEn73+5VwTpPoTuhHPTfvYiN44bIMBvFoW7ra\/9CPiTMAvzcZ5g5DnYj6pJFQlzB\/601t03PfF43f3R8K9Q8FfijDIB6tSVf7X4Gu9jGAh7KcayvL0DLUiWihefO63diyP7XsrvezDMwpboQbekMW6WrfAfBPoKt9DOC53GhlTz\/YJIY6EfWJ3zqvHEBS+e3mdUMqtP9HqrSTKE4P3Y966bzzz53ZNR7F6bUyP\/r1C2ZNbwiRKXHHGVXt+wDWJslwp4v15BnqRNQnfqjnFWcVkTs9bkGFhjEuL16KLCpDP6hCOGs1uCMAvzRR0V4GQ52I+sRvMefO2y6wjKlf4GW2WPFjfvw8yPu8jr8oj39O\/XOQV\/y2TDb0Bt8gHm1mFML5RXCtLDebhaFORH3iT7O6KSukZcl7XK\/zHqJXpuurR3ktbDlnl3P91Tn1Az7O29cSMcfUpXV+AODvQCHcc+lqb6UIrgiGOhH1hiyG4s95fmG1xuUmKUVuHuK3TM3gNpZW7bsPofnsxme5spKe1A64kF\/J2pdjrEi3iG7pDV7r\/J5+TLraf+pq3DwL134nol7xboLiB\/YXFUaPvJuavPOC7Mq67YG12P2LBneHtXN5bB1SROY9B7jYV+4tXp06n6se\/+Kdl0Ov5b1i3IHutSyle0XG+T1UU+HWpYv+MIrTB952YPp9Tb3vvgqs\/Q63\/rus174XCPMxgK0+tcw1ttSJqFekZXnXWNHshfy47uXDvKlogbXY3X5e+DdbUYHWV8\/8NdnVOfEDPbECHVfPr16i1rXy3Y9bsjevN2RRrEngh1rnL2WKWm8DHQx1IuojuQnLXQCPVbi7MeLHUZxO3STFIncpcyHmnu\/v57Ys7eq38DO7pLskYX1Xwt2vbHc3pvlZ35lNk\/P7QPaTGEWEX+V8uHO3DLalBa\/Hzs+kFb\/dt652R9ab3wa734mI+m1eu7n7KqP73fJSbonaqzAfxKNVqdjflP+9DgCTZHiNLXUiIqKrxjJNrTetc6nE3xrEo2MA\/8pd4O7pngWGOhER0Q8nfZqmJl3rezJk9Maq1BdPwVAnIiK6dAJgo8sV4RyvVf4xsOiNcyIr2e2CoU5ERAR4gd5pd7uE+WlOqxzupjGTZLjmr2THUCciIgI2uwx0FebW2vK+9+6mMfoBhjoRES27k6663EuG+ZFMr9sMvV9OaSMioqURmNL2cpIMt9W2Rsn72M3pYnfOZGpd7r3Z2VInIqJl11q3+yAercpNYj4WCPQzAA8nyXC1SKCDoU5ERIRPekPdZJ75jswxt5ah9ZUOc4ehTkRE1CC549sxgD\/1Y8rMYe4w1ImIiBogXe2f5H7sWUVwlcPcYagTERHVTLrajwH8qh\/z1BbmDkOdiIioJrKsq+tq13d8c47qDnOHoU5ERFSRFMLt5VS1u3nmG3WHucNQJyIiqmAQj7YAnGas0e6HeaOV9gx1IiKiGXiFcG8CXe37crOVxsPcYagTEdGyW9Ubsqg551Yh3D6AnybJcMu\/2UobGOpERLTsCod6zpxzP8zNtdmbxlAnIqJllxvqOXPOOw9zh6FORETLLhjq0tW+G+hq702YOwx1IiJadjqs\/XHzUwBP1MO9C3OHoU5EREtvEI\/WvP\/e8sbN\/ar2I6lm712YO7yfOhERLY3A\/dQB4KncgnXHGDM\/A7DV1rS0KthSJyIiAv6S+eZ+oI8BPJflXHsb6IN4tCVFfAx1IiIiwxGAtUky3NEP9IFU4+8O4tE3uRj5FQx1IiKiKU9lFbjejZvLDWMOpBr\/iV7JjqFORER0YSxrtO\/qB7omXezHUg9wTz\/uMNSJiIguAr21NdqLkjA\/lS720N3fLjHUiYiIgJ2212nPosJcV+P7jgA8BLACTmkjIqJlkjGlbWWSDL\/pjW2TOfLWtDrfGMAegF097s9QJyKipREI9aNJMtxQ21pVMMzPAOwC2AtdgLD7nYiIll1n4+gFu9nPADyU+fK7oUAHQ52IiAitT12TqWmfSoT5nn7QwlAnIqJl11qoy6IxBzIEMHUjGeGvZFcozB2GOhERUcPULVyD88wBvASwOutKdgx1IiKiBg3i0XbgFq6+I7md63bWmHkehjoREVEDZNz8WG4Wc2U5V8+ZrGJXy7K0DHUiIqIaqXHz0CpwjdwBjqFORERUk0E82gFwnDNu3tgd4BjqREREFXld7X\/mdLX\/XldXu4WhTkRENCOpat\/L6WqHVLWvTZLhgX6gTgx1IiJadjf0hiJkaddTAH\/oxzwnAH6pWtVeFEOdiIiW3ZrekEUK4dxqcKGu9jGAp5NkuNbm3d8Y6kRERAVJIdy\/GavBAcC+LCCzqx9oGkOdiIiWXW5LXRXChZzInPOtNrraLQx1IiJadsExdW9516xCOL+rvbY557NgqBMR0bIzu9IH8WhT5pxnLe\/aWVe75dr379\/1NiIiooU0iEcb0urWfnJzxwfx6AaAvQILyGw1Nd98VmypExERybi6N00tFOhHda7VXje21ImIaGlktNT3AayGuuIlzHe6HjPPw1AnIqKlkRHqIXMR5g6734mIiKbty0pwG\/MS6GCoExERXToB8BTAisw1b20luLqw+52IiJaG0f1+IpXuB30sfCuLoU5EREtjEI\/WAGwD+ATg0yIEue\/\/B1bUJdZAl87BAAAAAElFTkSuQmCC","width":247}
%---
%[text:image:168c]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:1ae4]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:0aad]
%   data: {"defaultValue":" F_0*cos(omega*t)","label":"The particular solution is x_p(t) = ","run":"Section","valueType":"MATLAB code"}
%---
%[control:button:1c7e]
%   data: {"label":"Check solution","run":"Section"}
%---
%[text:image:1945]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[control:slider:7474]
%   data: {"defaultValue":1,"label":"Damping (c\/m) = ","max":2,"min":0,"run":"Section","runOn":"ValueChanged","step":0.01}
%---
%[control:slider:189b]
%   data: {"defaultValue":0.5,"label":"omega_0 = sqrt(k\/m) = ","max":5,"min":0.1,"run":"Section","runOn":"ValueChanged","step":0.02}
%---
%[control:slider:3a3a]
%   data: {"defaultValue":0.5,"label":"F_0\/m = ","max":1,"min":0,"run":"Section","runOn":"ValueChanged","step":0.1}
%---
%[control:slider:19b4]
%   data: {"defaultValue":0.1,"label":"omega (rad\/sec) = ","max":10,"min":0,"run":"Section","runOn":"ValueChanged","step":0.02}
%---
%[control:slider:0a21]
%   data: {"defaultValue":1,"label":"Initial position (rad) = ","max":1,"min":-1,"run":"Section","runOn":"ValueChanged","step":0.1}
%---
%[control:slider:4261]
%   data: {"defaultValue":-4,"label":"Initial velocity (rad\/sec) = ","max":10,"min":-10,"run":"Section","runOn":"ValueChanged","step":1}
%---
%[control:dropdown:6233]
%   data: {"defaultValue":"0","itemLabels":["0","10","20","30","40","50","100","1000"],"items":["0","10","20","30","40","50","100","1000"],"label":"Time offset: ","run":"Section"}
%---
%[text:image:090e]
%   data: {"align":"baseline","height":100,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAUsAAACWCAYAAABXYKrbAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAITcAACE3ATNYn3oAAAKraVRYdFhNTDpjb20uYWRvYmUueG1wAAAAAAA8P3hwYWNrZXQgYmVnaW49J++7vycgaWQ9J1c1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCc\/Pg0KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyI+PHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj48cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0idXVpZDpmYWY1YmRkNS1iYTNkLTExZGEtYWQzMS1kMzNkNzUxODJmMWIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyI+PHhtcDpDcmVhdG9yVG9vbD5NaWNyb3NvZnQgV2luZG93cyBQaG90byBWaWV3ZXIgMTAuMC4yNjEwMC4xODgyPC94bXA6Q3JlYXRvclRvb2w+PHhtcDpjcmVhdG9ydG9vbD5NaWNyb3NvZnQgV2luZG93cyBQaG90byBWaWV3ZXIgMTAuMC4yNjEwMC4xODgyPC94bXA6Y3JlYXRvcnRvb2w+PC9yZGY6RGVzY3JpcHRpb24+PHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9InV1aWQ6ZmFmNWJkZDUtYmEzZC0xMWRhLWFkMzEtZDMzZDc1MTgyZjFiIiB4bWxuczp0aWZmPSJodHRwOi8vbnMuYWRvYmUuY29tL3RpZmYvMS4wLyI+PHRpZmY6T3JpZW50YXRpb24+MTwvdGlmZjpPcmllbnRhdGlvbj48L3JkZjpEZXNjcmlwdGlvbj48L3JkZjpSREY+PC94OnhtcG1ldGE+DQo8P3hwYWNrZXQgZW5kPSd3Jz8+d1SxtAAAJSFJREFUeF7tnX+MXFd1x7+usrCQRutFIqZQdh3TUKWdxg4TyRKi8li26SAh7ABhREFkLZlEdCXY\/EHXRVWzUSWaEaqYUK1QAlJspApt+JE1qMo0dpR1EZUieRKvO5QWsGNvSCmIZr2CkIWJ5P7h83bPnLn3\/bz3zZvZ85FGuzNv5t33497vPeeec+\/bdu3aNSiKoijh\/J78QFEURell2yBYliOzCzsB7ARQAbAdwB7atE98lXMFwGUAVwGcp\/\/Pd+q18\/KLiqIoURRSLEkcK+w1Kb+TkbMAlgAsqngqihKHwojlyOzCdgBT9Nott3vkCglnQ4VTURQbfRfLkdmFCgnkPXJbH7gCoAHgRKdeuyo3KoqydembWJJIzkWMO\/aLNRLNhoqmoijoh1gWXCQlKpqKogB5iiUFbRoADsttA8AVADOdem1RblAUZWuQi1iOzC7MkDU5JrcNGKcATKmVqShbD69iSRHuEwNqTdpYI8FUK1NRthDexHJkdmEPpeQMujVp4+FOvTYjP1QUZTjxIpYjswtTAB6Tnw8hZwEcUbdcUYYf53PDR2YXGltEKEER\/SUKXimKMsQ4tSxHZhdOFCS5PG\/WAFR0BpCiDC\/OLMstLJSgcdklGqdVFGUIcWJZbnGh5KwB2NOp1y7LDYqiDDaZLcuR2YU5FcoNxgAsUsqUoihDRCaxpKj3A\/LzLc5uSplSFGWISC2WND7XkJ8rAIDdlBWgKMqQkGrMktzMpZzXnRxE7tKZPooyHKS1LOdUKGNxQnMwFWU4SCyWtMTaZ+TnipExmhs\/9KzPT+xcn5+oyM+HmfX5icr6\/ESu6WLr8xN71ucntAPuA4nccHK\/z3t4Js6wc7RTr+UmmiRac\/SwtrnR6RWvyfLr8xN8euvJ0emVKfGVoWJ9fkIOQ+0fnV7xGtSjMhfZOrDey1S6SWpZzqhQpqKRVzoRCeUz1KgO+47MU3l8eus9eVqY6\/MTU+vzE1dJTPJCjtfn0Tk0xILZuXW+ynViiyWNvWmaUDrGqKPxCrM+OGPr8xNHxGcuMQmF93NFt1CPAfB5jhuQFS3H672WTfdV5jJP5tkpKQnEktw6JT0P5BDsaViWxPPZmE37PpzTuBq3rvKqn6aOYMzz2KXpGiPHc1biiiU1ctmzKcnxVrlJnGz3yNbYMkEWq0mc4fNcsWnh8SGhSc8WNEgQpVUZYBJRV9jOa59al\/kRSyx9V\/wtxD0exy7D7tGYp0Zla8SgsUuf1qVJnEyfucQ05BDg5XzJBQ970kDYfVccEimW1LhtFouSHOcNmhpUmHAhxvY0RO3TS0MOsfD29ckdDggT07RElanWZU5EiqWPxr3F8XE9p0Lc4QCnDSrCBQ\/wYm1FXMOwbakhEY7KBOmHWMJXp6R0E0csfVSArczYyOxCnAaQhDj3aLdj4Yp7Dj4acljZ93hKI4pzjZ2Om8ZwwQP2Ob63ioFQsaTFMqJ604GiU69tvA7cukNuzos4DS8WIS6pCZfWZVxROOJSvCiwE2XR+rAu456vs3uboEx46pQURqhYOr7xznjX28bx2cptaB6r4Bdzd3UJ4C\/m7kLzWAWfrdyGd71tXP60KBx2GOgx3aOT9DA1iROxJIGOEqwA1zmQcl9XxHu4FkuDC34WwIPsPeeww84hyf1y2ikVhfX5iWvsdVBuDyPLb01EiaWsmH3lwK070DxWwbOffi8+\/77bceDWHRh\/w+u6vjP+htfhwK078Pn33Y7mJ5PUtdxxdXDyHp2i6YamGR7yu2mRAr0G4H4AdwFYFtvgSrwsbukclc8ZIwvUFXJfJ0anV+YAHBWfB7i6zkn247pTUgRWsSyaC\/75992O5rFKj+v83EurePrHP994PffS6sa2p3\/8867vFozMFdtg8awFDXt0euWERURcRIvlsR8ZnV5pjE6vLFqEcbencoPzNK0d6tItlR3bIjbLPim2wXINEhERQFvOw6JWurGKpaGC9I0vf\/BOfLZy28b7515axae+fQ43zz2BvV96CtWvLm289n7pKdw89wQ++s\/\/jm\/9x4td+ykYLq6vtHgWR6dX+DPMnVuXFEjgAr3MF3Sg\/01DAPJY0yCP\/RT9NZ2nk+mAdL58TPiUuMYzhk7JRTDNduzLtM10PV2Uq1govFh++YN34tjed2y8\/9yTF7D3S0\/hq89exOqrv+v6bsDqq7\/DNy+8iG9eKLRYTjqY\/ijFQ1pYJhHJel9lmXIuOixWnfxdIiwu+BKuC\/Rli4VnOo6kyOPuOl8STtM1kL9Liu33U6PTK1epUzKds0lE+8bI7MKekdmFxsjswhJ7LY7MLkw5HLfPhTCxdOE2ZeLArTu6hPJT3z6HLyz9sOs7A07qa2yw8K7IpdjovRxD3JcxECAbcY9QWKzLrGk1pt\/ysmVHAUcpNbLcnvO1iHJq0TIMrwScFPfY1BmmLtclI7ML20dmFxYBPE\/r3+5jr8O0AMp5D2l03jCKJSm+6Wblypc\/eOfG\/19Y+iG++uzFru1DQGqxNDRi21JsJhFJZV2SyPJlwtakQDNMDVkecxLkMV8hixLY7BikQMMiZLEwnK90wYFNy1Z2SllcYnmuAV3nQp2SLHfS0fhwathjZ6QnIJkE8AQ9+LDwGMUyYyN2wodvfztuedPvA+RWf2Hpv+RXhgFbo4iDrGAmiweWz9OWK8XOJtBB8EMGIeTvkyB\/azovU8eQJaUmTpkBLjsHeW9BQm16Hr3pnE2\/zxO53mcUj9ETGApNYcXywB9tRr2\/deFF6\/jkgJOqERuCDrAJF1lCcmwrbSOWFdpYJkOKS6oFPSyRYblvUDReCnSWtUTlsfaUyTBtSyxaJOzy3sIiirCUK487N8hKNB1\/FKbOplDYxDJVI3YJTxF6+ieFTgHKQppKBYPYLZvcQ4asiJMpXURZbpRYynJh2Ecc5G\/WQh6pYBKVxKJF8HKNLniAQ1dcnitoyMF4vnRMQVZAQJpyMxF0gq\/f9tpfy20xmaR0xcJiE8tcL7SJwAUHgNZPN3MntzpkeUhLydiQAqihSYvL1CitGKy7sPFKYHMcMVO5hPyNyZoKMOWXTiZNUjfMUgq9xoRJqJNaefJcYel0OKbrYdpPLNbnJ7bTw9jkK0zMtq\/PT5z47bUbNnP8kpP6mPOgkGIpE89fePnXXe+HidP\/uJ9Pybq2Pj9xeX1+Yom9FtfnJxrBewCrhuBbnIYsG1zSRiy\/H6dMGBpyogCEQaQRVjZZWvJcYehgopDiKs\/DxKJBqJMKgCkoYjofjunYkpaL9fmJmfX5iatUx54xvJ4XdfUqq5cnvrf+Dt9LOZ4W5Ye+5I+zYhNLpX9MGtIseOqFZI3G6qKQDc7UKMOQjc8qWALTsUnhDUOWC8s+OSYLb3fC8VL+3WVLcKULS85l7LniltSqs1FlW1zxRCli5LZ\/0dAxhTEWUi+HDhXLwUc2TiPU4LoalKVx9mDJ+4tb7lJGa0t+N3TsEJvnKoNaMFiLRgwBNNnRhGH6blyRlucKy\/5MmO5H3HKRwvLmrAFYLL3uZ75ngbQAnEnwckohxfLS\/73S9V4ulqFssCZz7yKQDSpuY5KNuCvHMQay3FiWiGU5NrkvGyaRibsYsTzfuGVmHR82fS9u2SZL37Q\/G7E6EgtjAO4Z\/73fvDxxQ6b4QugYOIDjo9Mrh+K+5I+zUkixlGOU7\/rDwi61lpmfvPbmk2xJteAlo6qSZbISjyQRLcPiGnEbk\/yeqWGG0fP9mFat6TuxxMMyiwgxLShebiwXXCCF2nQeXRgCSohjRQdYovGxOkPLuHDAKVpRaj+AO0anV7YBuIXe76eVlx6kerXzr276nvx9XK506rVY97ZfFFIsIVYM4jmXw8anX\/7QidHplanR6ZUKe+0ZnV7ZFvLaMzq9csSWThIBb8iRKUQGlxQm8YvA1AhCG7JlLnhs8SCkaAHAVNhYnmHWjmkfUcjfxMkvNVl2pusWhrwvkfeXMIn5MoljsKLUUpD9MDq9cpneL41OrwTL1R0BcGT6pu\/tN4h2HOJ0Yn2luGLJciuP7X2HuuLukA3Z1FA4pu2yUYZCAicbkHfxsMwiGrPsO0Ceb6IyYbfy5H4lcvtairLlvUXUdabOQZa9DKASlRrGYeK5RNdXjlOH8XDRrUoUWSz5ikHjb3hd14IaQ0YSSykzhsU1woQDhu1JxysDZGPYHWbhWSwNuY84mCLjpn0HZHXBA6RwSUHawBZAS2hFB\/dWilSoWNJxdeXP4vrwTqKyOZ167TzNAjQNg3DWABzt1Gth96Mw2MQydo\/iixde\/nXXwhnByujDBlWsvOECYhUtiwueRrBg+Z2xIZPLKsXjZMoGLMdpYVsByeD6S8FLgjzfsPxS2SHB8Pu4yN\/1nKdAlt3I0EFs0KnXLnfqtQqNaZ4SFv5ZGgfd2anXslzjXLGJZZpK6ZzPPXmha05481hlmC3MPInboEyfJ3LBAxJaPaYIvzzmWCRMUpfnm6pM2F1x2\/nKcuPmzpqQ92fMNm5Jn8vMBJMlnppOvXaiU68d6dRrOzv12jZ6VTr1WqNTrxVCZ+JiE8vMPYsLVl\/9HapfWeoSzC9\/8E40j1Xw4dvf3vVdyYdvf3vkdwpAlJviBcPiGrKxBkirA4bGmAQpAD3iQValbMBZxAMWAdhnsPT4dUg73MCRIt1zPW0uuHifBNNve64zITultNb7lqDQYgl6hET1K0td6UQHbt2Br3\/s3ejUa2geq3S9nv30e9Gp1\/D1j70bH\/qzwotlPysmb8iHpfVBjVi64GczNibZkE1DALIBwyA6iQhJUt+wLg0uuDzWNMh9mBa4MFm4qc83bjCNjkNOT5THqzCMYtmp17JYD8557qVV7P3SaeMq6Qdu3dH14o+\/HYAxzn6MVwKbeYh8HElalz0NzEFjMtWrjXIsViWyiAfDtA+epC7P3\/T9RJBIy2i8LEdeZ+sKQwmQxy7LgOE7Wa33occoloS8yX1l9dXf4XNPXsDNc0\/gU98+h29eeLEneR2Un\/nNCy\/Ss3pOy81FI2ujyApvMNLCkS4qsh6vZQ7zHmxadrIBg8Qjc6cSkqQeuMb8\/J2USUgB2nDF6ZylC266BkmRZXblW67PT8wYOiX5G0Ww7do18+IcI7MLJwxmuuKW8X4OclMDeoF9tD+watbnJy6LhnxldHpFupCJoSmMj7GPzo5Or1TW5ycWDUnoAPDw6PSKFPJUGMoGBZ2mADzBPnNZZoVW7OHcMjq9ctlyPLc4GCs13b+7RqdXFi1lbmyXHyqbhFmWmawIJZLlfgolNt1Ebuk1aN3CRYPF46ohyf3sW5+fOG8RSjiytIDwJHVZhnyfGotLPUOpSzLwFLnCUALkdZ6hpdRMQqkueAxULPtHUa4vbyS7yQoyCZcTAbG44jKQFBC5wHAKpEBBJGW7dMEDpPv\/GbJk5XxsJ9eYkPsKW0pNflcxYBXLTr1myhNT3FGIntywuIYJ1wIS99zjfi8JUefro8w4HeMa3QsnWFapt+Gs3GHGKpZEnJusJGetYBkHUY3FtYAsRghWQNRxJSYkST0gbFta4txrk8VrpVkuyZQrE3H2uey4IxxaosQyzsVWkuNafLISJRBR2xNBghV1DVKl0DTLpZ3NcqnSLJfe3yyXbAEpW712bUED9nFLzlrIMfXQLJcqAFab5dK1ZrkU9rs49y3s9wojVCzVFfdGoSqoYXENTmbLo1kubW+WS3PNcukZ1rhNyeecOA3dxBSNu37XNGMG4UnqUQKeBdv1Bc3HThLs452AKcUL2OyUTOcZ4NT1H3ZCxZIoVMMeAq70afGMLprl0pRw5Wz32fZ5EnYCeICSo6cQLlhIammlxCQSURYgsHntlprl0rlmuWQUZAO2fac5Vy6Wtv0GhHVKUb9VGHHEMu74khKPsMrrHbLwXqEUEt7QTfc5zZqKPVRbbd45jDH32HYtklpaiSHXmFt7SdJnggUoygmehGpLCZpLca58Ro5tv0B0p9QlljSEMRMyfLGliRRLygVM2vMpZpyIT0auAngj\/b+ReG0ZR3QpWjx9Zg82G\/KD7HOQgOVV33g58txdY\/Imzo5Or6Q5Vy5moWJJzFgi4\/Kcj9ATHl9olksmy3tLEymWRMNgdSjJKcKyVLwRTDbLJT7mxbelcQ\/D4GKxUSY9kiAQzLMAphwKdGjEWCSpS+FwjRTLZcM88bhsTBiottqRrjRdzyOiwzppSIDnnoY83i1PLLFU69IJrsUnFdVWWyaFc+tyiYmHS9GCaHxdCzuMTq\/M0bOFEj3KwIJRlEM4kdAFTwVdyzuoYzhKz1FKfH1F5xbbgBmdXjk\/Or1SoWPYPzq90jXWSq43nxzg9XoMIrHEklDrMhszgVVJ0eETfRwb4haktG4aZHW4bizcivF53kkFqGEJ9jiHBGsuYwSaX7vEHQsdg8ka5fVgudpqS6vTCZTWdbVZLv2d3FZ0YoslNXQniwtsQZaD5fMpevpTWqQkS6NJTbXV5sGcMR7RpSf5xY3wxka4i5Mxk6q9Mzq9ctXVohk5wS3LxGIZAr\/nPutlg6Z5Pjho46KxxRK0RLxhnqsSDW+MlwHcSP\/va5ZL0rLLC15RnYujBR59juMiK73w6+bE+svLBadOmZfT92GpJCQSS2KQeuEi8DCf2kgWVtdKP32ysnhF3ZfTkIB13FKJTSY33AJv06d8uOBUx3mq2EmRUlZ4EoslJVTfLz9XjCxbcglnmBs82Y8OiBpEkkfiuiBp8EXphVtmrsSGezderEqq40EUf83SLgpNYrHEdcFsqDseiylTqhAJFbfsHsjJspPwY1CxLDiyjlBmQyYous7XLnUulmRVcoOg4cN69U0qsSSOWBJdlescDZvWWG2158T168dgNw\/0TPoePy1qkGeA4GLpyljhneQpFwJsIAjqgOq887HKZrm0p1kuXW6WS38ut7kitViSxXRE04mMnIz58HheUXMP9lDD4JZEHuXzDkKty2TEnuaYAK8uOFnD\/PE0c64FmTrdJbKQn\/TVjlKLJTbHL\/Nw3waJU516LdY1KUiwh4v6PTmUr654epJOcwwlDxdc1K\/laqsdx4hIyhKzXG90cW1MZBJLXBfMRQBH5eeDwuGVZzHzg+\/Ij9OynKLz6GuwhwQ77JG4rlGxTA8XS1NieVJ4XTvpweKTjzZ2XrcpV5MHvY76irJnFkts5l8OnGDO\/OA7OPajp3DgZ8s48D9hyw3GYhlAxRTQCaMgwR7e2zuv0ALeyFUsk8GFx4X15NUFF\/X6bJx57EmgvE3u4p\/0ZLkCrsQSAyqYu379vxv\/z\/znd7IIZiqhDChAsIeXt1vMP3YN7\/VtDypTBHJ4JGs0mcb1Atd1jWZ1OcOQgJ7U4wqFrNauRypXW22nZUiciSW6BXMggj5\/U\/4EXrhpx8b7T\/7oX7HrV5sCGpOTWYSS0bdgDzU8PnbqrdKRq7fRMVClV6LhHVjqXp3hzaq0JKBnEncOeV78mK\/kMHzkViyxKZiVQRDMV24YReNPPoBXbng9AODG136Lz7e+hptfja17D3fqNWMuZVIKEOzhlc+bWBI6bpkc19McvYmlIQHd2dAOtYlFbhUDOOJ6vNWEc7HEZpR8p8NcMG9cuukt+Fz5E12C+bcXHseNr63Lr3LWANzVqdecVQKC7y\/XYA+N9RgX1\/AAF0vX47O80bjedz9xNs3RpwtuSUB3KWQN4d7P+AroSLyIJSgPs1OvVQwrYReOSze9BV95519svL\/lVz\/HP7S+1vUdxlkAeygLwCnkqvDrlXewJ6+cS2+WpWg4PC1m0HG52pBPq9JbAnqzXJoTAZ0HfQZ0JN7EMqBTr83RgqMuxlm88fRbd+Or73zvxvtbfvVzmVK0BuDBTr1Woade+qLRx2APr9iHPQo1b+w8wqvYceKGk+XHBcelmHlLQCdr+AH20SkKjOaGd7EEueWdem0PLcBR2LHMUxN78fQfbFr4B362jL+8dBY0lriHhN8rVLm4G5NbsIesMt6peSmXLOiNeuA5+j4sBNaatJ6Twu\/plYz7knhJQKf60bXvHMbVe8hFLANoAY6dRXbNG3\/6ATz75j\/eeP\/RS\/+G7575+0XP1mQXNIbEx3vzDPbklXPpzRUfNkTGQNb1GLy44L4S0KnenxABnSlXFmsSchVLbI5lzgG4BcDDRbQ0\/+m293\/\/Nze8\/iL76LE+pLjwnjPPYA8Xy0mP563J6fFxMs2RhOcw+8iJ5Uf4SkBfFAGdI46t4R5oUY6rsu7nLpYBnXrtMkWTd5J73u8xzTXKmbzjl188+p43vvbbO4WQL+bpLhqCPbk8z5l6bP6caV\/ujlqW8XE1zdGLC+4rAb1ZLjWEtXq\/QxE2QucSzDX\/F97m+yaWAWRpNmhM8w6yNrO6GnFZo\/HIowB2Us7keWyKBs8XHSPBzMsdhgj2jLkcjI+gKyru6Zy5haRBnnBcrTbk3AX3lYBOovUZ9tHJaqvttf5TmY8xl7\/DO6q+iyWHAkEznXptJ7np95OV41I8z5LFtr9Tr23v1GtHOvXaCVNiOfW8vIJNAljyJB49GII9h6Vr4AMaM+Ui7TzQI62aPKzmASazG07Xl7vgroTHeQI6WXP8+JZd7DcMWpCDT59cA1DhOajbrl27xrYXm5HZhQpVnJ0Atke4b1eZq7cE4HLaIA3rcQJOVVtt5wJio1kuLTHr60q11fYuLOQCBT37crXVDrvWqRDndZer5OhmubRRqaut9rburdmhfL8gjeVB3yksLs6nWS7NAPgivXVyP8louMwssczXwrDPNQA7fQV0WACJdyTLFETq6tAHSixBPaQLMz8pQjxAboGTsZkoyCp4gX2UuVJGYSjzFtfXXVxTZ+fkQlzCyFMsycp6nt6uVVvtVF5Ns1w6z8YV73fh0pI1FuRVXgGwJ6uoieMEgDukaLmChHJJlLdMFmXPeRTKDY+Clow\/T40sV6qt9owIfNzjeUrgBv0I9lCZPH3JhxvEG4H34YUBhd\/nVKJBdcXpo259JKDnuTYldUJSmE9WW22r4A+MWFIv8HUyzz\/TLJdyGzsMIEuSR+0fy0sw+xTs4aklPoYdNCIeDb8uaYWD37tlRx6C0wT0PNempHH\/JTEd9uEoT3FgxJL4Jft\/H1mZeTeyihDMRh7H0KdgzyLLBnD+QDNhNYz5tpYHFF630oocF4HMAuQ6AT3PtSlJlJ\/hM6LIgo08h4ERy2qrfZUGpbkrHESnnTbiMEi0pkRK0VIeDd0wsydzxQ+DzpW7bD4qMD8f79dwAMnkhvtwwV0moOe5NiWNNcuI9\/64FuzAiGUA9Tj3s4\/GADxBFyIXyCLqVw4mF6zJHM6bN4zDHs6RW0u+LeVBhAtdYrEUVt+prC64ywR0qkuLIvLtZW1KGg\/lC3EEqUGxhX7gxBLXxaoBYL+YYfNAs1zKS7ACweQVcXfG2RWxyDvYQ+fJ81xTNw4LPsYt+UrsrvaZO\/K+phQRZ4noHhLQG77XpmyWS9spws7HQ5cpHSlRWQMplrhecZaocfHxw8N5ucS4fgwnhJW7m3ow3+Qd7OH7HwSx5A04l87TE7weJ15I28Ojbp0loOexNiXpgEwNOmVLDYpiYMUSm1ZWRTyOYTcFfnJx6cjKlSlFXl3jPgR7eCNz+kAz4QZN5uUZDAhZpznyju1UGoEIIOHhdS71Cuh5rE0ZkhqU2s0faLEECQfNpuGu6RiAZ2jWgndoHJUL9gO+U4ryDPbk8EAz7h04E2JfVFvtuWqrvY1eThu5YInWSvh+yiEeZy44ud\/B2GLqFdDzWJtSLIYRcH\/WCPvAi2UAVdq7xDjmF3Nyi0E3XOZg+rT2kHOwp0GC+fE4aRYJOQ\/gR8JCz8J5AC3qTFJZEUWg2movVVvtmWqr\/Z6kLqpLF5z2lTkBnU0t5AEdp2tTGhbDWKPUoFTizhm46Y5R0I1dFBXFOoXJJZZ5rZWkA8lJEFPvcp2zrhQX5jZ\/BMBTWayqZrm0yOZOp55XLtYCAKXtpLGYjYjpl3Dd\/obGsgygC7NHuKi7AVx2OdZmgsQ475SiBp3rx1UolYBqq32ZrNK3ZgnEEFMAHqH\/U+3L59qUFPFeNES8nQklhtGy5BgWvwCZ5IlcmqSQ+\/0M+ygXy1ZRfJJ2ERsK6DzBPnK2CE3SxTCyMHSWJYfG1o6Kjx\/zvRAH9Zi83N0+AzCKkgdphJJYYgEqZ2tThkS8rYthZGGoLcsAuqgyOnbW12yBAINl66xHVZRBg8bXU6cccch747N\/QIthOBFiE1tCLGE316\/4fgCSGHRWsVSUjBgW40Yew2tbRiwDLBGzKVerdJug6VYN3zdTUYYdkf0BNp\/cSbAojC0nlrh+wWfYEvsBXle8VhQlGxZDx2nEO4wtKZawj3mccp0kqyhKNixDaF4i3mEMdTQ8jCIsxKEoSjiuF8PIwpa1LAPYFCz+dLfcxkEURTFDQnleeH99C5JuebEMMAwcw9VT8BRFSUezXPpvAO+kt31tj1vWDZcUYCEORVF62Us50U4Ww8iCWpaCfi7E4ZtmuTQO4F4AdwMo08eXADxabbXr4usKwZ9DDuBQtdU+w95HkvX3PijiMRUdtSwFPhfiaJZLB5vl0rXgJbf7pFkulQGcA\/AQE0oA2AVgnL1Xcobqxcv0ultuV4qBiqUBWlC4QguvBowBeD6rYPYDsihPkzCCrMk6gOP0uiR+ouTLI9RhjVNnphQQFcsQDAtxtPJKgHXMvcx6bAG4s9pqH6+22nV6PSq+ryiJaZZLdzfLpYea5dK5Zrl0UG4fdFQsI6ApineQWz6oFeBe9v+j1VZ7lb1X+s99ZN1fov8HlccBzIphnqFBxTIG1Vb7fLXVHuQAT+B+A8A32P9KAai22meqrfY76KWBloKiYjnkSHdIrUpFSYeKpaIoSgw0zzJHyMo7Hbyvttrbur\/Rlf92ptpqH6LPdtFY0EHmUrfIpTaOQTbLpdMxx1g3cuwsZd9LY55l\/jltG6eczYO0PTi21eD4woJHScvj0DW5l5UNKvMMXZNYEX5KqQr2Exz\/Gbaf1aw5iVG\/j9ouiVMfmuXSLIus9+zTVKYlD9dVPbPey0FBLcuCQ5X+IlViPvZYpsZwjhq8c5rl0iOU1tKzfxK1i7T9bnFs49SAHqHIaKw8zrDyOOyayGBCmT47FydfsVkuPUS5p\/LaHvR9bdNCxxxWHy6mOWa6XhcNebje69mgoGJZYIR1cIlZPLyH30WiJAXpG5RDKS27ILcyNMeSyuZRdBNBmWfEPnkQqUxR0lBilhcIKr8mxwEcoke+Buc6TtfE2rhpP7PsoxY7\/jpd411xjj0vYhzzJTr30wknGgT3aDxDPTsuPn80pE4MJOqG50hCNzxgFcB91Va7q7JRw+Hictw0ZTFOmQGs7BY1nF1U6evSrWUum809K4tGG+YKRpaH3nNp0T67yiaLN3hsq9H1E50QTNeOzu8hg4D3nEcUJpeXvY\/cjuvfuVsId6Zjdl3P0LvPnjIHHbUsi88hWYFxXfTuo94\/INLtTECZhOt4tdW+zyRc1VZ7lRLae4QS17e3yNoJCDu+yPKIQARXAXzEVDaNkQYW5kGZDUCCwq0zY+On87uPRLkIhIo7uo85jUj1o54NFCqWxeZREh0b3MW2upwpuWRqkAnhjSzq+ELLI9ELxui+ESKoEOXK4MPdzNpdDSuTiNruHbKWg3OPc8xy6CWKftazgUHFsthEWQjStZLCkIWkDa4H0QCjGllUefzceiwgQZhI8\/dRZcJkbfUBfu4+jjnq+z7r2cCgYllsetxMjskNdUiYpdFFs1za1SyX7m2WS480y6XTzXLpYoqVlaLK6xI9WqnH+BLflQ2bbwuzTosEj3pHXSfneK5nA4OKpZIaEsnHWQqRzFd0CRe50zFeNgZRLPkxq3D1CRVLJRU0jnaODfivsnSRQ+zlCpmyoii5omKpJIZmkARrMIKis2+iSHadFoY44yt1pNpqb0vyEj\/n1uSgCPAgHvPQoWKppCEy9cYDG8IblmweAy48WfaTJ4mO2ZA4rjhAxVJJAw+aWAMOjhstL0cGbZKQKGcwzrTJHEh0zDG\/oyRExVJJg5wHbkPOJMkCF4zZDNYlT5PZRbN5wojangexj9mQdJ8nPPgUVi8GEhVLJQ3cyjMKomFKYSZo\/DMQjXEAp6Py\/WhstQtKZue5ig+ZrMdmuTROU\/3SirIz6Jj5UMdDJsEkoXzcUzZCHCLrxSCjYqmkgTfcg5RXOcteweo1q2Fuegr49MNAMM\/Rc194+Y83y6WXQ8T6uDiux2k\/we\/5yj4twyIR\/aAujvkhcd0foWM+GCdx3RNdM6co53aW7s\/Ai6eKpZIYmiHCBXMXCVPw2hUsdOEyL5CSow8ZVjUKrNjgFUxpNFqFbD9ypk\/w+1n6\/RnH6U+psRwzv+730jEH6Vu5Q4E+ObbMr+dAo2KppKLaagf5lN9ggrhK7++rttp30nRHHsUOdZvjQItFfITKlo0TbImx4PiM0H4OkbXKBYifQ8+qRv2EHXNw3YMo+SV6f4jSt+Qx55l8f4iuPb+mZ3I+Bi\/oEm2KMmTQ2OXLwXtDrqmSArUsFWX4iJXapSRDxVJRhgi2AHBA1IpCSkxULBVlQKDIsjUtiITyEb72ZR8j40OHjlkqygAgxiGDwBkP5JTFzJ1VCvioG+4IFUtFGQAMz+AJo0XRfBVKh\/w\/GfSFlWTsuQsAAAAASUVORK5CYII=","width":221}
%---
%[text:image:848a]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:772d]
%   data: {"defaultValue":" 0","label":"k (N\/m) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:2964]
%   data: {"label":"Check k","run":"Section"}
%---
%[text:image:4d0f]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[control:editfield:53c8]
%   data: {"defaultValue":" 2880","label":"IR wavenumber (cm^(-1))","run":"AllSections","valueType":"MATLAB code"}
%---
%[control:dropdown:552a]
%   data: {"defaultValue":"0.1","itemLabels":["0.1","1","2"],"items":["0.1","1","2"],"label":"Field amplitude: ","run":"Section"}
%---
%[control:dropdown:0ef4]
%   data: {"defaultValue":"12","itemLabels":["1","12","60","120"],"items":["1","12","60","120"],"label":"End time (picoseconds)","run":"Section"}
%---
%[text:image:068b]
%   data: {"align":"middle","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAjElEQVR42mP4\/\/8\/AwgnJiYapKamfgfS\/ynBUDMMYOYywBggiYcPH\/6nFIDMAJmFYQHIdmoBqFm4LZjrYPd\/gpoyGIPYVLeA5j6gmwUlJaVAxUlgDGKPBhFODaQG1QgIoqKtr\/6r99wlCYP0EG0BSMOWe\/9JwiA9oxaMWkBHC2ieD2iSk+lR6dOk2QIAjF+EgB\/BqfoAAAAASUVORK5CYII=","width":24}
%---
