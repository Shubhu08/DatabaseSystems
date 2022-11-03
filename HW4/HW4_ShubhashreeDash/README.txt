Q1:


Linear Regression Model

class =

     -0.1084 * CRIM +
      0.0458 * ZN +
      2.7187 * CHAS=1 +
    -17.376  * NOX +
      3.8016 * RM +
     -1.4927 * DIS +
      0.2996 * RAD +
     -0.0118 * TAX +
     -0.9465 * PTRATIO +
      0.0093 * B +
     -0.5226 * LSTAT +
     36.3411


There are 12 terms in the equation, 11 are for the attributes, and the 12th is the constant which is the intercept. The equation is the weighted sum of the attributes and the intercept. Their weights are calculated by the LinearRegression classifier. In Weka, the classifier uses a M5 as an attribute selection method. This method deemed the remaining attributes, CHAS=0, INDUS, and AGE as not important enough, improving the Akaike information criterion and excluded them from the equation.

----------------------------------------------------------------------
Q2:

num_rings =
   -0.8248762648052554   * sex=I + 
    0.057715674939701284 * sex=M + 
   -0.45833541624125296  * length +
   11.075102542904558    * diameter +
   10.761536699123804    * height +
    8.975444620485794    * whole_weight + 
  -19.7868668634496      * shucked_weight + 
  -10.58182703416007     * viscera_weight +
    8.74180579669353     * shell_weight +
    3.8946414238675753 


----------------------------------------------------------------------
Q3:

num_rings = 
     -11.932680954609358 * length +
      25.766147216231733 * diameter +
      20.358233950789312 * height +
       2.836