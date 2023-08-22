using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace AdoSqlBrands
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public const string StringConnection = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\c#-projects\wpfapp\AdoSqlBrands\AdoSqlBrands\Shop.mdf;Integrated Security=True";
    }
}
