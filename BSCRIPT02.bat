@echo off

:menu
echo Select a shape:
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
set /p shape="Enter your choice (1/2/3): "

if "%shape%"=="1" goto circle
if "%shape%"=="2" goto triangle
if "%shape%"=="3" goto quadrilateral
echo Invalid choice.
goto menu

:circle
set /p radius="Enter the radius of the circle: "
set /a area=314159 * %radius% * %radius% / 100000
echo The area of the circle is %area%
goto end

:triangle
set /p a="Enter the length of side a: "
set /p b="Enter the length of side b: "
set /p c="Enter the length of side c: "

rem Calculate semi-perimeter
set /a s=(%a% + %b% + %c%) / 2

rem Calculate area using Heron's formula (approximation)
set /a area=s*(s-%a%)*(s-%b%)*(s-%c%)

rem Check if area is negative or zero
if %area% lss 0 (
    echo Invalid triangle dimensions.
    goto end
)

rem Simple approximation for the square root (you may need a better approximation method)
set /a area_approx=%area%
for /l %%i in (1,1,10) do set /a area_approx=(area_approx + %area% / area_approx) / 2

rem Determine the type of triangle
if %a%==%b% if %b%==%c% (
    echo The triangle is equilateral.
) else if %a%==%b% (
    echo The triangle is isosceles.
) else if %a%==%c% (
    echo The triangle is isosceles.
) else if %b%==%c% (
    echo The triangle is isosceles.
) else (
    echo The triangle is scalene.
)
echo The approximate area of the triangle is %area_approx%
goto end

:quadrilateral
set /p length="Enter the length: "
set /p width="Enter the width: "
set /a area=%length% * %width%
echo The area of the quadrilateral is %area%
if %length%==%width% (
    echo The quadrilateral is a square.
) else (
    echo The quadrilateral is a rectangle.
)
goto end

:end
pause