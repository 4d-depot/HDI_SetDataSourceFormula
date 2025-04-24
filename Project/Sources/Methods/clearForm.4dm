//%attributes = {}
// Hide all inputs
OBJECT SET VISIBLE:C603(*; "Label_@"; False:C215)
OBJECT SET VISIBLE:C603(*; "Input_@"; False:C215)

// Clear formula
For ($i; 1; Form:C1466.nbInputs)
	OBJECT SET DATA SOURCE FORMULA:C1851(*; "Input_"+String:C10($i); Null:C1517)
End for 

// Remove all existing columns
LISTBOX DELETE COLUMN:C830(*; "ListBox"; 1; LISTBOX Get number of columns:C831(*; "ListBox"))