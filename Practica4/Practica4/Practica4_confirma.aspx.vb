Public Partial Class Practica4_confirma
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            'txtapelnomb.Text = Session("Apellido")
            'txtmedio.Text = Session("Medio")
            'txttarg.Text = Session("Targeta")
            ' txtcbu.Text = Session("CBU")
            Dim strapellido As String
            Dim strmedio As String
            Dim strtarg As String
            strapellido = Request.QueryString("apellido")
            strmedio = Request.QueryString("medio")
            strtarg = Request.QueryString("targeta")





        End If

    End Sub

End Class