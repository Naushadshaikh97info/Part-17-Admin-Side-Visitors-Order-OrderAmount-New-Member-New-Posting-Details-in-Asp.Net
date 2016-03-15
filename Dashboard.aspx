<%@ Page Title="" Language="C#" MasterPageFile="~/apanel/Admin_MasterPage.master"
    AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="apanel_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <table width="980" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="220" valign="top" background="img/frame/bg_left.gif" style="padding: 15 15 30 15">
                <table width="190" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="15" height="23">
                            <img src="img/btn/ico_left_title.gif" width="7" height="7">
                        </td>
                        <td width="175" class="title_company">
                            <!--Company Name  -->
                            Jewelrty Wholesale Club
                        </td>
                    </tr>
                    <tr valign="top">
                        <td height="17" colspan="2">
                            <img src="img/frame/line_left_title.gif" width="190" height="2">
                        </td>
                    </tr>
                    <tr>
                        <td height="24">
                            <img src="img/btn/ico_leftmenu.gif" width="9" height="9">
                        </td>
                        <td>
                            <a href="order_report.aspx" class="left_menu">View New Orders</a>
                        </td>
                    </tr>
                    <tr>
                        <td height="24">
                            <img src="img/btn/ico_leftmenu.gif" width="9" height="9">
                        </td>
                        <td>
                            <a href="add_product_master.aspx" class="left_menu">Add New Products</a>
                        </td>
                    </tr>
                    <tr>
                        <td height="24">
                            <img src="img/btn/ico_leftmenu.gif" width="9" height="9">
                        </td>
                        <td>
                            <a href="AddCategory.aspx" class="left_menu">Manage Categories</a>
                        </td>
                    </tr>
                    <tr>
                        <td height="24">
                            <img src="img/btn/ico_leftmenu.gif" width="9" height="9">
                        </td>
                        <td>
                            <a href="regist_report.aspx" class="left_menu">View Customers</a>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="760" valign="top" style="padding: 15 0 30 15">
                <table width="745" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="23" height="23" align="left">
                            <img src="img/btn/ico_page_title.gif" width="16" height="13">
                        </td>
                        <td width="722" class="title_page">
                            SUMMARY
                        </td>
                    </tr>
                    <tr valign="top">
                        <td height="17" colspan="2">
                            <img src="img/frame/line_page_title.gif" width="745" height="2">
                        </td>
                    </tr>
                </table>
                <table width="745" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="15" height="24">
                            <img src="img/btn/ico_table_title.gif" width="9" height="9">
                        </td>
                        <td width="730" class="title">
                            Today's shortcut
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <table width="745" border="0" cellpadding="5" cellspacing="0" bgcolor="F2F2F2">
                                <tr bgcolor="F5E6DB">
                                    <td width="98" height="22" align="center" class="title_table">
                                        <asp:Label ID="lbl_visitos" runat="server" Text="Visitors"></asp:Label>
                                    </td>
                                    <td width="113" class="title_table" align="center">
                                        <asp:Label ID="lbl_orders" runat="server" Text="Orders"></asp:Label>
                                    </td>
                                    <td width="134" class="title_table" align="center">
                                        <asp:Label ID="lbl_order_amt" runat="server" Text="Order Amount"></asp:Label>
                                    </td>
                                    <td width="116" class="title_table" align="center">
                                        <asp:Label ID="lbl_new_member" runat="server" Text="New Members"></asp:Label>
                                    </td>
                                    <td width="100" class="title_table" align="center">
                                        <asp:Label ID="lbl_new_posting" runat="server" Text="New Postings"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="22" align="center">
                                        <asp:Label ID="lbl_ans_visitor" runat="server" Text="" Font-Bold="false"></asp:Label>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="lbl_ans_orders" runat="server" Text="" Font-Bold="false"></asp:Label>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="lbl_ans_ordamt" runat="server" Text="" Font-Bold="false"></asp:Label>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="lbl_ans_newmember" runat="server" Text="" Font-Bold="false"></asp:Label>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="lbl_ans_newposting" runat="server" Text="" Font-Bold="false"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br>
                <table width="745" border="0" cellspacing="0" cellpadding="0">
                    <tr valign="top">
                        <td width="380">
                            <table width="365" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="15" height="24">
                                        <img src="img/btn/ico_table_title.gif" width="9" height="9">
                                    </td>
                                    <td width="350" class="title">
                                        Today's Order [<a href="order_report.aspx">more</a>]
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="365" border="0" cellspacing="0" cellpadding="3">
                                            <tr>
                                                <td class="title_table">
                                                    <asp:GridView ID="grid_order" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                                                        DataKeyNames="code" Width="360px">
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="Order#" ItemStyle-HorizontalAlign="Center" ItemStyle-Font-Bold="false">
                                                                <ItemTemplate>
                                                                    <asp:LinkButton ID="LinkButton12" runat="server" CommandArgument='<%#Eval("code") %>'
                                                                        OnClick="onclick_order" ForeColor="Blue" Text='<%#Eval("order_no") %>'></asp:LinkButton>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField HeaderText="Customer" DataField="name" ItemStyle-HorizontalAlign="Center"
                                                                ItemStyle-Font-Bold="false" />
                                                            <asp:BoundField HeaderText="Amount($)" DataField="amount" ItemStyle-HorizontalAlign="Center"
                                                                ItemStyle-Font-Bold="false" />
                                                            <asp:BoundField HeaderText="Status" DataField="status" ItemStyle-HorizontalAlign="Center"
                                                                ItemStyle-Font-Bold="false" />
                                                        </Columns>
                                                        <FooterStyle BackColor="Tan" />
                                                        <HeaderStyle BackColor="#DBEAF5" Height="30px" Font-Bold="false" />
                                                        <PagerStyle BackColor="#FFFFFF" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                                        <RowStyle Height="25px" Font-Size="13px" />
                                                        <SelectedRowStyle BackColor="#F7F7F7" ForeColor="GhostWhite" />
                                                        <SortedAscendingCellStyle BackColor="#F5E6DB" />
                                                        <SortedAscendingHeaderStyle BackColor="#F5E6DB" />
                                                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                            <tr bgcolor="FCFCFC">
                                                <td height="22" align="left">
                                                    <asp:Label ID="lbl_ord_no" runat="server" Text="" Font-Bold="false"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="lbl_custmr" runat="server" Text="" Font-Bold="false"></asp:Label>
                                                </td>
                                                <td align="center">
                                                    <asp:Label ID="lbl_amt" runat="server" Text="" Font-Bold="false"></asp:Label>
                                                </td>
                                                <td align="center">
                                                    <asp:Label ID="lbl_statas" runat="server" Text="" Font-Bold="false"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table width="365" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="15" height="24">
                                        <img src="img/btn/ico_table_title.gif" width="9" height="9">
                                    </td>
                                    <td width="350" class="title">
                                        Today's Members [<a href="member_report.aspx">more</a>]
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="365" border="0" cellspacing="0" cellpadding="3">
                                            <tr>
                                                <td>
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                                                        DataKeyNames="code" Width="360px">
                                                        <Columns>
                                                            <asp:BoundField HeaderText="Id" DataField="id" ItemStyle-HorizontalAlign="Center"
                                                                ItemStyle-Font-Bold="false" />
                                                            <asp:BoundField HeaderText="Company" DataField="company" ItemStyle-HorizontalAlign="Center"
                                                                ItemStyle-Font-Bold="false" />
                                                            <asp:BoundField HeaderText="Date" DataField="date" ItemStyle-HorizontalAlign="Center"
                                                                ItemStyle-Font-Bold="false" />
                                                        </Columns>
                                                        <FooterStyle BackColor="Tan" />
                                                        <HeaderStyle BackColor="#DBEAF5" Height="30px" Font-Bold="false" />
                                                        <PagerStyle BackColor="#FFFFFF" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                                        <RowStyle Height="25px" Font-Size="13px" />
                                                        <SelectedRowStyle BackColor="#F7F7F7" ForeColor="GhostWhite" />
                                                        <SortedAscendingCellStyle BackColor="#F5E6DB" />
                                                        <SortedAscendingHeaderStyle BackColor="#F5E6DB" />
                                                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br>
                <table width="745" border="0" cellspacing="0" cellpadding="0">
                    <tr valign="top">
                        <td width="380">
                            <table width="365" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="15" height="24">
                                        <img src="img/btn/ico_table_title.gif" width="9" height="9">
                                    </td>
                                    <td width="350" class="title">
                                        Today's Posting List [<a href="admin_add_news.aspx">more</a>]
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="365" border="0" cellspacing="0" cellpadding="3">
                                            <tr>
                                                <td>
                                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                                                        DataKeyNames="code" Width="360px">
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="No" ItemStyle-HorizontalAlign="Center" ItemStyle-Font-Bold="false">
                                                                <ItemTemplate>
                                                                    <%# Container.DataItemIndex + 1 %>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField HeaderText="Subject" DataField="subject" ItemStyle-HorizontalAlign="Center"
                                                                ItemStyle-Font-Bold="false" />
                                                            <asp:BoundField HeaderText="Name" DataField="name" ItemStyle-HorizontalAlign="Center"
                                                                ItemStyle-Font-Bold="false" />
                                                        </Columns>
                                                        <FooterStyle BackColor="Tan" />
                                                        <HeaderStyle BackColor="#DBEAF5" Height="30px" Font-Bold="false" />
                                                        <PagerStyle BackColor="#FFFFFF" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                                        <RowStyle Height="25px" Font-Size="13px" />
                                                        <SelectedRowStyle BackColor="#F7F7F7" ForeColor="GhostWhite" />
                                                        <SortedAscendingCellStyle BackColor="#F5E6DB" />
                                                        <SortedAscendingHeaderStyle BackColor="#F5E6DB" />
                                                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </center>
</asp:Content>
