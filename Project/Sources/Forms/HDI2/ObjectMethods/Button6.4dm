If (Form:C1466.trace)
	TRACE:C157
End if 

var $formula : 4D:C1709.Function

// Get the data source formula associated to "InputTest" form object 
$formula:=OBJECT Get data source formula:C1852(*; "InputTest")

// Display the string of the formula
ALERT:C41($formula.source)