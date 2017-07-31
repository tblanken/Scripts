' Testing after adding to GitHub

' ------------------------------------------------

' #Language "WWB.NET"

' Tim's Test1 (While loop and Functions)

' Option Explicit

'Sub Main
'    Call Test1
'    Call Test2
'End Sub

'Sub Test1
'Dim num As Integer
'   num = 1

'    While (num < 101)
'       OutputText CStr(num)
'      num = num + 1
'    Wend

'End Sub

'Sub Test2
'Dim num As Integer
'num = 99

'    While (num < 101) And (num <> 0)
'       OutputText CStr(num)
'      num = num - 1
'    Wend

'End Sub

' End Tim's Test1

' ----------------------------------------------------------------

' Tim's Test 2 (MsgBox)

' This script demonstrates how to display a single MsgBox for a group of printers.

'Sub Main

'MsgBox "Select OK to continue"
'OutputText "Have a nice day!"

'End Sub

' End Tim's Test 2

' ----------------------------------------------------

' Tim's Test 3 (Case statement)

' #Language "WWB.NET"

'Option Explicit ' Test

'Sub Main
'    Dim integerVar  As Integer

'    integerVar = 9
'    Select Case integerVar
'    Case Is < 3
'        OutputText "value is less than 3"
'    Case 3 To 4
'        OutputText "value is less than 3 or 4"
'    Case Is >= 8
'        OutputText "value is greater than or equal to 8"
'    Case Else
'        OutputText "case else"
'    End Select
'End Sub

' End Tim's Test 3

' ------------------------------------------------

' Tim's Test 4 (For-Next testing)

' #Language "WWB.NET"

'Option Explicit ' Test

'Sub Main
'    Dim num  As Integer

'    For num = 1 To 3
'        OutputText CStr(num)
'    Next num

'    For num = 0 To 10 Step 2
'        OutputText CStr(num)
'    Next num
'End Sub

' End Tim's Test 4

' -------------------------------------------------------

' Tim's Test 5 (Variable & Constant testing)

' #Language "WWB.NET"

'Option Explicit  ' this makes sure all variables are declared

'Sub Main
'    Dim integerVariable As Integer  ' declare an integer variable
'    Dim stringVariable As String  ' declare a string variable

'    Const SECONDS_PER_MINUTE As Integer = 60  ' declare a constant

'    integerVariable = 7  ' assign a value to an integer variable
'    stringVariable = "Hello"  ' assign value to a string variable

'    OutputText "The value of the integerVariable is " & CStr(integerVariable)
'    OutputText "The value of the stringVariable is " & CStr(stringVariable)
'    OutputText "The value of the Constant is " & CStr(SECONDS_PER_MINUTE)

'End Sub

' End Tim's Test 5

' ----------------------------------------------------

' Tim's Test 6 (Populate array with the even numbers from 2 to 1000)

'Sub Main
'    Dim i As Integer
'    Dim Even(0 To 500) As Integer

'    For i = 1 To 500
'        Even(i) = i*2
'        OutputText CStr(i) & "-" & Even(i)
'    Next i
'End Sub

' End Tim's Test 6

' ----------------------------------------------------

' Tim's Test 7 (Call Subroutine testing)

' #Language "WWB.NET"

'Option Explicit

'Sub Main
'    Dim num1 As Integer
'    Dim num2 As Integer

'    num1 = 12
'    Call DoubleValue(num1, num2)
'    OutputText "The double of " & CStr(num1) & " is " & CStr(num2)
'End Sub

'Sub DoubleValue(ByVal inValue As Integer, ByRef outValue As Integer)
'    outValue = inValue * 2
'End Sub

' End Tim's Test 7

' ------------------------------------------------

' Tim's Test 8 (Call Function testing)

' #Language "WWB.NET"

' Option Explicit

'Sub Main
'    Dim num1 As Integer
'    Dim num2 As Integer

'    num2 = 12
'    OutputText "The double of " & CStr(num2) & " is " & CStr(DoubleValue(num2))
'End Sub

'Function DoubleValue(ByVal inValue As Integer) As Integer
'    DoubleValue = inValue * 2
'End Function

' End Tim's Test 8

' -------------------------------------------------

' Tim's Test 9 (Input & Output testing) - Needs troubleshooting

' This example writes data to a file, and then reads the data back In And displays the data
' In the Output Window.  Be sure to open the Output Window before running the script.

'#Language "WWB.NET"

'Option Explicit

'Sub Main
'    Call WriteTextToFile
'    Call ReadTextFromFile
'End Sub

'Sub WriteTextToFile
'    Dim outputFile As Integer
'    Dim i As Integer

'    outputFile = FreeFile

'    FileOpen 1, "c:\VB-Scripts\testfile.txt", OpenMode.Output

'    For i = 1 To 5
'        PrintLine 1, "This is line " & CStr(i)
'    Next i

    ' close file
