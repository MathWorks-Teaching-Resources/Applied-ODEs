%[text] %[text:anchor:T_415c] # Classification of Differential Equations 
%[text] [⇦ Main Menu](file:MainMenu.m)
%[text] When modeling many real-world applications, the quantity of a variable is often related to the rate of change (or derivative) of that variable. Any equation that has terms with derivatives is known as a **differential equation**.
%[text]{"align":"center"} ![Derivatives Graph](text:image:06cb)
%[text] Before we can start solving various real-world examples of differential equations, we first need to learn how to classify them, so we can identify the correct analytical methods to use.
%%
%[text:tableOfContents]{"heading":"Table of Contents"}
%[text] **Before you get started**
%[text] This live script is intended to be used with the code hidden. On the **View** tab of the MATLAB toolstrip, in the **View** section, select **Hide Code**.  Alternately, select **Hide Code** using the icon ![live script code hidden icon](text:image:8043) at the top right of the Live Editor pane.
%[text] ![Lightbulb mark](text:image:0cf6) Although the code is hidden, some interactivity requires familiarity with MATLAB. If you need more instruction, consider taking [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted), a free 2 hour online tutorial that teaches the essentials of MATLAB.
%[text] %[text:anchor:H_8F8A032D] ![Warning symbol](text:image:9443)   For an optimal experience, follow the instructions and steps in the given sequence. Proceed to a new section only after completing the preceding one. Some sections depend on variables created in prior sections and will generate errors if run out of order.
%[text] The ![Try this icon](text:image:943d)  and  ![Exercise icon](text:image:3be7) icons refer to two different types of interactive activities that you will find in this script. The ![Try this icon](text:image:8c01)  usually indicates an interaction where you will explore the visualization of some concept introduced in this script. The ![Exercise icon](text:image:9fc7) interactions are designed to challenge your understanding of those concepts and may be used for grading and completion checks by your professor.
%%
%[text] %[text:anchor:H_7c3e] ## Classification of Differential Equations
%%
%[text] %[text:anchor:H_095f] ### Independent and Dependent Variables
%[text] In differential equations, we take the derivative of dependent variables with respect to independent variables.
%[text] Consider the following equation:
%[text]{"align":"center"} %[text:anchor:M_8b88] $\\frac{d^2y}{dt^2} + 2 \\frac{dy}{dt} + (y-1) = 3t${"altText":"\frac{d^2y}{dt^2} + 2 \frac{dy}{dt} + (y-1) = 3t"}
%[text] $\\frac{dy}{dt}${"altText":"\frac{dy}{dt}"} means we are differentiating $y${"altText":"y"} with respect to $t${"altText":"t"}. This means that $y${"altText":"y"} is the dependent variable, and $t${"altText":"t"} is the independent variable. $\\frac{d^2y}{dt^2}${"altText":"\frac{d^2y}{dt^2}"} represents the second derivative of $y${"altText":"y"} with respect to $t${"altText":"t"}.
%[text] It is common for $t${"altText":"t"} (representing time) to be the independent variable when modeling real-world applications.
%[text] 
%[text] ![Warning symbol](text:image:018e) **Notes on Notation:** Differential equations typically use the simpler notation of $y'${"altText":"y'"} and $y''${"altText":"y''"}, etc, in equations where the independent variable is clearly understood. The [above equation](internal:M_8b88) can be rewritten as follows.
%[text]{"align":"center"}  $y'' + 2 y' + (y-1) = 3t${"altText":"y'' + 2 y' + (y-1) = 3t"}
%[text] Another common shorthand is $\\dot{y}${"altText":"\dot{y}"} and $\\ddot{y}${"altText":"\ddot{y}"}, which specifically refer to derivatives with respect to time.
%%
%[text] %[text:anchor:H_9227] ### ODEs and PDEs
%[text] Equations with one ***independent*** variable are known as ***ordinary*** differential equations (ODEs).
%[text]{"align":"center"} $\\frac{d^2y}{dx^2} + 2 \\frac{dy}{dx} = x^2${"altText":"\frac{d^2y}{dx^2} + 2 \frac{dy}{dx} = x^2"}
%[text] In this equation, $x${"altText":"x"} is the only independent variable, while $y=y(x)${"altText":"y=y(x)"} is a dependent variable, so this is an ODE.
%[text] 
%[text] Equations with multiple ***independent*** variables are known as ***partial*** differential equations (PDEs).
%[text]{"align":"center"}  $2 \\frac{\\partial u}{\\partial x} - \\frac{\\partial u}{\\partial y}  = 3xy\n\n${"altText":"2 \frac{\partial u}{\partial x} - \frac{\partial u}{\partial y}  = 3xy"}
%[text] In this equation, both $x${"altText":"x"} and $y${"altText":"y"} are independent variables, while $u = u(x,y)${"altText":"u = u(x,y)"} is a dependent variable, so this is a PDE. 
%[text] Note that partial derivatives are denoted by a different symbol, $\\partial${"altText":"\partial"}.
%%
%[text] %[text:anchor:H_4f79] ### Check Your Understanding
%%
%[text] **Exercise 1.** Consider the following differential equation:  
%[text]{"align":"center"} $2 \\frac{\\partial a}{\\partial b} + \\frac{\\partial a}{\\partial c}  = 0${"altText":"2 \frac{\partial a}{\partial b} + \frac{\partial a}{\partial c}  = 0"}
%%
%[text] ![](text:image:9aa5) a. Select the independent variable(s) in this differential equation.
CheckExercise1a(false,true,true); %[control:checkbox:0321]{"position":[17,22]} %[control:checkbox:180b]{"position":[23,27]} %[control:checkbox:9d4d]{"position":[28,32]}
  %[control:button:0bf7]{"position":[1,2]}
%%
%[text] ![](text:image:4991) b. Is this an ordinary or partial differential equation?
type1 = "a PDE"; %[control:dropdown:79aa]{"position":[9,16]}
CheckExercise1b(type1);
  %[control:button:745c]{"position":[1,2]}
%%
%[text] **Exercise 2.** Consider the following differential equation.
%[text]{"align":"center"} $3 \\frac{da}{db} + a  = bc${"altText":"3 \frac{da}{db} + a  = bc"}
%%
%[text] ![](text:image:0cf7) a. Select the independent variable(s) in this differential equation.
CheckExercise2a(false,true,false); %[control:checkbox:7d7e]{"position":[17,22]} %[control:checkbox:45d0]{"position":[23,27]} %[control:checkbox:1f69]{"position":[28,33]}
  %[control:button:4744]{"position":[1,2]}
%%
%[text] ![](text:image:8b76) b. Is this an ordinary or partial differential equation?
type2 = "an ODE"; %[control:dropdown:1f08]{"position":[9,17]}
CheckExercise2b(type2);
  %[control:button:0028]{"position":[1,2]}
