<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="content">
    <div class="tittle">
        <h1>Wicked Easy Recipes</h1>
    </div>
        <h3 class="navigation"><a href="Default.aspx"style="color:black">Home</a>&nbsp;
             |&nbsp;<a href="New Recipe.aspx"style="color:black">New Recipe</a>&nbsp;
             |&nbsp; <a href="About Us.aspx"style="color:black">About Us</a>&nbsp; 
             |&nbsp; <a href="Contact.aspx"style="color:black">Contact</a></h3>
    
        <asp:SqlDataSource ID="Sql_DataSource_HW6_ctavarez" runat="server" ConnectionString="<%$ ConnectionStrings:db_ctavarez_HW6 %>" DeleteCommand="DELETE FROM [ctavarez_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [ctavarez_HW6] ([recipe_name], [ingridient_1], [ingridient_2], [ingridient_3], [ingridient_4], [ingridient_5], [preparation], [submitted_by], [additional_notes]) VALUES (@recipe_name, @ingridient_1, @ingridient_2, @ingridient_3, @ingridient_4, @ingridient_5, @preparation, @submitted_by, @additional_notes)" SelectCommand="SELECT * FROM [ctavarez_HW6]" UpdateCommand="UPDATE [ctavarez_HW6] SET [recipe_name] = @recipe_name, [ingridient_1] = @ingridient_1, [ingridient_2] = @ingridient_2, [ingridient_3] = @ingridient_3, [ingridient_4] = @ingridient_4, [ingridient_5] = @ingridient_5, [preparation] = @preparation, [submitted_by] = @submitted_by, [additional_notes] = @additional_notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="ingridient_1" Type="String" />
                <asp:Parameter Name="ingridient_2" Type="String" />
                <asp:Parameter Name="ingridient_3" Type="String" />
                <asp:Parameter Name="ingridient_4" Type="String" />
                <asp:Parameter Name="ingridient_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="additional_notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="ingridient_1" Type="String" />
                <asp:Parameter Name="ingridient_2" Type="String" />
                <asp:Parameter Name="ingridient_3" Type="String" />
                <asp:Parameter Name="ingridient_4" Type="String" />
                <asp:Parameter Name="ingridient_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="additional_notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="gridView" DataKeyNames="recipeID" DataSourceID="Sql_DataSource_HW6_ctavarez" Width="545px">
            <Columns>
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="Submitted By" SortExpression="submitted_by" />
                <asp:HyperLinkField DataNavigateUrlFields="recipeID" DataNavigateUrlFormatString="DetailView.aspx?recipeID={0}" Text="View" />
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <br />
    <br />
    </form>
    <div class="footer"> 
          @ Site Developed for Software Design and Development MSCI3300, Univeristy of Iowa 2014, All rights Reserved.
    </div>
</body>
</html>
