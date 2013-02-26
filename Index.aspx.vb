
Partial Class Index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub
    Function Calculate() As Decimal
        Const taxRate As Decimal = 0.18

        'declare variables!!
        Dim wage As Decimal = Val(hourlywageTextBox.Text)
        Dim hours As Decimal = Val(hoursWorkedTextBox.Text)
        Dim pretax As Decimal = Val(pretaxTextBox.Text)
        Dim after As Decimal = Val(aftertaxTextBox.Text)

        'calculate gross earnings/week
        Dim grossEarnings As Decimal
        grossEarnings = wage * hours


        'Calculate after pretax deduction
        Dim pretaxResult As Decimal
        pretaxResult = grossEarnings - pretax

        'Calculate tax after pretax deductions
        Dim totalTax As Decimal
        totalTax = pretaxResult * taxRate

        'calculate net pay
        Dim netpay As Decimal
        netpay = pretaxResult - totalTax - after

        'return net pay
        Return netpay

    End Function
    Protected Sub calcButton_Click(sender As Object, e As System.EventArgs) Handles calcButton.Click
        'display net pay in label in dollar currency format
        netpayLabel.Text = String.Format("{0:C}", Calculate())

    End Sub

    Protected Sub clearButton_Click(sender As Object, e As System.EventArgs) Handles clearButton.Click
        'clear textboxes

        hourlywageTextBox.Text = ""
        hoursWorkedTextBox.Text = ""
        pretaxTextBox.Text = ""
        aftertaxTextBox.Text = ""
        netpayLabel.Text = ""


    End Sub
End Class
