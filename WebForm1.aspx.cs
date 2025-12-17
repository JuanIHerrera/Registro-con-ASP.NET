using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace EjercicioASP.NET2023
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Error.Text = "";
        }
        SqlConnection conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionD"].ConnectionString);


        void Limpiar() 
        {
            Name.Text = "";
            Email.Text = "";
            Password.Text = "";
        }

        protected void Registro_Click(object sender, EventArgs e)
        {
            conexion.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Usuarios where Email='"+Email.Text+"'",conexion)
            {
                CommandType = System.Data.CommandType.Text
            };
            cmd.Parameters.AddWithValue("Email", Email.Text);
            int usuario = Convert.ToInt32(cmd.ExecuteScalar());
            if (usuario < 1)
            {
                SqlCommand command = new SqlCommand("INSERT INTO Usuarios (Nombre, Email, Contrasenia) values('"+Name.Text+ "','"+Email.Text+ "','"+Password.Text+"')", conexion);
                command.ExecuteNonQuery();
                conexion.Close();
                Limpiar();
            }
            else 
            {
                Error.Text = "El Email ya existe";
            }
        }
    }
}


// Aquí va la lógica cuando se hace clic en el botón
// Por ejemplo, leer los valores de los TextBox:
/*string nombre = Name.Text;
string email = Email.Text;
string password = Password.Text;*/

// Puedes hacer algo con esos datos, como guardarlos en BD
// o mostrar un mensaje