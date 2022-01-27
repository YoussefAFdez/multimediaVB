
Partial Class user_controls_WebUserControl
    Inherits System.Web.UI.UserControl

    Private url As String
    Private text As String
    Private pathToImg As String

    Public WriteOnly Property DestinationUrl As String
        Set(value As String)
            url = value
        End Set
    End Property

    Public WriteOnly Property TextContent As String
        Set(value As String)
            text = value
        End Set
    End Property

    Public WriteOnly Property ImagePath As String
        Set(value As String)
            pathToImg = value
        End Set
    End Property

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        link.NavigateUrl = "~/pages/" & url
        link.Text = text
        image.ImageUrl = pathToImg
        image.PostBackUrl = "~/pages/" & url
    End Sub

End Class
