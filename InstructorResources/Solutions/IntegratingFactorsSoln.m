%[text] %[text:anchor:T_5edb] # Integrating Factors 
%[text] [⇦ Main Menu](file:MainMenu.m)
%[text] For some first-order ordinary differential equations, the method of integrating factors is a useful tool for solving analytically. In this script, we'll go over what types of problems integrating factors are useful for, and practice using this method, using an application of chemical concentration to help us do so.
%[text:tableOfContents]{"heading":"**Table of Contents**"} %[text:anchor:M_597CA885]
%[text] %[text:anchor:H_51183E7B] **Before you get started:**
%[text] This live script is intended to be used with the code hidden. On the **View** tab of the MATLAB toolstrip, in the **View** section, select **Hide Code**.  Alternately, select **Hide Code** using the icon ![live script code hidden icon](text:image:8397) at the top right of the Live Editor pane.
%[text] ![Lightbulb mark](text:image:1982) Although the code is hidden, some interactivity requires familiarity with MATLAB. If you need more instruction, consider taking [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted), a free 2 hour online tutorial that teaches the essentials of MATLAB.
%[text] %[text:anchor:H_8F8A032D] ![Warning symbol](text:image:21c4)   For an optimal experience, follow the instructions and steps in the given sequence. Proceed to a new section only after completing the preceding one. Some sections depend on variables created in prior sections and will generate errors if run out of order.
%[text] The ![Try this icon](text:image:2398)  and  ![Exercise icon](text:image:4642) icons refer to two different types of interactive activities that you will find in this script. The ![Try this icon](text:image:1dd4)  usually indicates an interaction where you will explore the visualization of some concept introduced in this script. The ![Exercise icon](text:image:2011) interactions are designed to challenge your understanding of those concepts and may be used for grading and completion checks by your professor.
%%
%[text] %[text:anchor:H_485b] ## Integrating Factors
%%
%[text] %[text:anchor:H_697e] ### Method of Integrating Factors
%[text] An **integrating factor** is a term that allows us to solve some linear, non-homogeneous, first-order differential equations with the following form.
%[text]{"align":"center"} %[text:anchor:M_521a] $y'(x) +p(x) \\cdot y = f(x)${"altText":"y'(x) +p(x) \cdot y = f(x)"}
%[text] We'll refer to [this equation](internal:M_521a) from now on as the "standard form".
%[text] Given an equation in this form, the integrating factor is the following.
%[text]{"align":"center"} $\\mu = e^{\\int p(x) \\; dx}${"altText":"\mu = e^{\int p(x) \; dx}"}
%[text] How can we use this to help us solve the differential equation for $y${"altText":"y"}?
%[text] To illustrate this, let's start with $\\frac{d}{dx} (\\mu  y) ${"altText":"\frac{d}{dx} (\mu  y) "}.
%[text] We can expand this using the product rule.
%[text]{"align":"center"} $\\frac{d}{dx} (\\mu  y) = \\mu \\frac{dy}{dx} + \\frac{d\\mu}{dx} y${"altText":"\frac{d}{dx} (\mu  y) = \mu \frac{dy}{dx} + \frac{d\mu}{dx} y"}
%[text] Solving for $\\frac{d \\mu}{dx}${"altText":"\frac{d \mu}{dx}"}, we get:
%[text]{"align":"center"} $\\frac{d\\mu}{dx} = \\frac{d}{dx} e^{\\int p(x) \\; dx} = e^{\\int p(x) \\; dx} p(x) = \\mu  p(x)${"altText":"\frac{d\mu}{dx} = \frac{d}{dx} e^{\int p(x) \; dx} = e^{\int p(x) \; dx} p(x) = \mu  p(x)"}
%[text] Plugging this back into the equation for $\\frac{d}{dx} (\\mu  y) ${"altText":"\frac{d}{dx} (\mu  y) "}, we have:
%[text]{"align":"center"} $\\frac{d}{dx} (\\mu  y) = \\mu  \\frac{dy}{dx} + \\mu p(x)  y${"altText":"\frac{d}{dx} (\mu  y) = \mu  \frac{dy}{dx} + \mu p(x)  y"}
%[text]{"align":"center"} $\\frac{d}{dx} (\\mu  y) = \\mu (\\frac{dy}{dx} + p(x)y)${"altText":"\frac{d}{dx} (\mu  y) = \mu (\frac{dy}{dx} + p(x)y)"}
%[text] Finally, we can solve for $y${"altText":"y"} by substituting using our[ standard form](internal:M_521a) of the differential equation.
%[text]{"align":"center"} $\\frac{d}{dx} (\\mu  y) = \\mu f(x)${"altText":"\frac{d}{dx} (\mu  y) = \mu f(x)"}
%[text]{"align":"center"} $\\mu  y = \\int{\\mu f(x) \\thinspace dx}${"altText":"\mu  y = \int{\mu f(x) \thinspace dx}"}
%[text]{"align":"center"} %[text:anchor:M_3103] $y = \\frac{1}{\\mu} \\int{\\mu f(x) \\thinspace dx}${"altText":"y = \frac{1}{\mu} \int{\mu f(x) \thinspace dx}"}
%[text] We'll refer to [this equation](internal:M_3103) from now on as the "integrating factors formula".
%%
%[text] %[text:anchor:H_41fc] ### Example of Integrating Factors
%[text] %[text:anchor:H_700a] Let's take a look at the following equation.
%[text]{"align":"center"} $xy' + 2y = 4x^2${"altText":"xy' + 2y = 4x^2"}
%[text] The first step is to transform the equation into standard form, by dividing all terms by $x${"altText":"x"}.
%[text]{"align":"center"} $y' + \\frac{2}{x}y = 4x${"altText":"y' + \frac{2}{x}y = 4x"}
%[text] Therefore, we have $f(x) = 4x${"altText":"f(x) = 4x"}, and $p(x) = \\frac{2}{x}${"altText":"p(x) = \frac{2}{x}"}.
%[text] Next, we find the integrating factor $\\mu = e^{\\int p(x) \\; dx}${"altText":"\mu = e^{\int p(x) \; dx}"}.
%[text]{"align":"center"} $\\mu = e^{\\int p(x) \\; dx} = e^{\\int \\frac{2}{x} \\; dx} = e^{2\\ln(x)} = e^{\\ln\\left(x^2\\right)} = x^2${"altText":"\mu = e^{\int p(x) \; dx} = e^{\int \frac{2}{x} \; dx} = e^{2\ln(x)} = e^{\ln\left(x^2\right)} = x^2"} 
%[text] 
%[text] Next, we use the formula that we derived above to solve for $y${"altText":"y"}.
%[text]{"align":"center"} $y = \\frac{1}{\\mu} \\int{\\mu f(x) \\thinspace dx}${"altText":"y = \frac{1}{\mu} \int{\mu f(x) \thinspace dx}"}.
%[text]{"align":"center"} $y= \\frac{1}{x^2}\\int x^2 \\cdot 4x \\; dx${"altText":"y= \frac{1}{x^2}\int x^2 \cdot 4x \; dx"}
%[text]{"align":"center"} $y= \\frac{1}{x^2}\\int 4x^3 \\; dx${"altText":"y= \frac{1}{x^2}\int 4x^3 \; dx"}
%[text]{"align":"center"} $y = \\frac{1}{x^2}(x^4 + C)${"altText":"y = \frac{1}{x^2}(x^4 + C)"}
%[text]{"align":"center"} $y = x^2  + \\frac{C}{x^2}${"altText":"y = x^2  + \frac{C}{x^2}"}
%[text] Plugging in our initial condition of (0, 1), we can solve for $C${"altText":"C"}.
%[text]{"align":"center"} $2 = 1^2  + \\frac{C}{1^2}${"altText":"2 = 1^2  + \frac{C}{1^2}"} $2 = C + 1${"altText":"2 = C + 1"} $C = 1${"altText":"C = 1"}
%[text] **So, our final solution is** $y = x^2  + \\frac{1}{x^2}${"altText":"y = x^2  + \frac{1}{x^2}"}**.**
%%
%[text] %[text:anchor:H_7db4] ### Practice with Integrating Factors
%[text] Next, let's practice applying this method to solve a new differential equation. 
%[text] ![](text:image:9b1e)  Some important things to keep in mind when typing math expressions into the edit fields for the exercises:
%[text] - Make sure that you use parentheses carefully.
%[text] - When multiplying values, explicitly use the multiplication symbol. Instead of writing "`2t`", write "`2*t`".
%[text] - `"log(x)"` in MATLAB is equivalent to `"ln(x)"` in math class.
%[text] - `"exp(x)"` in MATLAB is equivalent to `"e^x"` in math class. \
%%
%[text] **Exercise 1.** 
%[text] Consider the following differential equation:
%[text]{"align":"center"} $t \\cdot \\frac{dy}{dt} = e^t - 2y${"altText":"t \cdot \frac{dy}{dt} = e^t - 2y"}
%[text] ![](text:image:48eb)  a. Rearrange the equation into [standard form](internal:M_521a) so that we can solve using an integrating factor. 
%[text] What is $p(t)${"altText":"p(t)"}?
syms t
Check1aPT(2/t); %[control:editfield:3320]{"position":[11,14]}
  %[control:button:12bc]{"position":[1,2]}
