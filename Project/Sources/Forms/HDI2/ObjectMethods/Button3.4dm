If (Form:C1466.attributes=Null:C1517)
	return 
End if 

If (Form:C1466.trace)
	TRACE:C157
End if 

//var $formula : 4D.Function
// Set the data source formula of the listbox
//$formula:=Formula(Form.data)
//OBJECT SET DATA SOURCE FORMULA(*; "ListBox"; $formula)

// Remove all existing columns
LISTBOX DELETE COLUMN:C830(*; "ListBox"; 1; LISTBOX Get number of columns:C831(*; "ListBox"))

// Create the listbox column
For each ($item; Form:C1466.attributes)
	LISTBOX INSERT COLUMN FORMULA:C970(*; "ListBox"; 1; "col_"+$item; "This."+$item; Is text:K8:3; $item; abc)
	OBJECT SET TITLE:C194(*; $item; $item)
End for each 
