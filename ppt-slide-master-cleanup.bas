Sub SlideMasterCleanup()

Dim i As Integer
Dim j As Integer
Dim oPres As Presentation
Set oPres = ActivePresentation
On Error Resume Next
With oPres
    For i = 1 To .Designs.Count
        For j = .Designs(i).SlideMaster.CustomLayouts.Count To 1 Step -1
            .Designs(i).SlideMaster.CustomLayouts(j).Delete
        Next
    Next i
End With

End Sub