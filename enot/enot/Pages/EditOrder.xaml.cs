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
    /// Логика взаимодействия для EditOrder.xaml
    /// </summary>
    public partial class EditOrder : Page
    {


        public EditOrder(Orders order)
        {
            InitializeComponent();
            DataContext = order;

            Cmd_Employee.ItemsSource = AppHelper.DbConnect.Employees.ToList();
            Cmd_Employee.SelectedValuePath = "EmpID";
            Cmd_Employee.DisplayMemberPath = "Users.UserFIO";

            Cmd_Status.ItemsSource = AppHelper.DbConnect.Statuses.ToList();
            Cmd_Status.SelectedValuePath = "StatusID";
            Cmd_Status.DisplayMemberPath = "StatusName";
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                AppHelper.DbConnect.SaveChanges();
                AppHelper.MainFrame.GoBack();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
    }
}