%%
%[text] What is $f(t)${"altText":"f(t)"}?
syms t
Check1aFT(exp(t)/t); %[control:editfield:8438]{"position":[11,19]}
  %[control:button:97b5]{"position":[1,2]}
%%
Show1a(false); %[control:checkbox:62dc]{"position":[8,13]}
%%
%[text] ![](text:image:0369)  b. Find the integrating factor $\\mu${"altText":"\mu"}.
syms t
Check1b(t^2); %[control:editfield:90e2]{"position":[9,12]}
  %[control:button:9d35]{"position":[1,2]}
%%
Show1b(false); %[control:checkbox:36fd]{"position":[8,13]}
%%
%[text] ![](text:image:5ade)  c. Find the general solution. Note: use $C${"altText":"C"} for the constant term.
syms t C
Check1c((t*exp(t)-exp(t)+C)/t^2); %[control:editfield:8b70]{"position":[9,32]}
  %[control:button:6c9c]{"position":[1,2]}
%%
Show1c(false); %[control:checkbox:32fc]{"position":[8,13]}
%%
%[text] ![](text:image:8a29)  d. Find the particular solution, given the initial condition $y(1) = 0${"altText":"y(1) = 0"}.
syms t
Check1d((t*exp(t) - exp(t))/t^2); %[control:editfield:85ef]{"position":[9,32]}
  %[control:button:7623]{"position":[1,2]}
