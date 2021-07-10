Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

   
    Protected Sub ddlcobro_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ddlcobro.SelectedIndexChanged
        Dim str As String
        str = ddlcobro.SelectedValue

        Select Case str
            Case "TAR"
                Paneltarg.Visible = True
                PanelCbu.Visible = False
            Case "CBU"
                PanelCbu.Visible = True
                Paneltarg.Visible = False
        End Select
    End Sub

    Protected Sub btnenviar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnenviar.Click
        Dim strapynomb As String
        Dim strmedio As String
        Dim strtarg As String
        Dim strcbu As String

        strapynomb = txtbapelnomb.Text
        strmedio = ddlcobro.SelectedValue
        strtarg = ddltarg.SelectedValue
        strcbu = txtboxcbu.Text

        'Session("Apellido") = strapynomb'
        'Session("Medio") = strmedio
        'Session("Targeta") = strtarg
        'Session("CBU") = strcbu
        'Response.Redirect("Practica4_confirma.aspx")

        Response.Redirect("Practica4_confirma.aspx?apellido=" + strapynomb + "&medio=" + strmedio + "&targeta=" + strtarg + "&cbu=" + strcbu)

    End Sub
End Class