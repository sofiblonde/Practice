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
    /// Логика взаимодействия для User.xaml
    /// </summary>
    public partial class User : Page
    {
        Users usr;
        public User(Users user)
        {
            InitializeComponent();
            TBlockFIO.Text = user.UserFIO;
            usr = user;
            Helpers.AppHelper.UserFrame = _UserFrame;
        }
        private void BtnExit_Click(object sender, RoutedEventArgs e)
        {
           Helpers.AppHelper.MainFrame.Navigate(new Authorisation());
        }

        private void BtnMyOrders_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnCreateOrder_Click(object sender, RoutedEventArgs e)
        {
            Helpers.AppHelper.UserFrame.Navigate(new CreateOrder(usr));
        }
    }
}
