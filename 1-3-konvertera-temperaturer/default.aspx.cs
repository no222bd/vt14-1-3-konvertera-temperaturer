using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _1_3_konvertera_temperaturer.Model;

namespace _1_3_konvertera_temperaturer
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            var start = int.Parse(StartTextBox.Text);
            var slut = int.Parse(SlutTextBox.Text);
            var steg = int.Parse(StegTextBox.Text);

            if (RadioButton1.Checked == true)
            {
                Header1.Text = "C";
                Header2.Text = "F";
            }
            else
            {
                Header1.Text = "F";
                Header2.Text = "C";
            }

            for (int i = start; i <= slut; i = i + steg)
            {
                var row = new TableRow();
                var cell1 = new TableCell();
                var cell2 = new TableCell();
                cell1.Text = i.ToString();
                if(RadioButton1.Checked==true)
                    cell2.Text = TemperatureConverter.CelsiusToFahrenheit(i).ToString();
                else
                    cell2.Text = TemperatureConverter.FahrenheitToCelsius(i).ToString();

                row.Cells.Add(cell1);
                row.Cells.Add(cell2);

                ResultTable.Rows.Add(row);

                if (i + steg > slut && i!=slut)
                    i = slut - steg;

            }

        }
    }
}