%%
%[text] ![](text:image:0105)  Note that the rest of this courseware module will only focus on ordinary differential equations. Partial differential equations are covered by the [Applied Partial Differential Equations](https://www.mathworks.com/matlabcentral/fileexchange/172650-applied-partial-differential-equations) course.
%%
%[text] %[text:anchor:H_9cfe] ## Classification of Ordinary Differential Equations
%[text] The solution methods for ordinary differential equation depend on three parameters: order, linearity, and homogeneity.
%%
%[text] %[text:anchor:H_7237] ### Order
%[text] The order of a differential equation represents the highest derivative that appears in the equation. In general, the lower the order, the easier it will be to solve the ODE. 
%[text] For example, $y' + y = 3t${"altText":"y' + y = 3t"} is a first-order differential equation, and $y'' + 2y' + y = 0${"altText":"y'' + 2y' + y = 0"} is a second-order differential equation.
%[text] 
%[text] The order of a differential equation is important in determining the analytical methods that can be used to solve the equation. For example,
%[text] - When solving first-order differential equations, you can use [separation of variables](file:./SeparationOfVariablesSoln.m) or [integrating factors](file:./IntegratingFactorsSoln.m).
%[text] - When solving second-order differential equations, you can use [characteristic equations](file:./CharacteristicEquationsSoln.m) or [undetermined coefficients](file:./UndeterminedCoefficientsSoln.m). \
%%
%[text] %[text:anchor:H_7e4f] ### Linearity
%[text] A differential equation is linear if it can be written in the following form.
%[text] $f\_1(t)\\cdot y^{(n)} + f\_2(t)\\cdot y^{(n - 1)} + ... + f\_n(t)\\cdot y = g(t)${"altText":"f\_1(t)\cdot y^{(n)} + f\_2(t)\cdot y^{(n - 1)} + ... + f\_n(t)\cdot y = g(t)"}
%[text] 
%[text] The coefficients of the dependent variable, $y${"altText":"y"}, and all of its derivatives, are either constant, or functions of the independent variable.
%[text] For example,
%[text] - $3 y'' + 2t \\cdot y' + 4y = 10t${"altText":"3 y'' + 2t \cdot y' + 4y = 10t"} is a linear ODE
%[text] - $y'' + 4y' \\cdot y = 0${"altText":"y'' + 4y' \cdot y = 0"} and $y'' + y' = y^2${"altText":"y'' + y' = y^2"} are nonlinear ODEs \
%[text] In order to better explain the concept of linearity, consider the **Principle of Superposition:** If $y\_1${"altText":"y\_1"} and $y\_2${"altText":"y\_2"} are both solutions to a [homogeneous](internal:H_2024) linear differential equation, $L(y) = 0${"altText":"L(y) = 0"}, then any linear combination $c\_1 \\cdot y\_1 + c\_2 \\cdot y\_2${"altText":"c\_1 \cdot y\_1 + c\_2 \cdot y\_2"} is ***also*** a solution to the equation.
%[text] The linearity of ordinary differential equations is important, because many of the most common analytical methods to solve ODEs, like [integrating factors](file:./IntegratingFactorsSoln.m), [characteristic equations](file:./CharacteristicEquationsSoln.m), and [undetermined coefficients](file:./UndeterminedCoefficientsSoln.m), can only be used for linear equations.
%%
%[text] %[text:anchor:H_2024] ### Homogeneity
%[text] To solve a linear ordinary differential equation analytically, we need to determine its homogeneity.
%[text] $f\_1(t)\\cdot y^{(n)} + f\_2(t)\\cdot y^{(n - 1)} + ... + f\_n(t)\\cdot y = g(t)${"altText":"f\_1(t)\cdot y^{(n)} + f\_2(t)\cdot y^{(n - 1)} + ... + f\_n(t)\cdot y = g(t)"}
%[text] 
%[text] - If $g(t) = 0${"altText":"g(t) = 0"}, then the equation is ***homogeneous.***
%[text] - If $g(t) \\neq 0${"altText":"g(t) \neq 0"}, then the equation is ***nonhomogeneous.*** \
%[text] In other words, a linear ODE is homogeneous if the trivial solution $y = 0${"altText":"y = 0"} is a solution.
%[text] The homogeneity of a differential equation is important in determining the analytical methods that can be used to solve the equation. In general, it is typically easier to solve homogeneous ODEs.
%[text] For example, [the method of undetermined coefficients](file:./UndeterminedCoefficientsSoln.m) is an analytical method that is specifically used to solve nonhomogeneous ODEs.
%%
%[text] %[text:anchor:H_5f29] ### Check Your Understanding
%%
%[text] **Exercise 3.**
%[text] Consider the following differential equation:
%[text]{"align":"center"} $y'''' +4t \\cdot y'' + y = 2t^2${"altText":"y'''' +4t \cdot y'' + y = 2t^2"}
%%
%[text] ![](text:image:00c2) a. What is the order of this equation?
CheckOrder3(4); %[control:editfield:2f59]{"position":[13,14]}
  %[control:button:78d4]{"position":[1,2]}
%%
%[text] ![](text:image:0020) b. Is this equation linear or nonlinear?
CheckLinearity3("linear"); %[control:dropdown:2305]{"position":[17,25]}
  %[control:button:0b81]{"position":[1,2]}
%%
%[text] ![](text:image:33a7) c. If linear, is this equation homogeneous or nonhomogeneous? 
CheckHomogeneity3("nonhomogeneous"); %[control:dropdown:1625]{"position":[19,35]}
  %[control:button:2515]{"position":[1,2]}
%%
%[text] **Exercise 4.**
%[text] Consider the following differential equation.
%[text]{"align":"center"} $y''' + y' \\cdot y = 0${"altText":"y''' + y' \cdot y = 0"}
%%
%[text] ![](text:image:679b) a. What is the order of this equation?
CheckOrder4(3); %[control:editfield:2b0e]{"position":[13,14]}
  %[control:button:96d4]{"position":[1,2]}
%%
%[text] ![](text:image:3c95) b. Is this equation linear or nonlinear?
CheckLinearity4("nonlinear"); %[control:dropdown:4304]{"position":[17,28]}
  %[control:button:66b0]{"position":[1,2]}
%%
%[text] ![](text:image:26a1) c. If linear, is this equation homogeneous or nonhomogeneous? 
CheckHomogeneity4("N/A - not linear"); %[control:dropdown:56f5]{"position":[19,37]}
  %[control:button:67bb]{"position":[1,2]}
%%
%[text] **Exercise 5.**
%[text] Consider the following differential equation:
%[text]{"align":"center"} $y'' + 2y' = 3y${"altText":"y'' + 2y' = 3y"}
%[text] ![](text:image:616b) a. What is the order of this equation?
CheckOrder5(2); %[control:editfield:2523]{"position":[13,14]}
  %[control:button:276d]{"position":[1,2]}
%%
%[text] ![](text:image:9b49) b. Is this equation linear or nonlinear?
CheckLinearity5("linear"); %[control:dropdown:9d6e]{"position":[17,25]}
  %[control:button:6974]{"position":[1,2]}
%%
%[text] ![](text:image:57cf) c. If linear, is this equation homogeneous or nonhomogeneous? 
CheckHomogeneity5("homogeneous"); %[control:dropdown:0404]{"position":[19,32]}
  %[control:button:3bef]{"position":[1,2]}
%%
%[text] %[text:anchor:H_4d19] ## Solving Differential Equations
%[text] Finally, in this course, we are going to be exploring different methods for solving ordinary differential equations analytically. But before examining these methods, what does it actually mean to "solve" a differential equation? What does this solution look like?
%%
%[text] %[text:anchor:H_4df6] ### Analytical Solutions
%[text] In a differential equation where $x${"altText":"x"} is the independent variable and $y${"altText":"y"} is the dependent variable, an analytical solution is an expression for $y${"altText":"y"} in terms of $x${"altText":"x"}, without any derivative terms. For example, given the following differential equation:
%[text]{"align":"center"} %[text:anchor:M_823c] $\\frac{dy}{dx} = x \\cdot y${"altText":"\frac{dy}{dx} = x \cdot y"}
%[text] The analytical solution looks like this:
%[text]{"align":"center"} $y = Ce^{\\frac{x^2}{2}}${"altText":"y = Ce^{\frac{x^2}{2}}"}
%[text] You may notice that $y${"altText":"y"} is also dependent on a constant $C${"altText":"C"}. This is because if we don't have initial data for the differential equation, then there is an infinite family of possible solutions parameterized by $C${"altText":"C"}. 
%[text] - A solution that contains an arbitrary constant $C${"altText":"C"} is known as a **general solution**, and encompasses all possible solutions to the ODE.
%[text] - On the other hand, a **particular solution** is a solution that does not include any arbitrary constants, such as the solution we obtain if we have an initial condition to satisfy.  \
%[text] Now, in addition to the [differential equation](internal:M_823c), let's say that we have an initial condition $y(0) = 2${"altText":"y(0) = 2"}. Then we can find the particular solution.
%[text]{"align":"center"} $2 = Ce^{\\frac{0^2}{2}}${"altText":"2 = Ce^{\frac{0^2}{2}}"} $2 = Ce^{0}${"altText":"2 = Ce^{0}"} $2 = C${"altText":"2 = C"} 
%[text]{"align":"center"} $y = 2e^{\\frac{1}{2}x^2}${"altText":"y = 2e^{\frac{1}{2}x^2}"}
%%
%[text] %[text:anchor:H_6055] ### Qualitative Solutions
%[text] Graphically, solutions to first-order differential equations are represented by a slope field.
PlotSlopeField(false); %[control:checkbox:2991]{"position":[16,21]}
%[text] In this example, where $y${"altText":"y"} is the dependent variable and $x${"altText":"x"} is the independent variable, the slopes of the arrows show us the derivative $\\frac{dy}{dx}${"altText":"\frac{dy}{dx}"} at every point $(x, y)${"altText":"(x, y)"}. This illustrates why the **general solution** encompasses an infinite number of possible solutions.
%%
PlotSlopeFieldWithLines(false); %[control:checkbox:6b25]{"position":[25,30]}
%[text] Each **particular solution** is represented by the curve that is uniquely identified by a point that corresponds to an initial condition, $(x\_0,y\_0)${"altText":"(x\_0,y\_0)"}, that the solution must pass through.
%[text] 
%[text] If you'd like to learn more about qualitative analysis, be sure to check out the [Qualitative Analysis of ODEs](https://www.mathworks.com/matlabcentral/fileexchange/95513-qualitative-analysis-of-odes) courseware and the [Phase Plane and Slope Field apps](https://www.mathworks.com/matlabcentral/fileexchange/91705-phase-plane-and-slope-field-apps).
%%
%[text] %[text:anchor:H_7dbe] ### Numerical Solutions
%[text] Instead of finding an exact expression for $y${"altText":"y"} in terms of $x${"altText":"x"}, numerical methods are also commonly used to find an approximation for the value of $y${"altText":"y"} at different points. This is useful in cases where differential equations cannot be solved analytically.
%[text] 
%[text] ![](text:image:2878)  This course will just focus on analytical methods, but if you'd like to learn more in-depth about these numerical methods, check out the [Numerical Methods with Applications](https://www.mathworks.com/matlabcentral/fileexchange/111490-numerical-methods-with-applications) course.
%[text] ![](text:image:4cba)  MATLAB has built-in functionality that makes it easy to solve differential equations numerically, and visualize your results.
ShowCodeAndGraph(false); %[control:checkbox:854d]{"position":[18,23]}
%[text] ![](text:image:1100)  You can learn about solving first-order ODEs using MATLAB in the self-paced online course [Introduction To Solving Ordinary Differential Equations](https://matlabacademy.mathworks.com/details/introduction-to-solving-ordinary-differential-equations/otmlsode).
%[text] 
%[text] Given that numerical methods do a great job of approximating differential equations, and can be easily computed by software tools like MATLAB, you may ask- what is the point of learning analytical methods?
%[text] While it is true that numerical methods may be the best tool in some circumstances, the exact expressions that analytical solutions provide are very valuable for gaining a deeper insight into the behavior of a solution, and allow for a clearer understanding of how changes in parameters can impact the solution.
%%
%[text] [⇦ Return to the main menu](file:MainMenu.m)
%%
%[text] %[text:anchor:H_4b4e] ## Local Helper Functions
%[text] If you wish to see the details of the code, select the **View** tab and switch to **Output Inline**. Alternately, select **Output inline** using the icon ![live script output inline icon](text:image:62c9) at the top right of the Live Editor pane.
% exercise 1
function CheckExercise1a(aSelected, bSelected, cSelected)
    if ~aSelected && ~bSelected && ~cSelected
        disp("Please select one or more variables.")
    elseif ~aSelected && bSelected && cSelected
        disp("Correct! b and c are the independent variables in this equation.")
    elseif ~aSelected
        disp("Incorrect- remember that some differential equations may have multiple independent variables.")
    else
        disp("Incorrect- remember that independent variables are the variables we are differentiating with respect to.")
    end
end

function CheckExercise1b(type1)
    if type1 == ""
        disp("Please select an answer.")
    elseif type1 == "a PDE"
        disp("Correct! This is a partial differential equation, because it has more than one independent variable.")
    else
        disp("Incorrect- remember that an ordinary differential equation has only one independent variable.")
    end
end


% exercise 2
function CheckExercise2a(aSelected, bSelected, cSelected)
    if ~aSelected && ~bSelected && ~cSelected
        disp("Please select one or more variables.")
    elseif ~aSelected && bSelected && ~cSelected
        disp("Correct! b is the only independent variable in this equation.")
    elseif ~aSelected && bSelected && cSelected
        disp("Incorrect- for this equation, let's assume that c is a constant. But there are scenarios where that is not a good assumption.")
    else
        disp("Incorrect- remember that independent variables are the variables we are differentiating with respect to.")
    end
end

function CheckExercise2b(type2)
    if type2 == ""
        disp("Please select an answer.")
    elseif type2 == "an ODE"
        disp("Correct! This is an ordinary differential equation, because it has one independent variable.")
    else
        disp("Incorrect- remember that partial differential equations have more than one independent variable.")
    end
end

% order exercises
function CheckOrder3(answer)
    CheckOrder(answer, 4)
end

function CheckOrder4(answer)
    CheckOrder(answer, 3)
end

function CheckOrder5(answer)
    CheckOrder(answer, 2)
end

function CheckOrder(answer, correct_order)
    if answer == 0
        disp("Please enter a nonzero order.")
    elseif answer == correct_order
        disp("Correct! The " + NumToRank(correct_order) + " derivative of y is the highest derivative that appears in the equation, so the order is " + correct_order + ".")
    else
        disp("Incorrect- remember that the order of a differential equation is the highest derivative that appears in the equation.")
    end
end

function rank = NumToRank(num)
    switch num
        case 2
            rank = "second";
        case 3
            rank = "third";
        case 4
            rank = "fourth";
    end
end

% linearity exercises
function CheckLinearity3(answer)
    CheckLinearity(answer, "linear")
end

function CheckLinearity4(answer)
    CheckLinearity(answer, "nonlinear", "y' * y")
end

function CheckLinearity5(answer)
    CheckLinearity(answer, "linear")
end

function CheckLinearity(answer, correct, nonlinear_term)
    if answer == ""
        disp("Please select an answer.")
    elseif answer ~= correct
        disp("Incorrect- check again to see if this equation fits the form of a linear differential equation.")
    elseif answer == "linear"
        disp("Correct! All coefficients of y and its derivatatives are constant or functions of t, so the equation is linear.")
    else
        disp("Correct! The equation has a nonlinear term " + nonlinear_term + ", so the equation is nonlinear.")
    end
end



% homogeneity exercises
function CheckHomogeneity3(answer)
    if answer == ""
        disp("Please select an answer.")
    elseif answer == "nonhomogeneous"
        disp("Correct! The trivial solution y=0 is not a solution, so the equation is nonhomogeneous.")
    elseif answer == "N/A - not linear"
        disp("Incorrect- we saw in part (b) that this is a linear equation.")
    else
        disp("Incorrect- remember that in homogeneous equations, the trivial solution y=0 is always a solution.")
    end
end

function CheckHomogeneity4(answer)
    if answer == ""
        disp("Please select an answer.")
    elseif answer == "N/A - not linear"
        disp("Correct! Because the equation is nonlinear, we can't assess its homogeneity.")
    else
        disp("Incorrect- we saw in part (b) that this is a nonlinear equation, so we can't assess its homogeneity.")
    end
end

function CheckHomogeneity5(answer)
    if answer == ""
        disp("Please select an answer.")
    elseif answer == "homogeneous"
        disp("Correct! The trivial solution y=0 is a solution, so the equation is homogeneous.")
    elseif answer == "N/A - not linear"
        disp("Incorrect- we saw in part (b) that this is a linear equation.")
    else
        disp("Incorrect- remember that in nonhomogeneous equations, the trivial solution y=0 is not a solution.")
    end
end

function ShowCodeAndGraph(checked)
    if checked
        F = ode;
        F.ODEFcn = @(x, y) x * y;
        F.InitialValue = 1;
        solution = solve(F, -2, 2);
        
        disp("F = ode;")
        disp("F.ODEFcn = @(x, y) x * y;")
        disp("F.InitialValue = 1;")
        disp("solution = solve(F, -2, 2);")
        disp("plot(solution.Time, solution.Solution)")
        
        plot(solution.Time, solution.Solution)
    end
end

function PlotSlopeField(checked)
    if checked
        % Define the range for x and y
        xRange = -5:0.5:5;
        yRange = -5:0.5:5;
        
        % Create a grid of x and y values
        [X, Y] = meshgrid(xRange, yRange);
        
        % Define the differential equation dy/dx = x + y
        dYdX = X + Y;
        
        % Normalize the vectors for uniform arrow length
        L = sqrt(1 + dYdX.^2);
        U = 1 ./ L; % dx component (always 1 for slope representation)
        V = dYdX ./ L; % dy component
        
        % Plot the slope field using quiver
        figure;
        quiver(X, Y, U, V, 'AutoScale', 'on');
        xlabel('x');
        ylabel('y');
        title('Slope Field for dy/dx = x + y');
        axis tight;
        grid on;
    end
end

function PlotSlopeFieldWithLines(checked)
    if checked
        % Define the range for x and y
        xRange = -5:0.5:5;
        yRange = -5:0.5:5;
        
        % Create a grid of x and y values
        [X, Y] = meshgrid(xRange, yRange);
        
        % Define the differential equation dy/dx = x + y
        dYdX = X + Y;
        
        % Normalize the vectors for uniform arrow length
        L = sqrt(1 + dYdX.^2);
        U = 1 ./ L; % dx component (always 1 for slope representation)
        V = dYdX ./ L; % dy component
        
        % Plot the slope field using quiver
        figure;
        quiver(X, Y, U, V, 'AutoScale', 'on');
        xlabel('x');
        ylabel('y');
        title('Slope Field for dy/dx = x + y');
        axis([-5 5 -5 5]);
        grid on;
        hold on;

        syms x;
        y1 = -x - 1;
        y2 = exp(x) - x - 1;
        y3 = 3 * exp(x) - x - 1;
        y4 = -2 * exp(x) - x - 1;
        y5 = -20 * exp(x) - x - 1;
        fplot(y1, [-5 5], 'LineWidth', 1.5);
        hold on;
        fplot(y2, [-5 5], 'LineWidth', 1.5);
        hold on;
        fplot(y3, [-5 5], 'LineWidth', 1.5);
        hold on;
        fplot(y4, [-5 5], 'LineWidth', 1.5);
        hold on;
        fplot(y5, [-5 5], 'LineWidth', 1.5);
        hold off;
    end
end
%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.
%[text] 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":40}
%---
%[text:image:06cb]
%   data: {"align":"baseline","height":250,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAAD6CAYAAACPpxFEAAAgAElEQVR4Ae2dT6wdVZ7fi2S62zb2s5sBYdp\/QPS0CWBsBJ0w2IEXKd2CdDQ4E2iI0EiWYEBy1COgG4UsWrxZzeCIlqORs4AoJouWYvfGi0goUi+QRixbIrGybdnLSJEgUjbZRJV86r3v83nHVff+6t6q++6t+h7pvbq36lenzj3nd36f+p2\/xf\/8P\/\/3v\/rPeWAdsA5YB6wDbXWg+Edf\/I\/Sf84D64B1wDpgHWijA\/\/x5v8ui+LardJ\/zgPrgHXAOmAdaKMDf\/nf\/5cB0ibDLOsKZh2wDlgHNnXAALH3Ze\/TOmAdsA7MpAMGiBVnJsXxG5jfwq0D1gEDxAAxQKwD1gHrwEw6YIBEFOfyl2XxyrtlwTEibxnnk3XAOjACHTBAIoW8cbUsiqIsOEbkLeN8sg5YB0agAwZIpJANEBuDiJ5YxnoyMh0wQCIFboDYMET0xDLWk5HpgAESKXADxIYhoieWsZ6MTAcMkEiBGyA2DBE9sYz1ZGQ6YIBECtwAsWGI6IllrCcj0wEDJFLgBogNQ0RPLGM9GZkOGCCRAjdAbBgiemIZ68nIdMAAiRa454HYOER1xXLWlZHogAESLWgDxEYhqiuWs66MRAcMkGhBGyA2ClFdsZx1ZSQ6YIBEC9oAsVGI6orlrCsj0QEDJFrQBoiNQlRXLGddGYkOGCDRgjZAbBSiumI568pIdMAAiRa0AWKjENUVy1lXRqIDBki0oA0QG4WorljOujISHTBAogVtgNgoRHXFctaVkeiAARItaAPERiGqK5azroxEBwyQaEEbIDYKUV2xnHVlJDpggEQL2gCxUYjqiuWsKyPRAQMkWtAGiI1CVFcsZ10ZiQ4YINGCNkBsFKK6Yjnrykh0wACJFrQBYqMQ1RXLWVdGogMGSLSgDRAbhaiuWM66MhIdMECiBW2A2ChEdcVy1pWR6IABEi1oA8RGIaorlrOujEQHDJBoQRsgNgpRXbGcdWUkOmCARAsagJz\/0BUjml+Ws65YBwavAwZIVMkByCvvDl4himh+WM66YB0YvQ4YINFKYICMvrIYrresA1F7MRI5AyRa0AaIjUdUVyxnXRmJDhgg0YI2QGwUorpiOevKSHTAAIkWtAFioxDVFctZV0aiAwZItKANEBuFqK5YzroyEh0wQKIFbYDYKER1xXLWlZHogAESLWgDxEYhqiurKnflRllsXC2LCx+Xh17\/eXn05bfKQ6efrf6OPn225G\/7+8tvlXtee68s3v+0LC5+bt1Y1TKfM90GSDQDDRAbiaiurIrc5S8rWBx+4dXy0PeOlUVRlI8+cao8d+5cubGxUf198cUXZd2frq+vr5f3Hz1e3Xv4qTPl3jc2yoJ4VyUPnM65ysoAiSqQATKXotmgLMkcistflve89ZflfSdOlvsOrFWwuHTpUgWJco5w8+bN8rPPPivPnz9f7l87WN7zg8c3YYJXE61jllu5vDJAokq774BnokfzynJLZwj2\/exXlVG\/e+1gZeSvX78+By6m3wpMzj6\/Xu49sFY1hxUGydLpRBdgN0Cixu6xZwyQaF5ZbjmMxZUblfHes3+tPHnqdOUhfPPNN9Otf4cSNH\/RzLXnwNqmR2LdWA7d6KgcDJBoRhogg1L8Lt6+ljaOLXDw9o\/xxojvdiANQOzgHz3uTveozVkBOQMkWkgGiAES1ZVdlKOpCo9jWcCRg4vOd\/peSOfSAngXy2\/V8sQAiSqLAeIKH9WV3ZC7+Hl575NnyiPHH1wKjyMHR\/odb+QAHe0\/ftU6tRu60uEzDZBoZhogruxRXVmwXDV0tiiqYbepoV7mz\/TFbDdpuYN9ZeuWARKt7AbIyir5qjULhNN75UbldWCIv\/rqq2XmRW3agAjDfhny61FaSzLMO2oPt+QMkGiGGSAGSFRXFiG3cbUa2YQBXvTIqloazHFy1yDChEdm3nsm\/cx12wCJVnYDZGYlC79RR8ti5HJ0QDOfg7kWQwm1EEmbtjD2LJvSRdkTF9tTs8PoT96oZtGzfEsncXeRvhWKwwCJFpYB4goW1ZUe5eh4pgN6FZuspsHuDog8+GhZ3HekLP7ZvyyLR37YTTMX3gZ1OS0jvufn0uv+vDO\/kvwwQJLM2KFU+XkDpFGJJuZbno\/+Pls+XrlRjVqiv2PVm6wmgeQOiPzJ22Xx7T1lsXd\/tW7X3Lr2wx\/f6ckAKrwR62brPDBAokpjgLRWLlfIjjpGgccPHq9GLQ0ZHgILizmy6m+lPzQxqcmJ5YQw9vRbNNXb9ZfLAjmapNImMMlTj4GIruGREKe+S87H5jxO8sYASTKjUSmRMUBCCjUxD6N5bbnbeb0FD97MxwAPIMLvxNPanicCMOizwMjjKbCwKfWxDiS6DhSQAxace\/F8WXzr22Xx9l9vnlMc7vu4rWsz1DsDJJppBshcimawzOCNJPDQ2\/lYjkDk2PEHN\/ccAQB7777tJeCR4GkAAY58Vz3Go+A8sOH8X\/zbsvju\/Zvn\/t7fvx2H5H28nXcz5IUBEs00A2QuRduu4NH8HrvciOEhSDJQgKXh9\/yLX2wC4PT6Th1MQYKnIY8EgPCZv299pyzu+jtl8c\/\/Yue9Y9evjn6\/ARLNSAPEFTCqKx3I0QfAelZjD0Ck8igef3bzWDdnIwUJ9fTYibI4e25T\/g++VRb\/5r9YdzvQybqXQAMkmrEGiCthVFfmlKPtf+ijrdqAkfkurCxcPPzE5rDepg5v9ZHgceCF3HPYTVZz6mIdNNJzBkg0gwEII0Ki8pZzXs2gA2svvWl41NCFVXwP3H9kczgvzVVNefuv\/sMmPB56bHN0FUOAz760s5+k6V6fb87XhrwxQBoy5g4FBSD8ReUt57xqqQPMMKfNf4iTBGuY0PoUI9EOHv\/+JiDoWM\/zl5nqdx\/cBIeu0eSFbNrRrms+3pmHLfPEAIlmmAEyt7LdUeGjeT8Gua3RQ4bHZK7QtHf34\/9gEyL50iZ4JjRdvf6vrasLqjMGSDSjDRBXyqiutJW7cqNaGHFIa1tNxsDsVzW89+\/SRMWEwbRTHS9DI7DaloHlZ6rfBkhUcQyQmRTMXsf0+R9s80rzjEMsBzS8966Df7g5RJc+DnWsGyALracGiAGyUIUzUHYCRZ3mMdNpKeXA9evXyz37D5TFgUNlsWffZuc6s9UBSLROW27uvDJAokpkD2RuZXPF3gkPlien0\/zmzZuyiz62yIFLly6Vd997eBMe3z+92aRlgCy0nhogBshCFc4Q2YLI5S+rfg\/epB1mzwGa\/g6cOLXpeTz9j7tZsTdqEyxXGiBRJbAHYtBEdSUgd++TZ8p33nlndsvpO6sc0MKL+\/74hU2I0IwVyH\/LZN7wjHlmgEQzzgBxxYzqyhS5Pa+958mCHQJQnerFuQubEPEKuwurqwbIlMq+\/aZigCxMKbfzPFo2qyTn+R4douN2VAyB3sNyJ4bIQuupARI1PiwbDUSi8pZzXtXowH0nTpYsy+HQfQ7QH1JtRKWl3u2J9F4HDZCaSl4LCZZDMEB6V8javI+W0ZLLHXr951XTVRem84MPPqiaazg6bOaAJhnufWPj9n4hhkivddYAiRodA6RXRRwyOKrfdvHz8u4JQ3YFhGoeA0NRt\/44\/\/vf\/\/4ORnz00UeVDMc24bvf\/W7505\/+tM0tKyX7xRdflPtoykqXeDdEequ7BogB0ptyDR4KUd25dquc1nQlgPzmN7\/ZNth8\/tGPflSBIj2\/LTDDh6EDhCyhiZBRbpX+uTmr1\/ptgESNgD2QXhVxyLCJNF3VAUR8ePrpp0sMf50nIpnI8euvv65gNGQPhHzY0ZRF\/RZEGOLrVXk7rccGiAHSqUINGQQz\/bbgqKtJAPntb39bGf633357mxNqwso9E2TU\/MWR74BH8afX+Kz7iU\/ejmTy5rHf\/e53VdyffPJJyd\/DDz+8\/axcVgnlfCrHM\/RMZIBammZA2RSX4owcacqqRmVpjSzgwWq9LMB435GSVQBmKs+ovRiJnAESLWh7IK5wUV1J5GhKiYy6koFPjWtqKDGsGGIFjGwKAM7jWaSeCgafcxwJAkDugQAY4k4Nt9KTntP9PAMQKAgAedp1Po2Dc8CHADzwrohL3hVxdAURRmWxu6NB0c2kwbp8NECSyl6XQdvnDBBXxKiubMkxGujY8QdlZyceZbBzI6ybMLQAA6NLqAMIhjeHg+7nKABMkknlc1A03Y\/xJ23AQYHfwTl+V1PgGs\/Qb5Kczuv7rEfWGGPgwo4l31uW4Xb993219d8AiSqGAVKrQK5gDW93W3t80JQSCV0ABC8Cg9wEoSYANKVPfS+6rvtzKAAAYJGCSc1h8iwUR3okrSl0dA0Phfh43rxhR4d6tK5bLlzXDZCoshggYaUyVG6V9559sdUeH10ABGMtTwWY5IZeAEgNfWqgAQ\/3KA6MOEZeQffn8dYBRDDTvflRXgvPaPrrAiB0qB\/AC9m4av2N2roWcgZINLMMEFfAqK5sXK2Wacd4RcM0gGDIMcoKdU1YusYbvDwA7pEXIADkAAEAkscjUJ\/FPB5IFCB5WvQbujyy7Pvhp7aG9UbL0HKh+m6ARBXFAAkplL2PW+XaA8dKjFabMAkgdf0JkwCi5+o+4EBoAgjQwAtgtFca5gGIgCR4pfHqcw5Fne\/jeOT4g+W+n\/3KOhy1d0E5AySYUYUB4soX0BWttNvWCE4CiAx52tkcAQhpwEgLIHVNTchwPW2qUtpzL0IAijRhqR8jl1XcHCf95lSui8\/su3Loe8dub30bKEu\/DDX07yV5Z4AkmTFRYQwQA2Sarly5Ue49sFZGO85Tw1hnTDHCgkfeMZ4DhDd9IKDmJ+KWTHqO+ACDYMR9ejbPI3BOUEnB0gYgxCMvJH1+2kRGGpSe9Pchr7RUCero39nn10smdU6s59PK2Nd35J8BElUIA2SH4rgS3vl2xpwD5h7MEmTE8w5lzsvYp\/EKDjK8GHfOYZAVB6BIjTf3A4dURtfpi9B9GH7i5dnzAITnET9xpHHrmfo9+W\/n+bmMZOc5sm\/I9jpZ0XpvuYn13gCJKogBMlGRRg+Uy19OXCxxHsPne7vLAXaBZITc6PU1avemyBkgUzJoW9EMEFe6CbrCPhSRGefdmULHNEsOMDJuv4f1dlaXDZAJRmEbHsgAENbQicpbbjx5tXG18j7aDNudxfj5nm5ywMN672x+ndWuGSBRQw9AmPQUlbfcaPLK3kc3hn2RsTCs15ML5weJARI19AbIaIDQ6iVha6Moex+LNP\/zP4s91D250ABZnFEzQBaX11GoL4Hc4Rdedd\/H\/PZ84TEA\/GqhRe8PMle9tgcSNUIGyFyK1uqtPlomuy2H8SmKklVfHVYvBxhyvfbSm9brOeqRARLNPAPEFS3TFSalnTt3bvUsp1Nc5QATPll2ZpAvN5mu9vUbDZBoRhsgrmiZrmB8WCLDYXVzoBrSy66RWdn6e6x\/xACJKo4B4kqW6srFz8sHjh1fXcvplFc5gAfJxl8GRgwYeT4ZIKlRmPTZAHElS\/SDtnNmNY8t1K2HVXdu3nzRwo8su9JnYE6IZ6bPBg9gYoAkRiGn647vBogBkugKzVezLJrYZAxlhPtYA6rpmbOcVzpZv0qh7pyuzXpcFEBYH6tapTcp2x313ucn1nsDJKogBshERRpVpdta92pW41h3n4ywAbKZO4sCCE+rJghfuWH9jtrCRM4ASTJjohF8\/1PPRI\/m1dDlLnzc+egrVr\/FkBkgiwcIy7x7VvpszVgGSNTYsaeylzLxW9q1WyWTB9vuOFjndehcurx6pWNb+4RrGXeWQ6fJCC9FsoCG65xn2Xbdx2ct8U78WqadZdzzoD0\/9ByuE2+6\/Dr7d6RBnlK0CUt7mih9PLMuLTxXMvwG7iMdffeB8Nvoy2IjsIkvkFE7MTI5AyRa4AaIK9iWrhx+5GSn\/R8y3BjQOg9EhjQ3vhhZzqWbL\/GdeDD0hCbPBmgQbwoIYJMCSHuHEKdCG4AICulvIi6ekUJLadbv4JrOLQIg1eKKL7xq\/Y7awkTOAEkyY+IbiAHiCiZdKQrZ086OdcZWkWPo+UuNrq7lR\/Y1z0GEwc4NMcYaOXkrAo2+K16d137pUYAIUKmnQpw6L6go\/jo50penW+nq8shgiKNPn7V+S79bHA2QaGYZIK5g6MrG1fLRJ051ab+quKYBJGpIMdAYXrwJBbwMzqVNR\/IEJJN\/13nu4V4Z\/ChA9HvSZypOgKb0ydPI5fQ7or9bcc9yZF0sfuPEF8ionRiZnAESLXADxBUMXTn\/Yecd6Bg9GVwZ6tQQqgkrPZd+5h7e4JGrDGEGkDqvBNm0+QqjrnvrjkpXFCCCVl1cnBNAAARpycMiAcKzq4UVPSO9dR03QAyQ1koz5je1w3\/2i15W350FIBhzDD8GGIDQHCTDKwMtw4wcb\/sENV+pWYpzikfyTce2AEF+Umh6rn7HIjwQ0re+vl4WjLSM2gPLVXllgEQVwR6IK9e1W+W9T57pZf2rWQCC8eUPY6sgw5sDBMDw5k9TEd4B96WhqSkpleFzFCD6PeoYz+PR96bn6ncsCiBsR8zimAZIu+G8BogB4koT1QGG8PYwAgtjqs5kNRXJwHLEw6gzpJzPQaE+i\/y8DD8GXR5L+gw9P+\/MTmX4rHhSubpzAKAp3WmcAk3+uxcNEDaY8pIm7eABbA2QqPGwB2LQoCs9jMDCoMrgqpmJ7wpNhhio4ElgwAlAgO91YOG6rvEb0uYrPQfocC015gAn\/S5Apf0ndeeIU3BIYUZa03uR43eQZtJPQIZ8aPrdlVDH\/xiJ5SVNDJD+jJwB0l\/eRiG+DHI9AQR7iAHFaGLEUyPfZEgx3GoCQh5DzTkMcmq0ZWtl0PPmK13niAzXlQY+p94GMgJNer7uHLL8pjSNxMt9pFMBWOp+riMviNR5Xrqv62P1m5dBx1YoDfZAooVlgBggG1fL7z\/e\/RDerg2h45stB06cPOUlTaL2cEvOAIlmmAFigGxcLVk3yWGYOcDeIAzTdkd6vCnLADFAXGGiOtDDIorDNMWr+asYiXX05bdcH6L14f\/LGSDRzLIHMvqKxYJ7GBmHYeaAlzSJex7y0gwQA2T0YFBlmHZ86Pz7Bsgw2VH9Ki9pYoD0ZwztgfSXt1GI77Ic8wSYL+Aw3Bxgn\/vCS5qE67o9kKhREkCsXGHlmvZGv2rXDz91pvNl3Idrilfzl7kjvZ0XYoC0BQggid5juUHl1UM\/PGuArCYXwqlmb5AHnntxUHrbp70yQKJGXh6IATLeylUUJe3kDsPNge1+EO+RHqrnBogBElKUPt9iVibuHmehd2WSmfm9yNnb0XQz85xZ7ekM9Oi9i5ajGWvfz37lehGwjQZIIJMqA2cPZNwVijfSFQAI8EiXGFm08Z30PJYr4W\/ZAwMljj\/\/T8at70G7aIAEM4qd6Kq1ctyENc6KtXG1PH3muaW2fVpLK12IcZkSrI2ttPjjMqUtTYubseId6QaIATJOIETLXXIbV6tNh1JDs2yfWYRw2d\/w6xZnXLZ8JD0nT532BlPS\/QlHA2RC5uxom7cHMm7QvPJu+c477yyjravSpOXgp23gtNs\/oG4zq91OU93zWXHgvj\/983HrfMA2GiCBTHIfSNyl3QHdaN6ugFxfW9nWGa9ZztF8RRNr3kmNR6LOaz5XzbDJkun5s7g\/XX6dPpU6KOVyLDkf6Xshrrp05unY7e8sa3LfiZMGyJS6aYBMyaBtg2gPZNSVadlnobOPB0Y8D0CD80BEIMD4AwbOp8Chb4JzAET9KNpDhGMaiC8d7UXceBe6L5VNP\/MMAALwlj1UsPVw3on13gCJAoQZ6Gz04070iQq1Ddxovq6I3NGnl3sSYVPTkLyOFBQYbnVop14DQAAMeVAc6vzWvTlU8vvqvgMY6tEs99bF1+e5Z5573vV9Sv2cHyDnLpQFf1f+2\/ANiwEy\/DJuqDB79q+VX331VZ\/2aq64MfKpR6DIZPzrPAN5JsgKCvl2s+k1GX1gBAR4Xg4mPbfpuEoAoc+LFZiH+lLUxe+aDyBv\/dXmWzmGFYg0VL7BnDdAhl\/GTTq85HNAZgUIECGob0KQSAEgYPAMBQ0ZBiQ0edXdJ9n0uEoAYVmTwy+8Ol6db6oLyfnpAHn4iU1I1HkYf\/O3ZXH\/8c3rv\/z18DPaABl+GSeVY\/vF5+Ln5d1rB1M7uHSfpzVhNXkgswJEGQA48EQEEp1vOq4SQLw\/yPTBM9MBcvfBZoDUVbYhnzNAxgmQFdjKFkMuGKTGu6kJS14F3gOhTRNWGr8+05cS6dtYpU70mzdvbtq+Idu0OX+bAdImAw2QcQLk\/Ifl+fPnZSuX8jhpGC+GPfdAAE5u8KOd6HUZIDCoKUtNYhr5pXt0vm3fie5f9JE8KjwSq7HeTwYIzVZkYJWJI+gknwYTA6RRkbabe6bl4QpeX\/Y5IBhVAIEHkhtseSB4GhpFpf4LeR8yylwnDs4LOAJNOlqLZwCb9Fl6jp7R1KzV1NSmNCzb8cTJUx6JNaHONgNETVcCSHp8799tGpIUMH\/9n28bF52nf4SHv\/7B7b4S4nniH5YF\/Sdc48h3xU+fi+KvSzhx02EvecU36Z66eGY5x7M8jPd2Oc+Shyt4z6HTz67EToQY\/rSjG2Msw46x57rqTd1oK+TxDFK5HBTI0NwFUICN4uOedG6HwJNChnsZJpzCiHPLHNbX18viwsej0\/noC2G\/AAFCKRxSow9cAEt6Lv2cAklGJ+20T2X1mVFhku3jyHMMkH7zuI9ymzPOw4+cXImNpORZyHvAMAsg6bndMtjqZ5GXslvpaPNcljQ59PrPR6fzUTvaDBAqHUZcxpk3\/7wiytNAJjX46Xmu\/fE\/vT1PJIcGIJH3QBwa1fWj1+98nq7lQ4YBB7DiL09jl98NkH7zt8uy6jKuFdpICo8hfcNfJoCQFv5WKbC0O6sQ9GpXutTVBcfVP0AARv6jBAKaq3IwCTBcS+\/T+br4kNP1Pr0QA2RnmaTlM9TPl79c+iG8qUHGC0lnky8LQPA6SNeqdJ4rTxnKiwe6wxYNVddn+F39AyT1TJRAPBKMce5JcB1vhGu5N9HUFIZs+tcEGD17niPPcRPWuCrTxtWSJS1WNSwLQFY1\/0h3ZV\/msRsDvnd1ACKvJYVF3WcDZFwGvu\/KuQJDeFfZOK9C2j0Sq3lC4eoABI8EYKi\/pG\/DURe\/PZDRwemh8++XdKQ6jDcHmAO0942N0el+pNludQCiJqy6Zq86Y9\/HOQNkdJXo3ifPlNevXx+v9fQvr4ZwP\/CcO9LrgLI6AFEnOZ6I5pD0AYlJcRogowPIoe8dW+pVeG3f+88BljTZc2BtdLpfB4z83GSAYEzVdJS++cuAp8N1087ypvMyzrN0onOv+kE4pqOtSA\/DftM06lldHg2Q8VWiJV+Ft3\/z6SeQA0eOP+gBNDW2dDpAZOwxnvpTR3UTKJrOKwGKs87gN43C4t50nojSkh4Bi57Rx5FneRRWv3ncR7nNGufG1ZIOVAfnAHuDrL305nh0P1hnpgOEiHi7l6HGI9HbfxMoms4rUbMCRPcDHnlGpIs5I4KaZPo48qzzH1qJ+sjbZYzzwsclS1k4OAfYTGztgWOu+1k9jQEku6nXt\/xlfhYAeeVdK9Eyl1GHaWMJC4\/AMjyUAw8cO14WbG3doY6telyTAfKTN8risWf8pzwoivIPDv5hyeJ6\/ht+HnznwMHykUceqbwQPBH\/jTsPjhw5Un77\/qPjs4cTFpM0QASHyLEoyrvuuqt85plnbExGYFC\/\/Z3vlMWDj43PYETqgmXGoxczA8Su2k53tSjKfYePrcTS3nK7fZw9B7yERfMM5FVvenH6uynbyR6IAXIHQPY88WzJiAyHYecAi+gxB8SGphtD43wcZj4aIG0gSSf6+ivlo094aOew8VFWXqaX8R6m0TPMuitXA6QtQBiFtcT7Q7CcN+ljXwiH2XPAGwl1Z2RssIeblwbIDAA5\/NTi1kcSELbn4eAFFUW1MQ\/X8qBd39hitE1g2W+2KHXYzIFqK9P3P3UTVpv6YdnR6ctwAcLyJkwuZFJjV4q9NQ+E+QGs0LmIIICku8yxKY\/2eUjPz5MeA2Rn7t1\/1GP+O6s3XdU\/x9OdLesoL4cLkHRJFGa+d7EMvCYSblwtmVS0iFAHED337bffrryRTz75RKdmPtLkZQ9kM\/u++eabKl9tQIfb9OKy7aZshwsQPBDAkS55wlpZLMuSLvzYhsSMfd+aic7qnKzS2XeYBBCejdFPtzBl61CauHLP5KOPPqpk1RRGExdxK36d11H3Ayd5O7rG9zxwjnR8\/fXXO+QBU902pjyXNChO7iWNacjTDDAXERiBdd8Jb2NqI9uNkR1yPg4XICkYWLtL629t9SFsr5+llYVT+abPCUDYH+DSpUu92zMZeBn0\/IEy7jLSdQDBEGOo5anIyBO3AiCq80AAAM\/mHoLSk0OE74pD8ZImzuUd+qSD9KRxkMb0N3INqKRxEU\/bvh39vjZHyvXwC68uXXPBkA2Rf9tqwmocABEQ1C+izakEE+CiBSIlW3dMAFJc+Lg8d+5cG7s0k6wMdmpc04g4jzGWoa0DCEa3Dg5pPDL+6bmmz3XxYfBJB89Pg5rZBDhAVAeV9B79Zv0mXdN5Bgr0GZjns+e19wyQujrgc9aLRAfGBZDkh1ebUgGNFCY0d7HSb1PHewqQy19WBrNPQ0bcMprzAERGPG8iStPeBiCCVgoLAUSeiuLOZXNvSHLpEUClzXK6BoSA1KTfIdl5jmefX\/ey\/Wld8WdDo0EHxgmQOk8k7Svhc93y8ClArt0q7\/nB471vd9oFQDCmGGWML38YdXkEMrSTAIIs96Rx5N5GFCCCWQofpUFH4KG01h37Bkj1TF4QGiqNz69mc4vLrftyGw9A8CqAQupxYFD5LlgILIJJ3qyVAWQRw3mnAURGXTzSgWYAABOGSURBVECoa8KSYeaaDDhGkrgVmgAieZ4DRAi5V8G5rgFCenYjVNuX7vf2pTa23RvbIebp8AGiDnRBAWgwGgtoNI3G+uWvN9+A2agqfQvNAMLeAPvXDvZq5yYBpK4\/YRJAlFBgw1t+aqTrAKLO7vyNfx6ARJuwAJygqHQv4sgILCaK7ij3VAf82XljHdjWgeECBAik0OAzneWcjygA8AA2aX9IDpBrt6pdytitrK8wCSDyDlJPIgIQ0orHkAKEEU7pd2Rk7IkzDXpuej7qgQAF8jUfmZXGP+k3p3J9fGYJk6MvvxXTkYgeWcZ5OWAdGC5A8DDSJqoUBJECjQLkpTd7XZ23zphiuNV0lXsHdQDBWGP01cGNDLDA6CvIq9AIJwy9ns29CgIPeTsLQIhHYEqfz7n0O595Rvr78IjS70pTl0dG1nnbYjffhF4yI3Zk4DLDBQiexof\/Kf72kwOG73kTV40HQjPWkeMPdmnDdsQlI17BECBu\/WFgUwOum3KAAAIMr4Cj+9Wfofs4pjJ8JsjYcx\/NXnxXmtLny+ALUopXYEpluUaaAJvSw2dk0\/t5Vtqhzue6dOtZXRxPnDzlEVgDN3qGQ3cvCMMFCMNxMbaRJUzwNuhMn1Zx6gDCaKwjx8o+m7G6MIyOI5YDlc5M0wNfn15XnEejyCMDBEUHIHSsT1P6BoDc96d\/3mszVsz0WWreHPAmUt29mU6tS9Pqmq9Pt0dLkEfDB0jeDJVnOk1VwINO9vxa\/r0BIH03Y81rGH1\/LAc+++yz0ptIGSJT7UBuF0b8fVgAwZPQH1CgCUvfaaKiWSv9Y2FFyc3RhIXCrT3gZqyYmV5eKZYwYW6PDYghYh2I6cBwAIInkXQyt\/qM9zHNU+Eto8kDASA9j8ZaXrM7nJR5CZOY0bBxdT5JB4YDEAw8EGE2OR3nWn039TjqPjPcl\/sibugEgCxiUuFwTPVy\/pLqpcNLmMTqQqS+WGbweTksgKQKCyzwSKJwSO9t+jwJIFvNWNevX19O6+hUTcwBRtHt8RImgzd4oRfFpvrv83fox3ABIk+ky0IHID95445MlFIuYm2siVbQF2fOgaoD\/UkvYSJd9tHNVBEdGC5AugSH4gIg\/Ol7frz8ZXn32sGSLVEdVisH3IFug9lYr\/N67u\/bNnAYAKHPg9FWWlWXApYHwrVpf8hGlGIaQLaWeOdt1mG1cuCZ5573DPRIHbBMzFaMJJ+GARDgQX9HOpdDfSDRkVnITyv0AED2\/exXJaN5xhhYXytfJLFpiZN58kfLo7CkSldhs7\/sxnQdmKYjvu48HJEODAMgWjiReR0qPM5pDkjdUfM\/BJiOAFJcuVHuPbBWsq9EVyFf+LCreLuOZ1UBwgz0+06cvK070iEfnSfWgYk6MAyAUMizjLbiHv1FFCXggQCwe378ann+\/PnO7LMBsjMru\/ZAWML98AuvTqwo2y8mET2xjPNyJDowHIAsosCCACk67ExndVqaV2gKWvawqh7I+vp6WVz42EZvEXXIzxiUnhkgbRQ6CpBrt6pd7S5dujSXzdebdtU+r6a2ZCtaoEKfA5DRUuzpMuw6p\/vTvTS0TDvLqudB19I+hnz5deLOdwxsAxCWd0\/Tx+9In6c05XL85rr0SX6WY5U\/nkA4KMNmj3Exo+qGDRD6NaY1bdFXko7emgSUFgAp3v+0k31CMKBNHgjGFKONIU6NL4Zde3fIoApGggjQ0b2S0RFjzv0KMti6l\/M8E5l0\/44oQPhNyKZelZ6hDa14Bp\/57TxLzwFk3Mv59DcrrW2P9H+wjpkNzmIMjvN5WPk8XIBoFNakznHgopV4p4EGsLQByLVb5f7Dx8p5h\/ROA0gbQ5oDQwCSccb4Ah\/iBDgEgUbfZaB1PoVKFCAAir88cA5YKPCdONP0cU0w7AIgzP9gOX4btmEZNpfnYspzuABhSC9wmORRcO2tv6oMZsgLaQkQhvQem3O3wghAcgMrA5wfZZB1nrd5YJE2Y8kT4LkEfc+bq7iGB5J6ERGAyKtIn6n0sHUucRAkl26nK7kuAfLoE6dKvMWpejJNj3zdeThCHRgmQPAm6DNgQcVphdpGtiVAePah783nhcwDEN7QMbaAo8qPotg20DLGGOz0rV9NU7qOAde9dce2ABG06uLinABC2vmeejhKU1cAYah1lY5pOuLr0+uR82iUeTRsgDD\/Y5piMwsd2ET2A3nl3clLmdQ8a14vZBaA4JEAAn4XAJARzj0QDHL61q\/mK8nrOvHII5ERrztGPBABJH1GXVyT5LoCCIMcHnjuxek6UlOuU\/XK9zhfR6ADwwQIBRft29AkxEl9JVKEGQAyrxcyC0DkNaQd0hjpOoDoTR+DLaOdwgJDD0C4Ni1EADKpaSqNf5JcVwD5yZ+85OG70m0fDbwZdGC4AFEnOl5I02ZRrJFFXwkeSJNMmqkzAoQ5Bkdm7AvBmyB9aVORDC3nuJb3geB9qClIshzps2g6D3S4D8ikgbjrwJDK6HOdXF0aBbI83YpHR9LLXx66AAgLXlblfuWGDUeq4\/5sfWihA8MFCH0bwEPzJ+gPASr6o8lK19IlUCZl3qwA2ZoXwoznWQIGF0Mqg6sO7TrjTPwysPIakBdU6gCiZiyu1TUtyQvheQp4KdyXhjqDL29IaUaee3kWadJ5fhuyqfcjjwg5BdLCvZTdPKOw3Hy1mFE6buobdj4PFyCAAIhoZ0LBIj9G4UF8cwCk2Lg681LvGFkgIuDJyDcBBGOra9yDAVaHeh1A1FyErAy6DLaO3E88SgNHQJXKCzSpFyNY8FwBkDi5L00j8fE9hwIQAUx6Ls9QenNZpTVyPHnqtJuvJr0s+Zo9kYAODBsgyoBf\/rosAEW6qCJ9H5FmK8XBcR6A4IW80O0aWRFDaZk7c6DaffDAmg1Eqtv+bH2YQQfGAZAZMqbW9Z4TIFqpl9nPDruXAyx0ufbSmzYYXdULxzNaXRoHQPA08DjU\/zGL90ElmRcg126Ve9\/YmHty4e6Z3tV\/Mp3n7BrJgpe1Lwk2hs4X60BYB4YNkGl9IPSPIBNVmA4AwrMO\/tHj5awd6qtvwnf3F5Dv93rv87jOR+uG5UaZp8MFSD4KK+3\/SEdnMYw3CpGOAFJc\/LzqFKYt3mGxOcBwagY0hF8abBidV9aBRh0YLkA0+opjXWc55yQTmYWOEnUFkGu3yj2vvVcyEogmFYfF5AALWx5+6kxjZTBUhj3k1OXbffkOEyDAgeG6ETBoPkgdZPI3jw4BgjLTlMJqsA795wCgtvfRvQGxUR53ng4TIMwwByB0lucQyL8jE5XtGCB05O45sFZev369fws68idU29ba+5heH\/L64e\/Oswk6YIC0Wc69a4Bcu1Xe\/cG\/L\/evHSxZGdahnxzYHnnlvg8bwwnGcOrLpu+9Q3+GCRAmDuJV0McxrdDVD4LXMk22B4DwTDY06rs\/hFngzAZPZ473Y67bx8qM8nT2evsYJt\/BvA8mcU4t32nl7+vOQ+vADh0YJkAoZI20mtSMpearyMZTxNkTQDBsDO3F0PUVWHakTyM9b7pZrkRLtMwbV3o\/kzZpJmQSpwEy7vZ6l3\/35T9cgNAprpV2AQRLmQAMmqyYUCjA4KlEvI+eAYKBY\/MpFvnrOsj7mGftqK7TlMcHPIBIl0Ed50zetPHo3ng4T52nwwUIBh+IAA8gUfcHYAAKspG\/Hj2Q6vkXPy\/3Hlibex\/13Aj3YZzzZ8z7naY1yqhLyOHRHTr9bKxsI+VvGeeldWCHDgwbICpsPA\/6OjSZkKG7nItOIFQ8AOTBR3dkYAg8uj9yfP\/TqlO9y0mGNF3lS6\/Pa\/D7uB8PpKt0MufDTVfBF6OIXlqm33q\/ovk7DoB0VTgABE+mq\/ga4mEbXEZmdQERmq9Is\/YGkeHHK+E8b\/76zHc62uu8AOLR3h6S47485MuvI6s\/+mEmBeLvohmLfKvWu\/Koq951te+64PiX+yXAAGkw4rWKuyCA8OyuIKK9MzimQdAAGCkI8FbyvTuAB+fTDaCATH6vNoBSfOwFAhCinfdKE8+bNdDvcWDtYLVoZW0ZtilvyxpA1oGJOmCA\/M3fbnaic5ymLAsESFcQkVHPh+\/KWMvYy2BLnqMCnkMOFa7pvOTqYKHn5ADTPekRKOGtpLsSptenfQYeDIe+58cesjtVl6fpuq9PtwfOo3L1AcKcD0ZRzfrHiCyaWSIjsRYMkC4gIgOev9XrfN5cJSOeggV41PVNCDYYfOInH9lVMA2KL39OKqPPkp0FIIbHcjd1GGjDLJ\/VB0g6HDdpb1e7e\/gIiKa9UewCQOaFiEAxK0A0OmpSPsrg44HkfRh6fu4BCRrpcVaACB57H35sehlOK2Nfdx5aB8I6sPoAybeq1UirpmMOGYb54oVElGaXACKIYMQZXdQmyEvIDbgMe+4ZyIjLAxFAcs+iLg2KU\/cClibvpe5+PVtAqpPJzwke+08968mCER22TKyuO59C+bT6AGlb0AzdTf\/a3L+LAKkAt3G1mifSZjOqaZ3o0wCCwQYCuWeRG3K+Y\/iRQ14ei2BSJ5+fE4BybymX03fWD3OfxzCbRkIvdG3qrmVDQGib7+MDyDyKtNsAIe0XPy\/vO3GyPHfuXGgvEfVNpJ3iGGAZ6whA6CwHCLmsDLmOGqml701H+lOATO4VtRnGy1Bdhjq7w9wAaWv0LN+dzgwfIMxGZ9Kg9kOPjLZqgswyAIS0XblR3nv2xWpv9chcEQx73gneBiBAiDjwLlKIEEcKJq7J88iPmgMioHGd+9NA\/Hk60+v6zHIv3M9QZxuD7oyB89J52VYHhgsQmqm00m7a75GOtgIuzErn2ASN9PyyAGQrTdUaT0Uxdf0sDHXeBNUGIDLc8kQEB+aFpBAAMgKF7uGoZ0mW\/pTcA1FfSwqoNA4+09+B58WaYdW2wGnZ+HNMh51PzqcOdWC4ANHoLC1bgheSD9fFG+FcZNl3Mn3JAFJBb6tJ6+zz6417ivDWj8GeZJxzY932uzrr6zrA5XVM6ogHLjnk0jSw6RYTBA8++4I7yzs0AKEXJz\/P0GnQgWECRJtEMUJLPxzPIwcI1wAMiypKbtJxGQFCeq\/cKNdeerNavqOpgx3PAA+hryCA1E0YVNOWPJC6NACPuut0lON17Nm\/Vm2+FSqnSWXoazFddz45nwI6MEyAaHJg2t\/RBBDJRhZWfP\/TTQgFMnZXDN3Fz8vDT52p9v7Ot8mVF1LnIdQZ9LbniB8IAKn0GUAB74fmrqYAfHK40VwFDFnTquoo934eNmjLWu9GnK5hAgSvAm8jhUITQPBSctkmhWBxPmSbri\/JeTqX6SegWYsNlRYV6MegmarKI\/KpKCow1HkWk9LEXBeaq+598oz7OpZEp5Zd552+3RkAMEyAyKtIO8ybAMJEwmgT1ooApKpMV26Ue157r2r6WTRIJsGh6Zo8DsCBF1V4Jd2lf1Gx0d4do71M+T5MgDCqijdgOtLlhdQBRN5HtBN9lQCiN9crN6qVafFIjhx\/sJrJjrFelsAwZDZ+oqmq8jgMDoNDuuvj0uvCMAGC4skLwbsAFBqFxZE\/7VTIdUFmmsKuIkDS33Th4823+6KojHbeT7IoqAAN+jcAGps+MQCguPzl0leWZXrzc1r89r8MOjBcgGA4AQWA2GqPv+OIhxKdA0J8qw4QweTyl5VXcs8PHq\/yhlFOTM6LTEqcBTJ4PMAKT0PQqDrGGZSgNPnovLAOrJwODBsgKCQjsQBJurgiTVZt9kKXYg8FIPo9HHnzv\/Bx+cBzL24OlV07WK6vr1ceAp3ZdMJHm7yQQx5Y4GEApgeObe5JT7\/Godd\/7k7xNO\/9eeUMpl94dnp+wwdIl5V0iADJ8wegvP9pZewPnX62fOiHZ3d4cPcfPV6ePvPc9h\/fU88Oee47\/Ge\/qMDkGeM7K5wNkPNjSDowTIDQLNWmaSo3ok3fxwCQpt+u8xc\/32zKIy\/447uu+ei8sA6MSgeGCRCNuKLZiuardELhPApugIyqchiM9hasA5N1YJgAYXdBjbJSB7rWxDJADIF5dMD3Wn+sA9s6MEyAqIABCUN4U5gwKotO9HSSoeSnHe2BbCuO38wmv5k5f5w\/Y9CBYQMkBUIdTAALgInsh05cBogBkuqUP1sfRq4D4wFIWtA5TOgrSa83fTZAYvnUlH8+7\/yzDgxKB8YJEM0N0aKLBsiglDr0MmBD5jK3DsytA+MBCMN6GZElaKhzXSO1IspkD2RuhbNxd9+AdWA4OjBsgAgaQELA4EjfBzBpO1fEADFAIi8alrGejEQHhgkQRljVQaNNh3mdAhggNgx1euFz1ouR6sAwAZKuxDvrkN06hTBAbCjq9MLnrBcj1YFhAoSFEmdZLHGaEhggNhTTdMTXrSMj0oFhAqSvAjRAbBz60i3Ha91aQR0wQNoUmgHiSt5GXyxrfRm4DhggbQrYALFBaKMvlrW+DFwHDJA2BWyA2CC00RfLWl8GrgMGSJsCNkBsENroi2WtLwPXAQOkTQEbIDYIbfTFstaXgeuAAdKmgNl977FnXCna5JllrS\/WgcHqgAFi5R6scnvNpeGsueSyXM6yNEAMEAPEOmAdsA7MpAMGiBVnJsXxG+FyvhG6XFwui9QBA8QAMUCsA9YB68BMOmCAWHFmUpxFvuX4WX6rtg4spw4AkP8HmvbA0OtVlb0AAAAASUVORK5CYII=","width":400}
%---
%[text:image:8043]
%   data: {"align":"middle","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAArElEQVR42mP4\/\/8\/AwgnJiYapKamfgfS\/ynBUDMMYOYywBggiYcPH\/6nFIDMAJmFYQHIdmoBqFm4LZjrYPd\/gpoyGIPYVLeA5j4gbEASHJNlwZYtW\/93dHTixDCDQTRMDKRn8FhATBDNmTOH\/CAiBI4cOQI2HETTLBW9fv2a\/FRUtPXVf\/WeuyRhkB6iLQBp2HLvP0kYpGfUglELhpMFNM9oNKlw6FHp06TZAgAoeVix9Bg9oQAAAABJRU5ErkJggg==","width":24}
%---
%[text:image:0cf6]
%   data: {"align":"baseline","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:9443]
%   data: {"align":"baseline","height":23,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADoAAAA6CAYAAADhu0ooAAAEp0lEQVR42t2a208TQRTG67OJxvv9fiGoD6LGgPiCGo1G\/wljTKDl1pL00RuKIKCIIiKg6ItB8IJ38K4Panz13RcfSBBBQQHRek4ys\/kYpu1uu2132+Sku6eb6X7zmzlz5ux6PEn6lJaWbi0uLu4mGyLrJWvMz8+f4UmnjxA5QhZS7HNZWdnUdNE5hQR9EsLGioqKWuj7kRRbUlJSmS40D4Co4yD+rfAPEdW5rhdKQj4KQQM4J0n0DhjCVW4XuR9oHlV\/J98rSZVsnmuF0nz8oNIsLCxcFQwGp4vf86AjzrhV5D4dTTq+Tr8d0VD95fP5Frpx2L4XAgYlTQpMq+n8DxKm4+0wV6tdJZIo7YWbPwbi26QfqdL5S+H\/7SqqdMPvJE2iOFPOTUEzpM5bpEodUOMWkXs06yb7r6qZEc5dOn\/hKqqQCESiOYkqic4Ff62jRZKg3XCzJ0B8q0akjupzSZU6aZGTl5Q34kZ\/BgKB2ezzer3LOMcNJ5SpSvJIlY7POTWn3QUBpRzEt0QQqYvMzxxNlW7staRJQ3gO0Bw1IdSYz9Qx28Bf57QhuxNu7iSIbzYhclKEpvZ6HElVR5OOl5qkGZEqdcB5p9DMC0OzyYJIXaTuFr4R6rzFTkj3jK1WHDRDarSmdnPAX59qkbkQaU+B\/7IqglM7+g4qVqu5rhzaeeoIqpC2RaVJN52pGfYbdFRlW0iVrr2QcppkFSC+MUxUNSt0AlU6f5JSqpCuGcUtv9+\/JExZ05JQpErf2eC\/mOxIi4v6aRDfEGGdtCJUjeCPhW+Uk5BkCu2xQjNGoQZVWl+30Pk\/4W9I1tzM0RWfeVhFyXysCp0QyaHoPUZtLU\/G3OxWadIfL+Dilt1CMZrTtZuB6qVE7zezdUVnDv0mctlYhKpUHyaFKoR6SzTjEYr\/pVBtTDhNLDZz0m1ydxKrUHWdfiCp+ny+FYmgKUP8sHx8YJamDUK1VDnVtHs5wSFTDeLrLOw34xGqrtf3E0IVgoBRiiwoKJhvlqZNQjEubIKOb7Jr3TQaxeIyF6+sbMFsEKqu2\/ZShQZVmsPJFhqOKrVzxTaaWFTW7SNNCD3IlUI08h2KYXOO63eXpErtrYwnCHWpNDniWqVpsxlUacnLAhDNsa6bWTqaolIQSrFVwei6FxdVGlZ3baY5SNav2KCdVLlYblXkRqB5FnqvOlYKNgWjUJjsTEIZpzbXWIm0d9QCMlfneI\/oFKFKhoZgWs0GIP7zv+qDHu7BeOZVAoSqWZqEM+73+9eaodlpN80ECjXiBwLih87Rnoith4vrgGZlvJEyQUJVqrdNUaULOmRp0U6a8uUMssNo\/BDYBqHDnKlppt21qDTxwQ7vGhywbkbrxBrN1Bsny9DRbFcLxV6vdxad\/3C6UJyryvRrU7OgdfBjPYivcIHIkCYX79BSpZObLqYZkSq\/kicjaqZ04oMcrpS7SGRIzeJIy60JVDk6SZpcbRdDeRr5v2hyU6fbV\/l8VVlXm5lcX0wJsTveYpMVw14PzMOGNBQqE4h+3M8x5hti3UwH64S52y6D0YALA49Z6+P3hCXiDLH2fEsjgd+ZKr9wyRr\/A+UKAPezYlA8AAAAAElFTkSuQmCC","width":23}
%---
%[text:image:943d]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[text:image:3be7]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:8c01]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[text:image:9fc7]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:018e]
%   data: {"align":"baseline","height":23,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADoAAAA6CAYAAADhu0ooAAAEp0lEQVR42t2a208TQRTG67OJxvv9fiGoD6LGgPiCGo1G\/wljTKDl1pL00RuKIKCIIiKg6ItB8IJ38K4Panz13RcfSBBBQQHRek4ys\/kYpu1uu2132+Sku6eb6X7zmzlz5ux6PEn6lJaWbi0uLu4mGyLrJWvMz8+f4UmnjxA5QhZS7HNZWdnUdNE5hQR9EsLGioqKWuj7kRRbUlJSmS40D4Co4yD+rfAPEdW5rhdKQj4KQQM4J0n0DhjCVW4XuR9oHlV\/J98rSZVsnmuF0nz8oNIsLCxcFQwGp4vf86AjzrhV5D4dTTq+Tr8d0VD95fP5Frpx2L4XAgYlTQpMq+n8DxKm4+0wV6tdJZIo7YWbPwbi26QfqdL5S+H\/7SqqdMPvJE2iOFPOTUEzpM5bpEodUOMWkXs06yb7r6qZEc5dOn\/hKqqQCESiOYkqic4Ff62jRZKg3XCzJ0B8q0akjupzSZU6aZGTl5Q34kZ\/BgKB2ezzer3LOMcNJ5SpSvJIlY7POTWn3QUBpRzEt0QQqYvMzxxNlW7staRJQ3gO0Bw1IdSYz9Qx28Bf57QhuxNu7iSIbzYhclKEpvZ6HElVR5OOl5qkGZEqdcB5p9DMC0OzyYJIXaTuFr4R6rzFTkj3jK1WHDRDarSmdnPAX59qkbkQaU+B\/7IqglM7+g4qVqu5rhzaeeoIqpC2RaVJN52pGfYbdFRlW0iVrr2QcppkFSC+MUxUNSt0AlU6f5JSqpCuGcUtv9+\/JExZ05JQpErf2eC\/mOxIi4v6aRDfEGGdtCJUjeCPhW+Uk5BkCu2xQjNGoQZVWl+30Pk\/4W9I1tzM0RWfeVhFyXysCp0QyaHoPUZtLU\/G3OxWadIfL+Dilt1CMZrTtZuB6qVE7zezdUVnDv0mctlYhKpUHyaFKoR6SzTjEYr\/pVBtTDhNLDZz0m1ydxKrUHWdfiCp+ny+FYmgKUP8sHx8YJamDUK1VDnVtHs5wSFTDeLrLOw34xGqrtf3E0IVgoBRiiwoKJhvlqZNQjEubIKOb7Jr3TQaxeIyF6+sbMFsEKqu2\/ZShQZVmsPJFhqOKrVzxTaaWFTW7SNNCD3IlUI08h2KYXOO63eXpErtrYwnCHWpNDniWqVpsxlUacnLAhDNsa6bWTqaolIQSrFVwei6FxdVGlZ3baY5SNav2KCdVLlYblXkRqB5FnqvOlYKNgWjUJjsTEIZpzbXWIm0d9QCMlfneI\/oFKFKhoZgWs0GIP7zv+qDHu7BeOZVAoSqWZqEM+73+9eaodlpN80ECjXiBwLih87Rnoith4vrgGZlvJEyQUJVqrdNUaULOmRp0U6a8uUMssNo\/BDYBqHDnKlppt21qDTxwQ7vGhywbkbrxBrN1Bsny9DRbFcLxV6vdxad\/3C6UJyryvRrU7OgdfBjPYivcIHIkCYX79BSpZObLqYZkSq\/kicjaqZ04oMcrpS7SGRIzeJIy60JVDk6SZpcbRdDeRr5v2hyU6fbV\/l8VVlXm5lcX0wJsTveYpMVw14PzMOGNBQqE4h+3M8x5hti3UwH64S52y6D0YALA49Z6+P3hCXiDLH2fEsjgd+ZKr9wyRr\/A+UKAPezYlA8AAAAAElFTkSuQmCC","width":23}
%---
%[text:image:9aa5]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:checkbox:0321]
%   data: {"defaultValue":false,"label":"a","run":"Nothing"}
%---
%[control:checkbox:180b]
%   data: {"defaultValue":true,"label":"b","run":"Nothing"}
%---
%[control:checkbox:9d4d]
%   data: {"defaultValue":true,"label":"c","run":"Nothing"}
%---
%[control:button:0bf7]
%   data: {"label":"Submit","run":"Section"}
%---
%[text:image:4991]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:dropdown:79aa]
%   data: {"defaultValue":"\"a PDE\"","itemLabels":["","an ODE","a PDE"],"items":["\"\"","\"an ODE\"","\"a PDE\""],"label":"This equation is:","run":"Nothing"}
%---
%[control:button:745c]
%   data: {"label":"Submit","run":"Section"}
%---
%[text:image:0cf7]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:checkbox:7d7e]
%   data: {"defaultValue":false,"label":"a","run":"Nothing"}
%---
%[control:checkbox:45d0]
%   data: {"defaultValue":true,"label":"b","run":"Nothing"}
%---
%[control:checkbox:1f69]
%   data: {"defaultValue":false,"label":"c","run":"Nothing"}
%---
%[control:button:4744]
%   data: {"label":"Submit","run":"Section"}
%---
%[text:image:8b76]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:dropdown:1f08]
%   data: {"defaultValue":"\"an ODE\"","itemLabels":["","an ODE","a PDE"],"items":["\"\"","\"an ODE\"","\"a PDE\""],"label":"This equation is:","run":"Nothing"}
%---
%[control:button:0028]
%   data: {"label":"Submit","run":"Section"}
%---
%[text:image:0105]
%   data: {"align":"bottom","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:00c2]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:2f59]
%   data: {"defaultValue":4,"label":"Order: ","run":"Nothing","valueType":"Double"}
%---
%[control:button:78d4]
%   data: {"label":"Submit","run":"Section"}
%---
%[text:image:0020]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:dropdown:2305]
%   data: {"defaultValue":"\"linear\"","itemLabels":["","linear","nonlinear"],"items":["\"\"","\"linear\"","\"nonlinear\""],"label":"This equation is:","run":"Nothing"}
%---
%[control:button:0b81]
%   data: {"label":"Submit","run":"Section"}
%---
%[text:image:33a7]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:dropdown:1625]
%   data: {"defaultValue":"\"nonhomogeneous\"","itemLabels":["","N\/A - not linear","homogeneous","nonhomogeneous"],"items":["\"\"","\"N\/A - not linear\"","\"homogeneous\"","\"nonhomogeneous\""],"label":"This equation is:","run":"Nothing"}
%---
%[control:button:2515]
%   data: {"label":"Submit","run":"Section"}
%---
%[text:image:679b]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:2b0e]
%   data: {"defaultValue":3,"label":"Order: ","run":"Nothing","valueType":"Double"}
%---
%[control:button:96d4]
%   data: {"label":"Submit","run":"Section"}
%---
%[text:image:3c95]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:dropdown:4304]
%   data: {"defaultValue":"\"nonlinear\"","itemLabels":["","linear","nonlinear"],"items":["\"\"","\"linear\"","\"nonlinear\""],"label":"This equation is:","run":"Nothing"}
%---
%[control:button:66b0]
%   data: {"label":"Submit","run":"Section"}
%---
%[text:image:26a1]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:dropdown:56f5]
%   data: {"defaultValue":"\"N\/A - not linear\"","itemLabels":["","N\/A - not linear","homogeneous","nonhomogeneous"],"items":["\"\"","\"N\/A - not linear\"","\"homogeneous\"","\"nonhomogeneous\""],"label":"This equation is:","run":"Nothing"}
%---
%[control:button:67bb]
%   data: {"label":"Submit","run":"Section"}
%---
%[text:image:616b]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:editfield:2523]
%   data: {"defaultValue":2,"label":"Order: ","run":"Nothing","valueType":"Double"}
%---
%[control:button:276d]
%   data: {"label":"Submit","run":"Section"}
%---
%[text:image:9b49]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:dropdown:9d6e]
%   data: {"defaultValue":"\"linear\"","itemLabels":["","linear","nonlinear"],"items":["\"\"","\"linear\"","\"nonlinear\""],"label":"This equation is:","run":"Nothing"}
%---
%[control:button:6974]
%   data: {"label":"Submit","run":"Section"}
%---
%[text:image:57cf]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[control:dropdown:0404]
%   data: {"defaultValue":"\"homogeneous\"","itemLabels":["","N\/A - not linear","homogeneous","nonhomogeneous"],"items":["\"\"","\"N\/A - not linear\"","\"homogeneous\"","\"nonhomogeneous\""],"label":"This equation is:","run":"Nothing"}
%---
%[control:button:3bef]
%   data: {"label":"Submit","run":"Section"}
%---
%[control:checkbox:2991]
%   data: {"defaultValue":false,"label":"Select this check box to see an example of a slope field.","run":"Section"}
%---
%[control:checkbox:6b25]
%   data: {"defaultValue":false,"label":"Select this check box to see an example of a slope field, wtih overlayed solution curves.","run":"Section"}
%---
%[text:image:2878]
%   data: {"align":"bottom","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:4cba]
%   data: {"align":"bottom","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[control:checkbox:854d]
%   data: {"defaultValue":false,"label":"Select this check box to see an example of using MATLAB's ODE functionality","run":"Section"}
%---
%[text:image:1100]
%   data: {"align":"bottom","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:62c9]
%   data: {"align":"middle","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAjElEQVR42mP4\/\/8\/AwgnJiYapKamfgfS\/ynBUDMMYOYywBggiYcPH\/6nFIDMAJmFYQHIdmoBqFm4LZjrYPd\/gpoyGIPYVLeA5j6gmwUlJaVAxUlgDGKPBhFODaQG1QgIoqKtr\/6r99wlCYP0EG0BSMOWe\/9JwiA9oxaMWkBHC2ieD2iSk+lR6dOk2QIAjF+EgB\/BqfoAAAAASUVORK5CYII=","width":24}
%---
