<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailView.aspx.vb" Inherits="DetailView" %>

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

        <asp:SqlDataSource ID="SqlDataSource_HW6_detail_view" runat="server" ConnectionString="<%$ ConnectionStrings:db_ctavarez_HW6 %>" DeleteCommand="DELETE FROM [ctavarez_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [ctavarez_HW6] ([recipe_name], [ingridient_1], [ingridient_2], [ingridient_3], [ingridient_4], [ingridient_5], [preparation], [submitted_by], [additional_notes]) VALUES (@recipe_name, @ingridient_1, @ingridient_2, @ingridient_3, @ingridient_4, @ingridient_5, @preparation, @submitted_by, @additional_notes)" SelectCommand="SELECT * FROM [ctavarez_HW6] WHERE ([recipeID] = @recipeID)" UpdateCommand="UPDATE [ctavarez_HW6] SET [recipe_name] = @recipe_name, [ingridient_1] = @ingridient_1, [ingridient_2] = @ingridient_2, [ingridient_3] = @ingridient_3, [ingridient_4] = @ingridient_4, [ingridient_5] = @ingridient_5, [preparation] = @preparation, [submitted_by] = @submitted_by, [additional_notes] = @additional_notes WHERE [recipeID] = @recipeID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
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
        <span class="deletedRecipe"><asp:Label ID="lbl_deletedRecipe" runat="server"></asp:Label> </span>
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="recipeID" DataSourceID="SqlDataSource_HW6_detail_view" CssClass="table2">
            <EditItemTemplate>
                 <table>
                    <tr>
                        <td class="leftColumn2">
                            Recipe Name:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_recipename" runat="server" Text='<%# Bind("recipe_name") %>' />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_recipename" runat="server" ErrorMessage="Please enter a recipe name!" CssClass="validatoionError" ControlToValidate="tb_recipename"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Ingridient 1:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_ingridient1" runat="server" Text='<%# Bind("ingridient_1") %>' />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_ingridient" runat="server" ErrorMessage="Please enter an ingridient!" CssClass="validatoionError" ControlToValidate="tb_ingridient1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Ingridient 2:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_ingridient2" runat="server" Text='<%# Bind("ingridient_2") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Ingridient 3:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_ingridient3" runat="server" Text='<%# Bind("ingridient_3") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Ingridient 4:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_ingridient4" runat="server" Text='<%# Bind("ingridient_4") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Ingridient 5:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_ingridient5" runat="server" Text='<%# Bind("ingridient_5") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Preparation:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_preparation" runat="server" Text='<%# Bind("preparation") %>' />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_preparation" runat="server" ErrorMessage="Please enter prearation instructions!" CssClass="validatoionError" ControlToValidate="tb_preparation"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Submitted By:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_submittedby" runat="server" Text='<%# Bind("submitted_by") %>' />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_submittedby" runat="server" ErrorMessage="Please enter who submitted this recipe!" CssClass="validatoionError" ControlToValidate="tb_submittedby"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Additional Notes:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_additionalnotes" runat="server" Text='<%# Bind("additional_notes") %>' />    
                        </td>
                    </tr>
                    <tr>
                        <td class="leftColumn2">
                            <asp:Button ID="btn_update"  runat="server" CausesValidation="True" commandName="Update" Text="Update" />  
                        </td>                        
                        <td class="rightColumn2">
                            <asp:Button ID="btn_updatecancel"  runat="server" CausesValidation="false" commandName="Cancel" Text="Cancel" />   
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <InsertItemTemplate>

            </InsertItemTemplate>
            <ItemTemplate>
              <table>
                    <tr>
                        <td class="leftColumn2">
                            Recipe Name:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_recipename" runat="server" Text='<%# Bind("recipe_name") %>' ReadOnly="True" />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_recipename" runat="server" ErrorMessage="Please enter a recipe name!" CssClass="validatoionError" ControlToValidate="tb_recipename"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Ingridient 1:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_ingridient1" runat="server" Text='<%# Bind("ingridient_1") %>' ReadOnly="True" />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_ingridient" runat="server" ErrorMessage="Please enter an ingridient!" CssClass="validatoionError" ControlToValidate="tb_ingridient1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Ingridient 2:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_ingridient2" runat="server" Text='<%# Bind("ingridient_2") %>' ReadOnly="True" />    
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Ingridient 3:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_ingridient3" runat="server" Text='<%# Bind("ingridient_3") %>' ReadOnly="True" />    
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Ingridient 4:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_ingridient4" runat="server" Text='<%# Bind("ingridient_4") %>' ReadOnly="True" />    
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Ingridient 5:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_ingridient5" runat="server" Text='<%# Bind("ingridient_5") %>' ReadOnly="True" />    
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Preparation:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_preparation" runat="server" Text='<%# Bind("preparation") %>' ReadOnly="True" />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_preparation" runat="server" ErrorMessage="Please enter prearation instructions!" CssClass="validatoionError" ControlToValidate="tb_preparation"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Submitted By:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_submittedby" runat="server" Text='<%# Bind("submitted_by") %>' ReadOnly="True" />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_submittedby" runat="server" ErrorMessage="Please enter who submitted this recipe!" CssClass="validatoionError" ControlToValidate="tb_submittedby"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn2">
                            Additional Notes:    
                        </td>                        
                        <td class="rightColumn2">
                            <asp:TextBox ID="tb_additionalnotes" runat="server" Text='<%# Bind("additional_notes") %>' ReadOnly="True" />    
                        </td>
                    </tr>
                    <tr>
                        <td class="leftColumn2">
                            <asp:Button ID="btn_edit"  runat="server" CausesValidation="false" commandName="Edit" Text="Edit" />  
                        </td>                        
                        <td class="rightColumn2">
                            <asp:Button ID="btn_delete"  runat="server" CausesValidation="false" commandName="Delete" Text="Delete" />   
                        </td>
                    </tr>
                </table> 
            </ItemTemplate>
        </asp:FormView>
    </div>
    </div>
    </form>
    <br />
     <div class="footer"> 
          @ Site Developed for Software Design and Development MSCI3300, Univeristy of Iowa 2014, All rights Reserved.
    </div>
</body>
</html>
