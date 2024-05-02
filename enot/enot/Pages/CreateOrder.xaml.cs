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
    /// Логика взаимодействия для CreateOrder.xaml
    /// </summary>
    public partial class CreateOrder : Page
    {
        Orders ord;
        Users usr;
        private Users usr1;

        public CreateOrder(Users user)
        {
            InitializeComponent();
            usr = user;
            ord = new Orders();
            ord.OrderStatus = 1;
            ord.OrderDate = DateTime.Now;
            ord.OrderUser = user.UserID;
            SpAddOrder.DataContext = ord;
        }


        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            AppHelper.DbConnect.Orders.Add(SpAddOrder.DataContext as Orders);
            AppHelper.DbConnect.SaveChanges();
            MessageBox.Show("Заявка успешно оставлена", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
        }
    }
}
