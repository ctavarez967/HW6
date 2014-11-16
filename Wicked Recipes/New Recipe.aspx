<%@ Page Language="VB" AutoEventWireup="false" CodeFile="New Recipe.aspx.vb" Inherits="New_Recipe" %>

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
        <ul>
             <li><a href="Default.aspx"style="color:black">Home</a>&nbsp;&nbsp; |</li>
             <li><a href="New Recipe.aspx"style="color:black">New Recipe</a>&nbsp;&nbsp; |</li>
             <li><a href="About Us.aspx"style="color:black">About Us</a>&nbsp;&nbsp; |</li>
             <li><a href="Contact.aspx"style="color:black">Contact</a></li>
            </ul>
        
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

      <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="SqlDataSource_HW6_detail_view" DefaultMode="Insert" class="table3">
            <EditItemTemplate>
                
            </EditItemTemplate>
            <InsertItemTemplate >

                <table>
                    <tr>
                        <td class="leftColumn3">
                            Recipe Name:    
                        </td>                        
                        <td class="rightColumn3">
                            <asp:TextBox ID="tb_recipename" runat="server" Text='<%# Bind("recipe_name") %>' />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_recipename" runat="server" ErrorMessage="Please enter a recipe name!" CssClass="validatoionError" ControlToValidate="tb_recipename"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn3">
                            Ingridient 1:    
                        </td>                        
                        <td class="rightColumn3">
                            <asp:TextBox ID="tb_ingridient1" runat="server" Text='<%# Bind("ingridient_1") %>' />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_ingridient" runat="server" ErrorMessage="Please enter an ingridient!" CssClass="validatoionError" ControlToValidate="tb_ingridient1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn3">
                            Ingridient 2:    
                        </td>                        
                        <td class="rightColumn3">
                            <asp:TextBox ID="tb_ingridient2" runat="server" Text='<%# Bind("ingridient_2") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn3">
                            Ingridient 3:    
                        </td>                        
                        <td class="rightColumn3">
                            <asp:TextBox ID="tb_ingridient3" runat="server" Text='<%# Bind("ingridient_3") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn3">
                            Ingridient 4:    
                        </td>                        
                        <td class="rightColumn3">
                            <asp:TextBox ID="tb_ingridient4" runat="server" Text='<%# Bind("ingridient_4") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn3">
                            Ingridient 5:    
                        </td>                        
                        <td class="rightColumn3">
                            <asp:TextBox ID="tb_ingridient5" runat="server" Text='<%# Bind("ingridient_5") %>' />    
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn3">
                            Preparation:    
                        </td>                        
                        <td class="rightColumn3">
                            <asp:TextBox ID="tb_preparation" runat="server" Text='<%# Bind("preparation") %>' />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_preparation" runat="server" ErrorMessage="Please enter prearation instructions!" CssClass="validatoionError" ControlToValidate="tb_preparation"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn3">
                            Submitted By:    
                        </td>                        
                        <td class="rightColumn3">
                            <asp:TextBox ID="tb_submittedby" runat="server" Text='<%# Bind("submitted_by") %>' />    
                        </td>
                        <td class="Val">
                        <asp:RequiredFieldValidator ID="RFV_submittedby" runat="server" ErrorMessage="Please enter who submitted this recipe!" CssClass="validatoionError" ControlToValidate="tb_submittedby"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="leftColumn3">
                            Additional Notes:    
                        </td>                        
                        <td class="rightColumn3">
                            <asp:TextBox ID="tb_additionalnotes" runat="server" Text='<%# Bind("additional_notes") %>' />    
                        </td>
                    </tr>

                     <tr>
                        <td class="leftColumn3">
                            <asp:Button ID="btn_Insert"  runat="server" CausesValidation="true" commandName="Insert" Text="Insert" />  
                        </td>                        
                        <td class="rightColumn3">
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
    <br />
     <div class="footer"> 
          @ Site Developed for Software Design and Development MSCI3300, Univeristy of Iowa 2014, All rights Reserved.
    </div>
</body>
</html>