'    FileClose 1
'End Sub

'Sub ReadTextFromFile
'    Dim inputFile As Integer
'    Dim inputBuffer As String

'    inputFile = FreeFile

'    FileOpen 1, "testfile.txt", OpenMode.Input

'    While Not EOF(inputFile)
'        Input inputFile,inputBuffer
'        OutputText "Read from file: " & inputBuffer
'    End While

'    FileClose 1
'End Sub

' End Tim's Test 9

' ------------------------

'Example of structures and enumerations
'Set breakpoint on else clause, put level in watch window.  Show recursion level and use step out to show level decrease.

'Enum eColors
 '   eRed
 '  eBlue
 '   eGreen
'End Enum

'Type typeActiveColor
 '   screenColor As eColors
 '   active As Boolean
 '   referenceCount As Integer
 '   userName As String
'End Type

'Sub Main
 '   Dim activeColor As typeActiveColor

 '   activeColor.active = True
 '   activeColor.referenceCount = 77
 '   activeColor.screenColor = eGreen
 '   activeColor.UserName = "FlexTool"

 '   DisplayType(activeColor)
'End Sub

'Sub DisplayType(vActiveColor As typeActiveColor)
  '  OutputText "screenColor: " & CStr(vActiveColor.screenColor)
  '  OutputText "active: " & CStr(vActiveColor.active)
  '  OutputText "referenceCount: " & CStr(vActiveColor.referenceCount)
  '  OutputText "userName: " & vActiveColor.UserName
'End Sub

' ------------------------

' Demonstration of different types of user dialogs

Sub Main
    Call SimpleMessageBox
    Call MessageBoxResult
    Call FilePathDialog
    Call InputBoxDialog
    Call ShowPopupMenuDialog
    Call CommandButtonDialog
    Call CheckBoxDialog
    Call ComboBoxDialog
    Call DropListDialog
    Call GroupBoxDialog
    Call ListBoxDialog
    Call OptionGroupDialog
    Call PictureDialog
    Call PushButtonDialog
    Call TextBoxDialog
End Sub

' simplest msgbox - note default title
Sub SimpleMessageBox
    MsgBox "message"
End Sub

' get result from message box
Sub MessageBoxResult
    Dim result As VbMsgBoxResult

    result = MsgBox ("Enter yes, no, or cancel",vbYesNoCancel, "MessageBoxResult")

    Select Case result
    Case vbYes
        MsgBox "yes pressed"
    Case vbNo
        MsgBox "no pressed"
    Case vbCancel
        MsgBox "cancel pressed"
    Case Else
        MsgBox "default case"
    End Select
End Sub

' display file dialog, return path
Sub FilePathDialog
    Dim filePath As String

    filePath = GetFilePath()
    MsgBox "Pathname selected is " & filePath
End Sub

' get text input from user
Sub InputBoxDialog
    Dim userInput As String

    userInput = InputBox$("Enter some text:", _
           "Input Box Example","asdf")
    MsgBox "Input is " & userInput
End Sub

' display a pop-up menu, and display the selection
Sub ShowPopupMenuDialog
    Dim Items(0 To 2) As String
    Dim selNum As Long
    Dim selString As String

    Items(0) = "Item &1"
    Items(1) = "Item &2"
    Items(2) = "Item &3"

    selNum = ShowPopupMenu(Items) ' show popup menu
    selString = IIf(selNum = 0, Items(0), IIf(selNum = 1, Items(1), Items(2)))
    MsgBox "Selected item is " & CStr(selNum) & " - " & selString
End Sub

' demo command buttons.  Pressing Cancel button causes runtime error;
' error handler in place to trap error.
Sub CommandButtonDialog
    Begin Dialog UserDialog 200,120, "CommandButtonDialog"
        Text 10,10,180,30,"Please push the Cancel button"
        OKButton 40,90,40,20
        CancelButton 110,90,60,20
    End Dialog

    Dim dlg As UserDialog

    ' without error handler, cancel causes runtime error
    On Error GoTo ERR_HANDLER
    Dialog dlg ' show dialog (wait for cancel)
    GoTo END_SUB

ERR_HANDLER:
    MsgBox "cancel pressed"

END_SUB:
End Sub

' checkbox demo.  Displays check state after OK pressed.
Sub CheckBoxDialog
    Begin Dialog UserDialog 200,120, "CheckBoxDialog"
        Text 10,10,180,15,"Please push the OK button"
        CheckBox 10,25,180,15,"&Check box",.Check
        OKButton 80,90,40,20
    End Dialog

    Dim dlg As UserDialog
    Dim resultStr As String

    dlg.Check = 1
    Dialog dlg ' show dialog (wait for ok)
    resultStr = IIf(dlg.Check = 0, "unchecked", IIf(dlg.Check = 1, "Checked", "Grayed"))
    MsgBox "Checkbox is " & resultStr
End Sub

