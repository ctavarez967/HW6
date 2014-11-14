<%@ Page Language="VB" AutoEventWireup="false" CodeFile="New Recipe.aspx.vb" Inherits="New_Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {}
    </style>
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
    
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="SqlDataSource_HW6_detail_view" DefaultMode="Insert" CssClass="auto-style1">
            <EditItemTemplate>
                
            </EditItemTemplate>
            <InsertItemTemplate>
                <table>

                    <tr>
                        <td>
                            Recipe Name:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tb_recipename" runat="server" Text='<%# Bind("recipe_name") %>' />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_recipename" runat="server" ErrorMessage="Please enter a recipe name!" CssClass="validatoionError" ControlToValidate="tb_recipename"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Ingridient 1:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tb_ingridinet1" runat="server" Text='<%# Bind("ingridient_1") %>' />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_ingridient" runat="server" ErrorMessage="Please enter an ingridient!" CssClass="validatoionError" ControlToValidate="tb_ingridinet"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Ingridient 2:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tb_ingridient2" runat="server" Text='<%# Bind("ingridient_2") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Ingridient 3:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tb_ingridient3" runat="server" Text='<%# Bind("ingridient_3") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Ingridient 4:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tb_ingridient4" runat="server" Text='<%# Bind("ingridient_4") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Ingridient 5:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tb_ingridient5" runat="server" Text='<%# Bind("ingridient_5") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Preparation:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tb_preparation" runat="server" Text='<%# Bind("preparation") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Submitted By:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tb_submittedby" runat="server" Text='<%# Bind("submitted_by") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Additional Notes:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tb_additionalnotes" runat="server" Text='<%# Bind("additional_notes") %>' />    
                        </td>
                    </tr>

                     <tr>
                        <td>
                            <asp:Button ID="btn_Insert"  runat="server" CausesValidation="true" commandName="Insert" Text="Insert" />  
                        </td>                        
                        <td>
                            <asp:Button ID="btn_cancelInsert"  runat="server" CausesValidation="false" commandName="Cancel" Text="Cancel" />   
                        </td>
                    </tr>
                </table>
           
            </InsertItemTemplate>
            <ItemTemplate>

            </ItemTemplate>
        </asp:FormView>
        <br />
    </div>
    </form>
</body>
</html>
