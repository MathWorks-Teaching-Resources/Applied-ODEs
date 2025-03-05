
# <span style="color:rgb(213,80,0)">Applied Ordinary Differential Equations</span>


[![View on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/179214-applied-odes) or [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Applied-ODEs&project=AppliedODEs.prj&file=README.mlx)

[![MATLAB Versions Tested](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FMathWorks-Teaching-Resources%2FApplied-ODEs%2Frelease%2FImages%2FTestedWith.json)](https://MathWorks-Teaching-Resources.github.io/Applied-ODEs)

**Curriculum Module**

_Created with R2024b. Compatible with R2024b and later releases._

# Information

This curriculum module contains interactive [MATLAB® live scripts](https://www.mathworks.com/products/matlab/live-editor.html) that cover analytical methods of solving ordinary differential equations, using applications in a variety of academic disciplines.


## Background

You can use these live scripts as demonstrations in lectures, class activities, or interactive assignments outside class. This module covers core topics from an introductory differential equations course. This includes solving first\-order equations using separation of variables and integrating factors, solving second\-order equations using characteristic equations and the method of undetermined coefficients, and systems of differential equations by finding eigenvalues and eigenvectors. Applications of differential equations include population growth, circuits, measuring chemical concentration, and Newton's law of cooling.


The instructions inside the live scripts will guide you through the exercises and activities. Get started with each live script by running it one section at a time. To stop running the script or a section midway (for example, when an animation is in progress), use the <img src="Images/EndIcon.png" width="19" alt="EndIcon.png"> Stop button in the **RUN** section of the **Live Editor** tab in the MATLAB Toolstrip.

## Contact Us

Solutions are available upon instructor request. Contact the [MathWorks teaching resources team](mailto:onlineteaching@mathworks.com) if you would like to request solutions, provide feedback, or if you have a question.


## Prerequisites

This module assumes a background in calculus (taking derivatives and integrals), which are covered by related courseware modules. Minimal prior MATLAB experience required, as the focus of the scripts are mostly analytical techniques, but [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted) can be used to acquire familiarity with live scripts and MATLAB syntax.


## Getting Started
### Accessing the Module
### **On MATLAB Online:**

Use the [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Applied-ODEs&project=AppliedODEs.prj) link to download the module. You will be prompted to log in or create a MathWorks account. The project will be loaded, and you will see an app with several navigation options to get you started.

### **On Desktop:**

Download or clone this repository. Open MATLAB, navigate to the folder containing these scripts and double\-click on [AppliedODEs.prj](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Applied-ODEs&project=AppliedODEs.prj&file=README.mlx). It will add the appropriate files to your MATLAB path and open an app that asks you where you would like to start. 


Ensure you have all the required products (listed below) installed. If you need to include a product, add it using the Add\-On Explorer. To install an add\-on, go to the **Home** tab and select  <img src="Images/AddOnsIcon.png" width="16" alt="AddOnsIcon.png"> **Add-Ons** > **Get Add-Ons**. 


## Products

MATLAB is used throughout, and tools from the Symbolic Math Toolbox™ are used frequently as well.

# Scripts
## [**Classification.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Applied-ODEs&project=AppliedODEs.prj&file=Scripts/Classification.mlx)
|      |      |      |
| :-: | :-- | :-- |
| <img src="Images/DerivativesGraph.png" width="201" alt="DerivativesGraph.png"> <br>  | **In this script, students will...** <br> $\bullet$ identify independent and dependent variables in differential equations <br> $\bullet$ distinguish between ordinary and partial differential equations <br> $\bullet$ classify differential equations by order, linearity, and homogeneity <br>  | **Academic disciplines** <br> $\bullet$ Mathematics <br>   |
|      |      |       |

## [**SeparationOfVariables.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Applied-ODEs&project=AppliedODEs.prj&file=Scripts/SeparationOfVariables.mlx)
|      |      |      |
| :-: | :-- | :-- |
| <img src="Images/PopulationGrowth.png" width="201" alt="PopulationGrowth.png"> <br>  | **In this script, students will...** <br> $\bullet$ determine whether ordinary differential equations are separable <br> $\bullet$ solve first\-order ordinary differential equations analytically using separation of variables  <br>  | **Applications** <br> $\bullet$ Logistic population growth model <br> **Academic disciplines** <br> $\bullet$ Mathematics <br> $\bullet$ Biology <br>   |
|      |      |       |

## [**IntegratingFactors.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Applied-ODEs&project=AppliedODEs.prj&file=Scripts/IntegratingFactors.mlx)
|      |      |      |
| :-: | :-- | :-- |
| <img src="Images/ChemicalConcentration.png" width="201" alt="ChemicalConcentration.png"> <br>  | **In this script, students will...** <br> $\bullet$ find integrating factors of linear, first\-order ordinary differential equations <br> $\bullet$ solve equations analytically by multiplying by integrating factors <br>  | **Applications** <br> $\bullet$ Chemical concentration <br> **Academic disciplines** <br> $\bullet$ Mathematics <br> $\bullet$ Chemistry <br>   |
|      |      |       |

## **CharacteristicEquations.mlx** **(Planned)**
|      |      |      |
| :-: | :-- | :-- |
| <img src="Images/Circuit.png" width="201" alt="Circuit.png"> <br>  | **In this script, students will...** <br> $\bullet$ find characteristic equations of linear, second\-order ordinary differential equations <br> $\bullet$ use the roots of characteristic equations to solve homogeneous equations analytically <br>  | **Applications** <br> $\bullet$ RLC Circuits <br> $\bullet$ Mass\-spring\-damper <br> **Academic disciplines** <br> $\bullet$ Mathematics <br> $\bullet$ Engineering <br> $\bullet$ Physics <br>   |
|      |      |       |

## **UndeterminedCoefficients.mlx** **(Planned)**
|      |      |      |
| :-: | :-- | :-- |
| <img src="Images/ChemicalBonds.png" width="202" alt="ChemicalBonds.png"> <br>  | **In this script, students will...** <br> $\bullet$ solve linear, second\-order, nonhomogeneous ordinary differential equations analytically using the method of undetermined coefficients <br>  | **Applications** <br> $\bullet$ Pendulum motion <br> $\bullet$ Chemical bonds <br> **Academic disciplines** <br> $\bullet$ Mathematics <br> $\bullet$ Physics <br> $\bullet$ Chemistry <br>   |
|      |      |       |

## **SystemsOfODEs.mlx** **(Planned)**
|      |      |      |
| :-: | :-- | :-- |
| <img src="Images/Earthquake.png" width="201" alt="Earthquake.png"> <br>  | **In this script, students will...** <br> $\bullet$ write systems of linear, homogeneous, first\-order differential equations in matrix form <br> $\bullet$ find eigenvalues and eigenvectors of these matrices <br> $\bullet$ solve systems of ODEs analytically using these eigenvalues and eigenvectors <br>  | **Applications** <br> $\bullet$ SIR model of epidemiology <br> $\bullet$ Earthquake effects on buildings <br> **Academic disciplines** <br> $\bullet$ Mathematics <br> $\bullet$ Biology <br> $\bullet$ Engineering <br>   |
|      |      |       |

# License

The license for this module is available in the [LICENSE.md](https://github.com/MathWorks-Teaching-Resources/Applied-ODEs/blob/release/LICENSE.md).

# Related Courseware Modules
## [Applied Partial Differential Equations](https://www.mathworks.com/matlabcentral/fileexchange/172650-applied-partial-differential-equations)
|      |      |
| :-- | :-- |
| <img src="Images/AppliedPDEsIcon.png" width="226" alt="AppliedPDEsIcon.png"> <br>  | **Available on:** <br> [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/172650-applied-partial-differential-equations) <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/fileexchange/v1?id=172650) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Applied-PDEs) <br>   |
|      |       |

## [Calculus Derivatives](https://www.mathworks.com/matlabcentral/fileexchange/99249-calculus-derivatives)
|      |      |
| :-- | :-- |
| <img src="Images/CalculusDerivativesIcon.png" width="226" alt="CalculusDerivativesIcon.png"> <br>  | **Available on:** <br> [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/99249-calculus-derivatives) <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/fileexchange/v1?id=99249) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Calculus-Derivatives) <br>   |
|      |       |