' combo box demo.  Displays selection string after OK pressed.
Sub ComboBoxDialog
    Dim combos$(3)
    combos$(0) = "Combo 0"
    combos$(1) = "Combo 1"
    combos$(2) = "Combo 2"
    combos$(3) = "Combo 3"
    Begin Dialog UserDialog 200,120, "ComboBoxDialog"
        Text 10,10,180,15,"Please push the OK button"
        ' 10 is left edge, 10 is top edge, 180 is width, 15 is height
        ComboBox 10,25,180,60,combos$(),.combo$
        ' 10 is left edge, 25 is top edge, 180 is width, 60 is height
        OKButton 80,90,40,20
        ' 80 is left edge, 90 is top edge, 40 is width, 20 is height
    End Dialog

    Dim dlg As UserDialog

    dlg.combo$ = "none"
    Dialog dlg ' show dialog (wait for ok)
    MsgBox "Combo box selection: " & dlg.combo$
End Sub

' drop down list dialog.  The top dialog has a static unsorted list.
' The bottom list allows editing the textbox.
Sub DropListDialog
    Dim lists$(3)
    lists$(0) = "can't edit"
    lists$(1) = "List 1"
    lists$(2) = "List 2"
    lists$(3) = "List 3"
    Begin Dialog UserDialog 200,120, "DropListDialog"
        Text 10,10,180,15,"Please push the OK button"
        DropListBox 10,25,180,60,lists$(),.list1
        DropListBox 10,50,180,60,lists$(),.list2,1  ' <-- the "1" is the difference
        OKButton 80,90,40,20
    End Dialog

    Dim dlg As UserDialog

    dlg.list1 = 0       ' list1 is a numeric field
    dlg.list2 = "can edit"   ' list2 is a string field
    Dialog dlg ' show dialog (wait for ok)

    MsgBox "Top selection is " & lists$(dlg.list1) & ", bottom selection is " & dlg.list2
End Sub

' demo of group box
Sub GroupBoxDialog
    Begin Dialog UserDialog 200,120, "GroupBoxDialog"
        Text 10,10,180,15,"Please push the OK button"
        GroupBox 10,25,180,60,"Group box"
        OKButton 80,90,40,20
        End Dialog
    Dim dlg As UserDialog
    Dialog dlg ' show dialog (wait for ok)
End Sub

' demo of list box
Sub ListBoxDialog
    Dim lists$(3)
    lists$(0) = "List 0"
    lists$(1) = "List 1"
    lists$(2) = "List 2"
    lists$(3) = "List 3"
    Begin Dialog UserDialog 200,120, "ListBoxDialog"
        Text 10,10,180,15,"Please push the OK button"
        ListBox 10,25,180,60,lists$(),.list
        OKButton 80,90,40,20
    End Dialog

    Dim dlg As UserDialog

    dlg.list = 2
    Dialog dlg ' show dialog (wait for ok)

    MsgBox "Selection is " & lists$(dlg.list)
End Sub

' demo of option button
Sub OptionGroupDialog
    Begin Dialog UserDialog 200,120, "OptionGroupDialog"
        Text 10,10,180,15,"Please push the OK button"
        OptionGroup .options
            OptionButton 10,30,180,15,"Option &0"
            OptionButton 10,45,180,15,"Option &1"
            OptionButton 10,60,180,15,"Option &2"
        OKButton 80,90,40,20
    End Dialog

    Dim dlg As UserDialog

    dlg.options = 2
    Dialog dlg ' show dialog (wait for ok)
    MsgBox "Selected Option " & CStr(dlg.options)
End Sub

' demo of picture control
' ?Where is default search path for bmp?
Sub PictureDialog
    Begin Dialog UserDialog 200,120,"PictureDialog" ' %GRID:10,7,1,1
        Picture 10,10,180,75,"c:\FT_Training\Scripts_201\hp.bmp",0
        OKButton 80,90,40,20
    End Dialog

    Dim dlg As UserDialog

    Dialog dlg ' show dialog (wait for ok)
End Sub

' demo of push button
Sub PushButtonDialog
    Begin Dialog UserDialog 200,120, "PushButtonDialog"
        Text 10,10,180,30,"Please push the DoIt button"
        OKButton 40,90,40,20
        PushButton 110,90,60,20,"&Do It"
    End Dialog

    Dim dlg As UserDialog

    MsgBox "Selection is " & CStr(Dialog(dlg))
End Sub

' demo of text box
Sub TextBoxDialog
    Begin Dialog UserDialog 200,120, "TextBoxDialog"
        Text 10,10,180,15,"Please push the OK button"
        TextBox 10,25,180,20,.Text$
        OKButton 80,90,40,20
    End Dialog

    Dim dlg As UserDialog

    dlg.Text$ = "none"
    Dialog dlg ' show dialog (wait for ok)

    MsgBox "Entry is " & dlg.Text$
End Sub
