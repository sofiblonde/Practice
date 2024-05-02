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
    /// Логика взаимодействия для Administrator.xaml
    /// </summary>
    public partial class Administrator : Page
    {


        public Administrator()
        {
            InitializeComponent();

            DgOrders.ItemsSource = AppHelper.DbConnect.Orders.ToList();

        }

        private void ChangeOrder_Click(object sender, RoutedEventArgs e)
        {
            AppHelper.MainFrame.Navigate(new EditOrder((sender as Button).DataContext as Orders));
        }

        private void DeleteOrder_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Удалить заявку?", "Удаление заявки", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                AppHelper.DbConnect.Orders.Remove((sender as Button).DataContext as Orders);
                AppHelper.DbConnect.SaveChanges();
                DgOrders.ItemsSource = AppHelper.DbConnect.Orders.ToList();
            }
        }
    }
}
