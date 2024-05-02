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
    /// Логика взаимодействия для Authorisation.xaml
    /// </summary>
    public partial class Authorisation : Page
    {
        public Authorisation()
        {
            InitializeComponent();
        }
        private void Authorization_Click(object sender, RoutedEventArgs e)
        {
            if (TBoxLogin.Text.Length > 3 && PassBox.Password.Length > 3)
            {
                var user = Helpers.AppHelper.DbConnect.Users.FirstOrDefault(x => x.UserEmail == TBoxLogin.Text && x.UserPassword == PassBox.Password);

                if (user != null)
                {
                    if (user.UserRole == 1)
                    {
                        AppHelper.MainFrame.Navigate(new Administrator());
                    }
                    else
                    {
                        Helpers.AppHelper.MainFrame.Navigate(new User(user));
                    }
                   
                }
                else
                {
                    MessageBox.Show("Такого пользователя не существует");
                }
            }
            else
            {
                MessageBox.Show("Логин и пароль должны состоять более чем из 3 символов",
                    "Внимание!!", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }
    }
}