%%
Show1d(false); %[control:checkbox:451e]{"position":[8,13]}
%%
%[text] %[text:anchor:H_0399] ## ![](text:image:80ba) Application: Chemical Concentration
%%
%[text] Differential equations are also useful when calculating the concentration of a chemical in water.
%[text] Let's assume that $x${"altText":"x"} represents the number of micrograms (µg) of a chemical in a body of water that we are trying to measure. Let $x\_{\\text{in}} ${"altText":"x\_{\text{in}} "} represent the rate of the chemical flowing into the water, in micrograms/hour, and let $x\_{\\text{out}}${"altText":"x\_{out}"} represent the rate of the chemical flowing out of the water, also in micrograms/hour. We can use these to calculate the change in $x${"altText":"x"} over time.
%[text]{"align":"center"} $\\frac{dx}{dt} = x\_{\\text{in}} - x\_{\\text{out}}${"altText":"\frac{dx}{dt} = x\_{in} - x\_{out}"}
%[text] How can we calculate these rates? We know that the rate of a chemical flowing into a body of water is equal to the rate of the water inflow, measured in liters/hour ($\\text{rate}\_{\\text{in}}${"altText":"rate\_{in}"}), multiplied by the concentration of the chemical in the water inflow, measured in micrograms/liter ($\\text{concentration}\_{\\text{in}}${"altText":"concentration\_{in}"}). Applying the same logic to outflow, we get the following equation.
%[text]{"align":"center"} $\\frac{dx}{dt} = (\\text{rate}\_{\\text{in}} \\cdot \\text{concentration}\_{\\text{in}}) - (\\text{rate}\_{\\text{out}} \\cdot \\text{concentration}\_{\\text{out}})${"altText":"\frac{dx}{dt} = (rate\_{in} \cdot concentration\_{in}) - (rate\_{out} \cdot concentration\_{out})"}
%%
%[text] %[text:anchor:H_6d06] ### Polluted Rainstorm
%%
%[text] **Exercise 2.**
%[text] %[text:anchor:M_1ccd] A reservoir is the main water source for a small town, which initially contains 100 million liters of water. A major rainstorm hits the town, adding 40,000 liters of water to the reservoir per hour at a constant rate. To prevent excessive flooding, water from the reservoir is released downstream at a rate of 20,000 liters per hour.
%[text] Due to pollution in the atmosphere, this water falling in this rainstorm has a very high concentration of mercury, of 100 µg/L, causing concern among local residents.
%[text] 
%[text] Let's model this rainstorm using a first-order differential equation. Let $M${"altText":"M"}represent the quantity of mercury in the lake in micrograms (µg), and $t${"altText":"t"} represent the hours elapsed since the start of the rainstorm.
%[text] In order to find the equation, let's start with our general formula for chemical concentration.
%[text]{"align":"center"} $\\frac{dM}{dt} = (\\text{rate}\_{\\text{in}} \\cdot \\text{concentration}\_{\\text{in}}) - (\\text{rate}\_{\\text{out}} \\cdot \\text{concentration}\_{\\text{out}})${"altText":"\frac{dx}{dt} = (rate\_{in} \cdot concentration\_{in}) - (rate\_{out} \cdot concentration\_{out})"}
%[text] 
%[text] While some of the other pieces of this equation are more straightforward, how can we calculate $\\text{concentration}\_{\\text{out}}${"altText":"concentration\_{out}"}? 
%[text] Let's assume that the water is continuously being mixed, so the concentration of mercury in the water being released downstream is the same as the concentration of mercury in the entire reservoir, which is changing over time.
%[text] We know that the concentration of mercury in the reservoir at any given time is equal to the quantity of mercury ($M${"altText":"M"}), divided by the volume of water. As a result, we end up with the following equation. 
%[text]{"align":"center"} $\\text{concentration}\_{\\text{out}} = \\frac{M}{\\text{volume}} = \\frac{M}{\\text{volume}\_{\\text{init}} + (\\text{rate}\_{\\text{in}} - \\text{rate}\_{\\text{out}}) \\cdot t${"altText":"concentration\_{out} = \frac{M}{volume} = \frac{M}{volume\_{init} + (rate\_{in} - rate\_{out}) \cdot t"}
%[text] 
%[text] ![](text:image:5ab0) Note that to calculate the total volume of water in the reservoir at time $t${"altText":"t"}, $\\text{volume}\_{\\text{init}} + (\\text{rate}\_{\\text{in}} - \\text{rate}\_{\\text{out}}) \\cdot t${"altText":"volume\_{init} + (rate\_{in} - rate\_{out}) \cdot t"}, we needed to solve a differential equation! As extra practice, think through what that differential equation should be, and how we would solve it to get this expression.
%%
%[text] ![](text:image:377d)  a. What is the differential equation in [standard form](internal:M_521a) that models this rainstorm, given the above [parameters](internal:M_1ccd) ?
%[text] **Note:** To simplify our calculations, scale the problem down by a factor of 1 million: assume that the reservoir only has 100 liters of water, and adjust the rates of inflow and outflow accordingly.
%%
%[text] What is $p(t)${"altText":"p(t)"}?
syms t
Check2aPT(1/(5000+t)); %[control:editfield:167f]{"position":[11,21]}
  %[control:button:9a83]{"position":[1,2]}
%%
%[text] What is $f(t)${"altText":"f(t)"}?
syms t
Check2aFT(4); %[control:editfield:5bb3]{"position":[11,12]}
  %[control:button:3109]{"position":[1,2]}
%%
Show2a(false); %[control:checkbox:7c06]{"position":[8,13]}
%%
%[text] ![](text:image:8b25)  b. What is the integrating factor $\\mu${"altText":"\mu"} for this equation?
syms t
Check2b(5000+t) %[control:editfield:1787]{"position":[9,15]}
  %[control:button:4627]{"position":[1,2]}
%%
Show2b(false); %[control:checkbox:3340]{"position":[8,13]}
%%
%[text] ![](text:image:3d33)  c. Use the integrating factor to solve for $M${"altText":"M"}. Note: use $C${"altText":"C"} for the constant term.
syms t C
Check2c((20000*t + 2*t^2 + C)/(5000+t)) %[control:editfield:9fa1]{"position":[9,39]}
  %[control:button:2385]{"position":[1,2]}
%%
Show2c(false); %[control:checkbox:4d4d]{"position":[8,13]}
%%
%[text] ![](text:image:8901)  d. Before the rainstorm, the reservoir had with a mercury concentration of 1.5 micrograms (µg) of mercury per liter of water. Use this to solve for the constant term $C${"altText":"C"}and find an exact expression for $M${"altText":"M"}.
syms t
Check2dC(750000); %[control:editfield:4ea2]{"position":[10,16]}
  %[control:button:5786]{"position":[1,2]}
%%
syms t
Check2dM((20000*t + 2*t^2 + 750000)/(5000+t)); %[control:editfield:48d6]{"position":[10,45]}
  %[control:button:35ab]{"position":[1,2]}
%%
Show2d(true); %[control:checkbox:8d75]{"position":[8,12]}
%%
%[text] ![](text:image:6098)  e. The Environmental Protection Agency (EPA) has developed a public drinking water standard of 2 µg/L of mercury. Scientists in the local community are trying to figure out whether the water in the reservoir now exceeds this threshold.
%[text] Rounding up to the nearest integer, how many hours would it have to rain for the water in the reservoir to be considered unsafe to drink by the EPA?
Check2e(13); %[control:editfield:7673]{"position":[9,11]}
  %[control:button:4dd3]{"position":[1,2]}
%%
Show2e(false); %[control:checkbox:7b3c]{"position":[8,13]}
%%
%[text] %[text:anchor:H_0f0b] ### Visualize the Effect of Parameters
%[text] ![](text:image:28ab)  Explore how changes to the rate of rainfall and the mercury concentration of the rain affect how long it takes for the reservoir water to become unsafe.
rateIn = 40000; %[control:slider:6566]{"position":[10,15]}
concentrationIn =100; %[control:slider:058e]{"position":[18,21]}
%[text] Click below to run (or re-run) the graph!
  %[control:button:0585]{"position":[1,2]}
ShowPollutedRainstormEquationAndGraph(rateIn / 1000000, concentrationIn)
%%
%[text] [⇦ Return to the main menu](file:MainMenu.m)
%%
%[text] %[text:anchor:H_378f] ## Local Helper Functions
%[text] If you wish to see the details of the code, select the **View** tab and switch to **Output Inline**. Alternately, select **Output inline** using the icon ![live script output inline icon](text:image:0421) at the top right of the Live Editor pane.
% checking code for exercise 1
%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.
%%
function Check1aPT(expression)
    syms t
    correctExp = 2/t;
    hint = "Incorrect- try rechecking your calculations, or see below for an explanation.";
    CheckExpression(expression, correctExp, hint);
end

function Check1aFT(expression)
    syms t
    correctExp = exp(t)/t;
    hint = "Incorrect- try rechecking your calculations, or see below for an explanation.";
    CheckExpression(expression, correctExp, hint);
end

function Check1b(expression)
    syms t
    correctExp = t^2;
    hint = "Incorrect- try starting with the formula for μ, " + ...
        "and plug in the value for p(t) we just solved for.";
    CheckExpression(expression, correctExp, hint);
end

function Check1c(expression)
    syms t C
    correctExp = (t*exp(t) - exp(t) + C)/(t^2);
    hint = "Incorrect- try starting with the integrating factors formula " + ...
        "and plugging in the value of μ we just solved for.";
    CheckExpression(expression, correctExp, hint);
end

function Check1d(expression)
    syms t
    correctExp = (t*exp(t) - exp(t))/(t^2);
    hint = "Incorrect- try plugging the initial condition back into the equation from part (c) to solve for C.";
    CheckExpression(expression, correctExp, hint);
end

% checking code for exercise 2
function Check2aPT(expression)
    syms t
    correctExp = 1/(5000 + t);
    hint = "Incorrect- try rechecking your calculations, or see below for an explanation.";
    CheckExpression(expression, correctExp, hint);
end

function Check2aFT(expression)
    correctExp = 4;
    hint = "Incorrect- try rechecking your calculations, or see below for an explanation.";
    CheckExpression(expression, correctExp, hint);
end

function Check2b(expression)
    syms t
    correctExp = 5000 + t;
    hint = "Incorrect- try starting with the formula for μ, " + ...
        "and plug in the value for p(t) we just solved for.";
    CheckExpression(expression, correctExp, hint);
end

function Check2c(expression)
    syms t C;
    correctExp = (20000*t + 2*t^2 + C)/(5000 + t);
    hint = "Incorrect- try starting with the integrating factors formula " + ...
        "and plugging in the value of μ we just solved for.";
    CheckExpression(expression, correctExp, hint);
end

function Check2dC(expression)
    correctExp = 750000;
    hint = "Incorrect- remember that since our equation is designed for 100L of water, " + ...
        "a concentration of 1.5 μg/L at t = 0 means that M(0) = 150. Try plugging this " + ...
        "back into the equation from part (c) to solve for C.";
    CheckExpression(expression, correctExp, hint);
end

function Check2dM(expression)
    syms t;
    correctExp = (20000*t + 2*t^2 + 750000)/(5000 + t);
    hint = "Incorrect- try plugging the value we found for C back into the equation from part (c).";
    CheckExpression(expression, correctExp, hint);
end

function Check2e(answer)
    if answer <= 0 || floor(answer) ~= answer
        disp("Please enter a positive integer.")
    elseif answer == 13
        disp("Correct! See below for a detailed explanation.")
    else
        disp("Incorrect- remember that since our equation is designed for 100L of water, " + ...
            "a concentration of 2 μg/L means we want to find the time t when M exceeds 200.")
    end
end

% helper function to check expressions
function CheckExpression(exp, correctExp, hint)
    if isAlways(exp == correctExp, Unknown="false")
        disp("Correct! See below for a detailed explanation.")
    elseif exp == 0
        disp("Please enter a nonzero expression.")
    else
        disp(hint)
    end
end

% explaining answers to exercise 1
function Show1a(checked)
    if checked
        displayFormula(["'We want to rewrite the equation to look like:'"; ...
            "dy/dt + p(t)*y = f(t)"; ...
            "' '"; ...
            "'Starting with the given equation, we can rearrange as follows:'"; ...
            "t*(dy/dt) = e^t - 2*y"; ...
            "t*(dy/dt) + 2*y = e^t"; ...
            "(dy/dt) + (2/t)*y = (e^t)/t"; ...
            "' '";
            "'Therefore, we have:'"; ...
            "p(t) = 2/t"; ...
            "f(t) = (e^t)/t"...
            ]);
    end
end

function Show1b(checked)
    if checked
        displayFormula(["'Starting with our formula for μ:'"; ...
            "mu = e^(int(p(t)))"; ...
            "'We have:'"; ...
            "mu = e^(int(2/t))"; ...
            "mu = e^(2 * int(1/t))"; ...
            "mu = e^(2 * ln(t))"; ...
            "mu = (e^(ln(t)))^2"; ...
            "mu = t^2"])
    end
end

function Show1c(checked)
    if checked
        displayFormula(["'Plugging μ into the integrating factors formula, we have:'"; ...
            "y = (1/mu) * int(mu * f(t))"; ...
            "y = (1/t^2) * int(t^2 * ((e^t)/t))"; ...
            "y = (1/t^2) * int(t * (e^t))"; ...
            "' '"; ...
            "'To solve the integral, we can use integration by parts.'"; ...
            "int(u, v) = u*v - int(v, u)"; ...
            "'In this case, we have:'"; ...
            "u = t"; ...
            "du = 1"; ...
            "v = e^t"; ...
            "dv = e^t"; ...
            "'Therefore, we have:'"; ...
            "int(t * (e^t)) = t*e^t - int(e^t * 1)"; ...
            "int(t * (e^t)) = t*e^t - e^t + C"; ...
            "' '"; ...
            "'Going back to our original equation:'"; ...
            "y = (1/t^2) * int(t * (e^t))"; ...
            "y = (t*e^t - e^t + C)/t^2";])
    end
end

function Show1d(checked)
    if checked
        displayFormula(["'Starting with the equation from part (c):'"; ...
            "y = (t*e^t - e^t + C)/t^2"; ...
            "'Solve for C, plugging in y = 0 and t = 1:'"; ...
            "0 = (1*e^1 - e^1 + C)/1^2"; ...
            "0 = e - e + C"; ...
            "C = 0"; ...
            "' '"; ...
            "'Therefore, the particular solution is:'";
            "y = (t*e^t - e^t)/t^2";])
    end
end

% explaining answers to exercise 2
function Show2a(checked)
    if checked
        displayFormula(["'From the problem description, scaling the inflow and outflow rates down by 1 million, we have:'"; ...
            "rate_in = 0.04"; ...
            "rate_out = 0.02"; ...
            "concentration_in = 100"; ...
            "' '"; ...
            "'Next, let's calculate the concentration of water leaving the reservoir:'"; ...
            "concentration_out = M/(volume_init + (rate_in - rate_out)*t)"; ...
            "concentration_out = M/(100 + 0.02*t)"; ...
            "' '"; ...
            "'Plugging this into our chemical concentration formula, we get:'"; ...
            "dM/dt = rate_in * concentration_in - rate_out * concentration_out"; ...
            "dM/dt = 4 - 0.02 * (M/(100 + 0.02*t))"; ...
            "' '"; ...
            "'Rearranging and simplifying the fraction, we get:'"; ...
            "dM/dt + 0.02 * (M/(100 + 0.02*t)) = 4"; ...
            "dM/dt + (1/(5000 + t))*M = 4"; ...
            "' '"; ...
            "'Therefore, going back to our original formula:'"; ...
            "dM/dt + p(t)*M = f(t)"; ...
            "'We have: '"; ...
            "p(t) = 1/(5000 + t)"; ...
            "f(t) = 4"]);
    end
end

function Show2b(checked)
    if checked
        displayFormula(["'Starting with our formula for μ:'"; ...
            "mu = e^(int(p(t)))"; ...
            "'We have:'"; ...
            "mu = e^(int(1/(5000 + t)))"; ...
            "mu = e^(ln(5000 + t))"; ...
            "mu = 5000 + t"])
    end
end

function Show2c(checked)
    if checked
        displayFormula(["'Plugging μ into the integrating factors formula, we have:'"; ...
            "M = (1/mu) * int(mu * f(t))"; ...
            "M = (1/(5000 + t)) * int(4 *(5000 + t))"; ...
            "M = (1/(5000 + t)) * (int(20000,t) + int(4*t))"; ...
            "M = (20000*t + 2*t^2 + C)/(5000 + t)"])
    end
end

function Show2d(checked)
    if checked
        displayFormula(["'Starting with the equation from part (c):'"; ...
            "M = (20000*t + 2*t^2 + C)/(5000 + t)"; ...
            "'Remember that M represents the *quantity* of mercury in the water, so we have M(0) = 1.5 * 100 = 150.'"; ...
            "'Solve for C, plugging in M = 150 and t = 0:'"; ...
            "150 = (0 + 0 + C)/(5000 + 0)"; ...
            "150 = C/5000"; ...
            "C = 750000"; ...
            "' '"; ...
            "'Finally, plugging this value for C back into the equation from part (c), we get: '"; ...
            "M = (20000*t + 2*t^2 + 750000)/(5000 + t)"])
    end
end

function Show2e(checked)
    if checked
        displayFormula(["'To figure out when the water has a concentration of 2, we want to find the value of t when M = 200.'"; ...
            "200 = (20000*t + 2*t^2 + 750000)/(5000 + t)"; ...
            "'Simplifying the equation gives us the following: '"; ...
            "200*(5000 + t) = 20000*t + 2*t^2 + 750000"; ...
            "1000000 + 200*t = 20000*t + 2*t^2 + 750000"; ...
            "2*t^2 + 19800*t - 250000 = 0"; ...
            "'Using the quadratic formula with a = 2, b = 19800, and c = -250000, and only considering the positive solution for t, we get:'"; ...
            "t = (-b + sqrt(b^2 - 4*a*c))/(2*a)";
            "t = (-19800 + sqrt(19800^2 + 2000000))/4"; ...
            "t = 50.44/4"; ...
            "t = 12.61"; ...
            "'Rounding up, we get t = 13, meaning it would have to rain for 13 hours for the mercury level to excess 2 μg/L of mercury.'"; ...
            "' '"; ...
            "'Alternatively, we can also use MATLAB functions to help us solve this more easily!'"; ...
            "'The code would look like this: solving the equation, extracting the positive solution, and usig vpa to find the precise answer.'"]);
            disp("solutions = solve(200 == ((20000*t + 2*(t^2) + 750000)/(5000+t)))");
            disp("positiveSolution = solutions(2)");
            disp("preciseSolution = vpa(positiveSolution)");
    end
end

function ShowPollutedRainstormEquationAndGraph(rateInVal, concentrationInVal)
    syms M(t) rateIn rateOut concentrationIn volInit

    % initialize our parameters that never change
    volInitVal = 100;
    rateOutVal = 0.02;

    % display the generic formula
    rhs = rateIn * concentrationIn - (rateOut / (volInit + (rateIn - rateOut)*t)) * M;
    equation = diff(M, t) == rhs;
    displayFormula("'We start with our generic formula for chemical concentration:'")
    displayFormula([char(equation); "' '"])

    % display the formula with parameters plugged in
    rhsSub = subs(rhs, [rateIn, rateOut, concentrationIn, volInit], [rateInVal, rateOutVal, concentrationInVal, volInitVal]);
    equationSub = diff(M, t) == rhsSub;
    displayFormula(["'Plugging in the parameters, we have:'"; ...
        char(equationSub); ...
        "' '"]);

    % find the solution to the differential equation
    cond = M(0) == 150;
    finalEquation = dsolve(equationSub, cond);

    % scale the equation so that the y-axis shows concentration
    scaledFinalEquation = finalEquation / 100;

    % calculate number of hours until the water becomes unsafe
    % real solns: Real=true
    [safeThresholdSol, params, conditions] = solve(2 == scaledFinalEquation, ReturnConditions=true, Real=true);

    if isempty(params)
        % find the solution within the desired range
        doubleSolns = double(safeThresholdSol);
        filteredSolns = doubleSolns(doubleSolns > 0 & doubleSolns < 5000);
        safeThresholdVal = filteredSolns(1);
    else
        % if the solution is returned as a parameter, take extra steps to solve
        assume(conditions);
        restriction = [safeThresholdSol > 0, safeThresholdSol < 5000];
        safeThresholdVal = double(solve(restriction,params));
    end

    % plot the equation.
    fplot(scaledFinalEquation, [0 (safeThresholdVal * 1.2)]);
    hold on

    % plot the "unsafe" line.
    fplot(2, [0 (safeThresholdVal * 1.2)], LineStyle='--');
    hold on

    % add point where the concentration is 2
    plot(safeThresholdVal, 2, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
    label = sprintf('The reservoir water becomes unsafe after ~%.1f hours', safeThresholdVal);
    text(safeThresholdVal, 2, label, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');

    % add title and labels
    title('Reservoir Mercury Pollution');
    xlabel('Time (hours)');
    ylabel('Concentration (µg/L)');
    hold off
end
%[text] 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"hidecode","rightPanelPercent":40}
%---
%[text:image:8397]
%   data: {"align":"middle","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAArElEQVR42mP4\/\/8\/AwgnJiYapKamfgfS\/ynBUDMMYOYywBggiYcPH\/6nFIDMAJmFYQHIdmoBqFm4LZjrYPd\/gpoyGIPYVLeA5j4gbEASHJNlwZYtW\/93dHTixDCDQTRMDKRn8FhATBDNmTOH\/CAiBI4cOQI2HETTLBW9fv2a\/FRUtPXVf\/WeuyRhkB6iLQBp2HLvP0kYpGfUglELhpMFNM9oNKlw6FHp06TZAgAoeVix9Bg9oQAAAABJRU5ErkJggg==","width":24}
%---
%[text:image:1982]
%   data: {"align":"baseline","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:21c4]
%   data: {"align":"baseline","height":23,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADoAAAA6CAYAAADhu0ooAAAEp0lEQVR42t2a208TQRTG67OJxvv9fiGoD6LGgPiCGo1G\/wljTKDl1pL00RuKIKCIIiKg6ItB8IJ38K4Panz13RcfSBBBQQHRek4ys\/kYpu1uu2132+Sku6eb6X7zmzlz5ux6PEn6lJaWbi0uLu4mGyLrJWvMz8+f4UmnjxA5QhZS7HNZWdnUdNE5hQR9EsLGioqKWuj7kRRbUlJSmS40D4Co4yD+rfAPEdW5rhdKQj4KQQM4J0n0DhjCVW4XuR9oHlV\/J98rSZVsnmuF0nz8oNIsLCxcFQwGp4vf86AjzrhV5D4dTTq+Tr8d0VD95fP5Frpx2L4XAgYlTQpMq+n8DxKm4+0wV6tdJZIo7YWbPwbi26QfqdL5S+H\/7SqqdMPvJE2iOFPOTUEzpM5bpEodUOMWkXs06yb7r6qZEc5dOn\/hKqqQCESiOYkqic4Ff62jRZKg3XCzJ0B8q0akjupzSZU6aZGTl5Q34kZ\/BgKB2ezzer3LOMcNJ5SpSvJIlY7POTWn3QUBpRzEt0QQqYvMzxxNlW7staRJQ3gO0Bw1IdSYz9Qx28Bf57QhuxNu7iSIbzYhclKEpvZ6HElVR5OOl5qkGZEqdcB5p9DMC0OzyYJIXaTuFr4R6rzFTkj3jK1WHDRDarSmdnPAX59qkbkQaU+B\/7IqglM7+g4qVqu5rhzaeeoIqpC2RaVJN52pGfYbdFRlW0iVrr2QcppkFSC+MUxUNSt0AlU6f5JSqpCuGcUtv9+\/JExZ05JQpErf2eC\/mOxIi4v6aRDfEGGdtCJUjeCPhW+Uk5BkCu2xQjNGoQZVWl+30Pk\/4W9I1tzM0RWfeVhFyXysCp0QyaHoPUZtLU\/G3OxWadIfL+Dilt1CMZrTtZuB6qVE7zezdUVnDv0mctlYhKpUHyaFKoR6SzTjEYr\/pVBtTDhNLDZz0m1ydxKrUHWdfiCp+ny+FYmgKUP8sHx8YJamDUK1VDnVtHs5wSFTDeLrLOw34xGqrtf3E0IVgoBRiiwoKJhvlqZNQjEubIKOb7Jr3TQaxeIyF6+sbMFsEKqu2\/ZShQZVmsPJFhqOKrVzxTaaWFTW7SNNCD3IlUI08h2KYXOO63eXpErtrYwnCHWpNDniWqVpsxlUacnLAhDNsa6bWTqaolIQSrFVwei6FxdVGlZ3baY5SNav2KCdVLlYblXkRqB5FnqvOlYKNgWjUJjsTEIZpzbXWIm0d9QCMlfneI\/oFKFKhoZgWs0GIP7zv+qDHu7BeOZVAoSqWZqEM+73+9eaodlpN80ECjXiBwLih87Rnoith4vrgGZlvJEyQUJVqrdNUaULOmRp0U6a8uUMssNo\/BDYBqHDnKlppt21qDTxwQ7vGhywbkbrxBrN1Bsny9DRbFcLxV6vdxad\/3C6UJyryvRrU7OgdfBjPYivcIHIkCYX79BSpZObLqYZkSq\/kicjaqZ04oMcrpS7SGRIzeJIy60JVDk6SZpcbRdDeRr5v2hyU6fbV\/l8VVlXm5lcX0wJsTveYpMVw14PzMOGNBQqE4h+3M8x5hti3UwH64S52y6D0YALA49Z6+P3hCXiDLH2fEsjgd+ZKr9wyRr\/A+UKAPezYlA8AAAAAElFTkSuQmCC","width":23}
%---
%[text:image:2398]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[text:image:4642]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:1dd4]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[text:image:2011]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:9b1e]
%   data: {"align":"bottom","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:48eb]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:3320]
%   data: {"defaultValue":"2\/t","label":"p(t) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:12bc]
%   data: {"label":"Submit","run":"Section"}
%---
%[control:editfield:8438]
%   data: {"defaultValue":"exp(t)\/t","label":"f(t) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:97b5]
%   data: {"label":"Submit","run":"Section"}
%---
%[control:checkbox:62dc]
%   data: {"defaultValue":false,"label":"Click here for a detailed explanation of the solution","run":"Section"}
%---
%[text:image:0369]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:90e2]
%   data: {"defaultValue":"t^2","label":"μ = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:9d35]
%   data: {"label":"Submit","run":"Section"}
%---
%[control:checkbox:36fd]
%   data: {"defaultValue":false,"label":"Click here for a detailed explanation of the solution","run":"Section"}
%---
%[text:image:5ade]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:8b70]
%   data: {"defaultValue":"(t*exp(t)-exp(t)+C)\/t^2","label":"y = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:6c9c]
%   data: {"label":"Submit","run":"Section"}
%---
%[control:checkbox:32fc]
%   data: {"defaultValue":false,"label":"Click here for a detailed explanation of the solution","run":"Section"}
%---
%[text:image:8a29]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:85ef]
%   data: {"defaultValue":"(t*exp(t) - exp(t))\/t^2","label":"y = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:7623]
%   data: {"label":"Submit","run":"Section"}
%---
%[control:checkbox:451e]
%   data: {"defaultValue":false,"label":"Click here for a detailed explanation of the solution","run":"Section"}
%---
%[text:image:80ba]
%   data: {"align":"bottom","height":25,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAE0AAABMCAYAAAAoVToVAAAEVElEQVR42u2c4ZG0IAyGrwRLoARLoIQtwQ7WEizBEiyBEiiBEiiBDjydifM5jiCQBPU+fuTX3e7iIyRvEuBnnuefamlWIVRoFVqFVqEx2\/f7FYtJMFGh\/QPTLPZZbFhML2YXmy\/Mwv8O8Nnmz0ODGdQvZiIAxZqB7xR\/ChrMCk0Iymfrb3xeDQ1ghZadW0zBclv9Vxv4Lrlbzgo+G1rGn1dBWx8+MLPWBxpDgBJ\/Zwy8GE3xO+zQYCb4HkAyzuou8KKGR0IDJ29KwzoZRx8IGOIx0MDfuJJ+xSNhxotA4SheINWyOA5OldRQMAaXEGW726B5gHVMUAaP2Ux50hWH5gG22kQchQ2jruuKQQMfFhrMQATMFRDEkh0aREkX4XDFC4BljTXngWKXy4CIgvZELnCCM2zQAsL1zARC721OvgeIssCMG8ihwZKZOWcZwodSWUsNTQd8wlHUNi+FpsmgQXXBm5ocwHXEKl+CWJ4L2YcKmvUAaw6+zuXMsl29TRequwWrw2hogaUhDjPC5fgyT7S82yQWmm9pjMfZQlxKutNUNjTwV+hok\/n97qLAODMLYJELrb\/44hEJTQcKlmK3fI+JuYbcd2SE1udCMxQhOuH7XWiwAEpcRHT2LOHKQc\/M0JodOBWbRUTmvxTWpEL7cEPbgWszxK69S7Nho9pI2F9Yl94E\/ipKvsD\/F89Hc6TGpe8h6iBtArq9Ua6oVGi+IKCwXZ0CFVnWYBB6MJZW3EPFrNcw0CSR75oKPrCjSPSzoRE6ezbf42uc7Pa5yZyXdjc0TvU+eAKKOZE3rtTyFATQOEs+OtBSbBN86nT8OwYaRUtOcVdcPQ0ZEeEm1C49k1TQLAG0vgC04TBrmoiAZEL1Q5TkeHggmMFfbT6rS2gSydDOAYy4NS+QHGpz9gnuYrzQkQaTRlHuz+AMCAbbCTs8t8Im7IZi2ycsIcUsalvE+CwmYZcXIV4QJOsWbNoKjFCSclxV10S\/K6mLkCSVDoYNMBPyReYXIRP8Dxc4WRLYiT\/TXI0V8n0bEU3qrLZbpK8laawI7sES5qsDsfgWHM1isj4BUe1tIJzVimtbwn6XkGCCZkpAOwkAuG0JCQGB9DRcYtqF3a5qU1YOVyT7EDVdWHWZxwVIEmgZ6Y8m0mqopm5G05luU1\/GctEFJYch9JmCFFpiNNMFBK7G+NATOUO\/UTlxmWrCCHp2fHsi9pdJ481Vzo4znQn8bodN206AJW955Uio3feB10IEgCWXkTgkQf8SYGUPlF0MZHwgsPERRxcvDqiaJyxRzxFx973zkOyFj3OcZaNIeeQoS+EcB\/8bjxyxHKeNI8roZ7qO5PhRyXKOhQdqGOWIfdUVEye+JHQAbcJesLS74GnibADdcW2OjMggttZgf3b91+FasAEgmYgNMWx3gZTyM6VO0qkSF6fccWdaTwxQbSeQ\/4ub+nZLTsUWAva3YNXrDeudkBVatQoNb78ox6WFMDJfcAAAAABJRU5ErkJggg==","width":25}
%---
%[text:image:5ab0]
%   data: {"align":"bottom","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:377d]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:167f]
%   data: {"defaultValue":"1\/(5000+t)","label":"p(t) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:9a83]
%   data: {"label":"Submit","run":"Section"}
%---
%[control:editfield:5bb3]
%   data: {"defaultValue":"4","label":"f(t) = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:3109]
%   data: {"label":"Submit","run":"Section"}
%---
%[control:checkbox:7c06]
%   data: {"defaultValue":false,"label":"Click here for a detailed explanation of the solution","run":"Section"}
%---
%[text:image:8b25]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:1787]
%   data: {"defaultValue":"5000+t","label":"μ = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:4627]
%   data: {"label":"Submit","run":"Section"}
%---
%[control:checkbox:3340]
%   data: {"defaultValue":false,"label":"Click here for a detailed explanation of the solution","run":"Section"}
%---
%[text:image:3d33]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:9fa1]
%   data: {"defaultValue":"(20000*t + 2*t^2 + C)\/(5000+t)","label":"M = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:2385]
%   data: {"label":"Submit","run":"Section"}
%---
%[control:checkbox:4d4d]
%   data: {"defaultValue":false,"label":"Click here for a detailed explanation of the solution","run":"Section"}
%---
%[text:image:8901]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:4ea2]
%   data: {"defaultValue":"750000","label":"C = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:5786]
%   data: {"label":"Submit","run":"Section"}
%---
%[control:editfield:48d6]
%   data: {"defaultValue":"(20000*t + 2*t^2 + 750000)\/(5000+t)","label":"M = ","run":"Nothing","valueType":"MATLAB code"}
%---
%[control:button:35ab]
%   data: {"label":"Submit","run":"Section"}
%---
%[control:checkbox:8d75]
%   data: {"defaultValue":false,"label":"Click here for a detailed explanation of the solution","run":"Section"}
%---
%[text:image:6098]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:7673]
%   data: {"defaultValue":13,"label":"Number of hours: ","run":"Nothing","valueType":"Double"}
%---
%[control:button:4dd3]
%   data: {"label":"Submit","run":"Section"}
%---
%[control:checkbox:7b3c]
%   data: {"defaultValue":false,"label":"Click here for a detailed explanation of the solution","run":"Section"}
%---
%[text:image:28ab]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[control:slider:6566]
%   data: {"defaultValue":40000,"label":"Rate of rainfall (in L\/hr): ","max":100000,"min":20000,"run":"Nothing","runOn":"ValueChanging","step":1000}
%---
%[control:slider:058e]
%   data: {"defaultValue":100,"label":"Concentration of mercury in the rain (in μg\/L):  ","max":200,"min":5,"run":"Nothing","runOn":"ValueChanged","step":1}
%---
%[control:button:0585]
%   data: {"label":"Plot!","run":"Section"}
%---
%[text:image:0421]
%   data: {"align":"middle","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAjElEQVR42mP4\/\/8\/AwgnJiYapKamfgfS\/ynBUDMMYOYywBggiYcPH\/6nFIDMAJmFYQHIdmoBqFm4LZjrYPd\/gpoyGIPYVLeA5j6gmwUlJaVAxUlgDGKPBhFODaQG1QgIoqKtr\/6r99wlCYP0EG0BSMOWe\/9JwiA9oxaMWkBHC2ieD2iSk+lR6dOk2QIAjF+EgB\/BqfoAAAAASUVORK5CYII=","width":24}
%---
