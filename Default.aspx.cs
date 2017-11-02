using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    IWeatherService WeatherService = null;


    protected void Page_Load(object sender, EventArgs e)
    {
        WeatherService = new WeatherService();
    }

    protected void GetWeather(object sender, EventArgs e)
    {
        string StateName = Convert.ToString(txtState.Text);
        string CityName = Convert.ToString(txtCity.Text);
        WeatherReports r = WeatherService.getWeatherData(CityName, StateName,1);

        if (r.current_observation != null)
        {
            lblWeather.Text = '"' + r.current_observation.weather + '"';
            lbTemp.Text = '"' + r.current_observation.temperature_string + '"';
            lbltempinf.Text = '"' + r.current_observation.temp_f + '"';
            lbltempinc.Text = '"' + r.current_observation.temp_c + '"';
            lblhumidity.Text = '"' + r.current_observation.relative_humidity + '"';
        }
        else
        {
            lblError.Text = "no weather report detected.";
        }
    }

    protected void GetGeographicalDetails(object sender, EventArgs e)
    {

        string StateOrCity = Convert.ToString(DropDownList2.SelectedValue);
        if (StateOrCity != "")
        {
            LatLong Output = WeatherService.GetLatLong(StateOrCity);
            GridView1.DataSource = Output;
            GridView1.DataBind();
        }
        else
        {
            GridView1.DataBind();
        }

    }

}