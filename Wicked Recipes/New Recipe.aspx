<%@ Page Language="VB" AutoEventWireup="false" CodeFile="New Recipe.aspx.vb" Inherits="New_Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <asp:SqlDataSource ID="SqlDataSource_HW6_detail_view" runat="server" ConnectionString="<%$ ConnectionStrings:db_ctavarez_HW6 %>" DeleteCommand="DELETE FROM [ctavarez_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [ctavarez_HW6] ([recipe_name], [ingridient_1], [ingridient_2], [ingridient_3], [ingridient_4], [ingridient_5], [preparation], [submitted_by], [additional_notes]) VALUES (@recipe_name, @ingridient_1, @ingridient_2, @ingridient_3, @ingridient_4, @ingridient_5, @preparation, @submitted_by, @additional_notes)" SelectCommand="SELECT * FROM [ctavarez_HW6]" UpdateCommand="UPDATE [ctavarez_HW6] SET [recipe_name] = @recipe_name, [ingridient_1] = @ingridient_1, [ingridient_2] = @ingridient_2, [ingridient_3] = @ingridient_3, [ingridient_4] = @ingridient_4, [ingridient_5] = @ingridient_5, [preparation] = @preparation, [submitted_by] = @submitted_by, [additional_notes] = @additional_notes WHERE [recipeID] = @recipeID">
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
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="auto-style1" DataKeyNames="recipeID" DataSourceID="SqlDataSource_HW6_detail_view" Height="50px" Width="311px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                <asp:BoundField DataField="ingridient_1" HeaderText="Ingridient 1" SortExpression="ingridient_1" />
                <asp:BoundField DataField="ingridient_2" HeaderText="Ingridient 2" SortExpression="ingridient_2" />
                <asp:BoundField DataField="ingridient_3" HeaderText="Ingridient 3" SortExpression="ingridient_3" />
                <asp:BoundField DataField="ingridient_4" HeaderText="Ingridient 4" SortExpression="ingridient_4" />
                <asp:BoundField DataField="ingridient_5" HeaderText="Ingridient 5" SortExpression="ingridient_5" />
                <asp:BoundField DataField="preparation" HeaderText="Preparation" SortExpression="preparation" />
                <asp:BoundField DataField="submitted_by" HeaderText="Submitted By" SortExpression="submitted_by" />
                <asp:BoundField DataField="additional_notes" HeaderText="Additional Notes" SortExpression="additional_notes" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </div>
    </form>
</body>
</html>
