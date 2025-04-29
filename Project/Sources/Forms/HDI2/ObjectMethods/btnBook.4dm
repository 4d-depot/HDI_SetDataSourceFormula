clearForm

If (Form:C1466.trace)
	TRACE:C157
End if 

// Get Table Structure
Form:C1466.attributes:=OB Keys:C1719(ds:C1482.Book.new())

// Get Entity Selection
Form:C1466.dataBook:=ds:C1482.Book.all()

// Set the data source formula of the listbox
OBJECT SET DATA SOURCE FORMULA:C1851(*; "ListBox"; Formula:C1597(Form:C1466.dataBook))

LISTBOX SET PROPERTY:C1440(*; "ListBox"; lk current item; "Form.CurrentItem")