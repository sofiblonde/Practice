using enot.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace enot.Pages
{
    /// <summary>
    /// Логика взаимодействия для UserEditOrder.xaml
    /// </summary>
    public partial class UserEditOrder : Page
    {
        public UserEditOrder(Orders order)
        {
            InitializeComponent();
            DataContext = order;
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                AppHelper.DbConnect.SaveChanges();
                AppHelper.UserFrame.GoBack();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
