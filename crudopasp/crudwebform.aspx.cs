using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Crudwebform : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\crudop.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into table1 values('" + Name.Text + "','" + Dob.SelectedDate.ToString("dd-MM") + "','" + Email.Text + "','" + City.Text + "','" + Phone.Text + "','" + TextBox1.Text + "')";
        cmd.ExecuteNonQuery();

        Name.Text = "";
      // Dob.SelectedDate. = "";
        Email.Text = "";
        City.Text = "";
        Phone.Text = "";
        TextBox1.Text = "";
        display_data();
    }

    public void display_data()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from table1";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();


    }


   


    protected void Button4_Click(object sender, EventArgs e)
    {
        display_data();
    }



    protected void Button3_Click1(object sender, EventArgs e)
    {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from table1 where Name='" + Name.Text + "'";
            cmd.ExecuteNonQuery();

           Name.Text = "";
        Email.Text = "";
        City.Text = "";
        Phone.Text = "";
        TextBox1.Text = "";
        display_data();
        }


    
    

   

    



    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update table1 set Name='"+Name.Text+"',Dob='"+Dob.SelectedDate.Date+"',Email='"+Email.Text+"',City='"+City.Text+"',Phone='"+Phone.Text+"' where id=" + Convert.ToUInt32(id2.Text)+"";
        cmd.ExecuteNonQuery();
        Name.Text = "";
       //  Dob.SelectedDate = "";
        Email.Text = "";
      City.Text = "";
        Phone.Text = "";
        display_data();
    }

    
}
