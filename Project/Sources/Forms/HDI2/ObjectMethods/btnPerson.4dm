clearForm

If (Form:C1466.trace)
	TRACE:C157
End if 

// Get Table Structure
Form:C1466.attributes:=OB Keys:C1719(ds:C1482.Person.new())

// Get Entity Selection
Form:C1466.data:=ds:C1482.Person.all()

// Set the data source formula of the listbox
OBJECT SET DATA SOURCE FORMULA:C1851(*; "ListBox"; Formula:C1597(Form:C1466.data))

//LISTBOX SET PROPERTY(*; "ListBox"; lk current item; "Form.CurrentItem")