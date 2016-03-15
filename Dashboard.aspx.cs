using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class apanel_Dashboard : System.Web.UI.Page
{
    cosmicDataContext linq_obj = new cosmicDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        fill_visitor();
        fill_today_order();
        fill_today_order_amt();
        fill_todau_regi();
        fill_today_newposting();
        fillgrid();
        fill_today_mem();
        fill_today_listing();
    }
    private void fill_visitor()
    {
        var id = (from a in linq_obj.user_login_counts
                  where a.short_date == Convert.ToDateTime(System.DateTime.Now).ToShortDateString()
                  select a).ToList();
        int visitor = id.Count();
        lbl_ans_visitor.Text = visitor.ToString();
    }
    private void fill_today_order()

    {
        string dt = Convert.ToDateTime(System.DateTime.Now).ToShortDateString();
        var id = (from a in linq_obj.order_details
                  where a.today_date.Value.Month + "/" + a.today_date.Value.Day + "/" + a.today_date.Value.Year == (dt)
                  select a).ToList();
        int order = id.Count();
        lbl_ans_orders.Text = order.ToString();
    }
    private void fill_today_order_amt()
    {
        int order_amt = 0;
        string dt = Convert.ToDateTime(System.DateTime.Now).ToShortDateString();
        var id = (from a in linq_obj.order_details
                  where a.today_date.Value.Month + "/" + a.today_date.Value.Day + "/" + a.today_date.Value.Year == (dt)
                  select a).ToList();

        for (int i = 0; i < id.Count(); i++)
        {
             order_amt  = + (Convert.ToInt32(id[i].total_amt));
        }
        if(order_amt == 0)
        {
            lbl_ans_ordamt.Text = "0";
        }
        else
        {
            lbl_ans_ordamt.Text = order_amt.ToString();
        }
    }
    private void fill_todau_regi()
    {
        var id = (from a in linq_obj.registration_msts
                  where a.datetime == Convert.ToDateTime(System.DateTime.Now).ToShortDateString()
                  select a).ToList();
        int regi_count = id.Count();
        lbl_ans_newmember.Text = regi_count.ToString();
    }
    private void fill_today_newposting()
    {
        var id = (from a in linq_obj.product_master_ts
                  where a.date == Convert.ToDateTime(System.DateTime.Now).ToShortDateString()
                  select a).ToList();
        int regi_count = id.Count();
        lbl_ans_newposting.Text = regi_count.ToString();
    }
    protected void fillgrid()
    {
        string dt = Convert.ToDateTime(System.DateTime.Now).ToShortDateString();
        var id = (from a in linq_obj.order_details
                  join b in linq_obj.registration_msts on a.fk_memberid equals b.intglcode
                  join c in linq_obj.states on b.state equals c.intglcode
                  where a.today_date.Value.Month + "/" + a.today_date.Value.Day + "/" + a.today_date.Value.Year == (dt)
                  select new
                  {
                      code = a.intglcode,
                     
                      order_no = a.mobileno,
                      name = b.frist_name + " " + b.last_name,
                     
                      amount = a.total_amt,
                      status = a.status
                     
                  }).ToList();
        grid_order.DataSource = id;
        grid_order.DataBind();
       
    }
    protected void onclick_order(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        int code = Convert.ToInt32(lnk.CommandArgument.ToString());
        Response.Redirect("order_report.aspx?id=" + code);
    }
    protected void fill_today_mem()
    {
        var id = (from a in linq_obj.registration_msts
                 
                  where a.datetime == Convert.ToDateTime(System.DateTime.Now).ToShortDateString()
                  select new
                  {
                      code = a.intglcode,
                      id = a.intglcode,
                      company = a.company_name,
                      date = a.datetime

                  }).ToList();
       GridView1.DataSource = id;
        GridView1.DataBind();

    }
    protected void fill_today_listing()
    {
        var id = (from a in linq_obj.add_news

                  where a.date == Convert.ToDateTime(System.DateTime.Now).ToShortDateString()
                  select new
                  {
                      code = a.intglcode,
                      subject = a.news_title,
                      name = a.news_disc

                  }).ToList();
        GridView2.DataSource = id;
        GridView2.DataBind();

    }
}