## [Calculus Integrals](https://www.mathworks.com/matlabcentral/fileexchange/105740-calculus-integrals)
|      |      |
| :-- | :-- |
| <img src="Images/CalculusIntegralsIcon.png" width="226" alt="CalculusIntegralsIcon.png"> <br>  | **Available on:** <br> [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/105740-calculus-integrals) <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/fileexchange/v1?id=105740) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Calculus-Integrals) <br>   |
|      |       |

## [Numerical Methods with Applications](https://www.mathworks.com/matlabcentral/fileexchange/111490-numerical-methods-with-applications)
|      |      |
| :-- | :-- |
| <img src="Images/NumericalMethodsIcon.png" width="225" alt="NumericalMethodsIcon.png"> <br>  | **Available on:** <br> [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/111490-numerical-methods-with-applications) <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/fileexchange/v1?id=111490) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Numerical-Methods-with-Applications) <br>   |
|      |       |

## [Qualitative Analysis of ODEs](https://www.mathworks.com/matlabcentral/fileexchange/95513-qualitative-analysis-of-odes)
|      |      |
| :-- | :-- |
| <img src="Images/QualitativeAnalysisIcon.png" width="226" alt="QualitativeAnalysisIcon.png"> <br>  | **Available on:** <br> [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/95513-qualitative-analysis-of-odes) <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Qualitative-Analysis-of-ODEs&project=ODE_Analysis.prj&file=README.mlx) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Qualitative-Analysis-of-ODEs) <br>   |
|      |       |



Or feel free to explore our other [modular courseware content](https://www.mathworks.com/matlabcentral/fileexchange/?q=tag%3A%22courseware+module%22&sort=downloads_desc_30d).

# Educator Resources
-  [Educator Page](https://www.mathworks.com/academia/educators.html) 

# Contribute 

Looking for more? Find an issue? Have a suggestion? Please contact the [MathWorks teaching resources team](mailto:%20onlineteaching@mathworks.com). If you want to contribute directly to this project, you can find information about how to do so in the [CONTRIBUTING.md](https://github.com/MathWorks-Teaching-Resources/Applied-ODEs/blob/release/CONTRIBUTING.md) page on GitHub.


 *©* Copyright 2024 The MathWorks, Inc


