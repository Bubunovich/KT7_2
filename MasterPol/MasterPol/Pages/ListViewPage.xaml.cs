﻿using System;
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

namespace MasterPol.Pages
{
    /// <summary>
    /// Логика взаимодействия для ListViewPage.xaml
    /// </summary>
    public partial class ListViewPage : Page
    {
        public ListViewPage()
        {
            InitializeComponent();
            ProductListView.ItemsSource = Data.MasterpolEntities.GetContext().Partners_import.ToList();
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            Manager.Manager.MainFrame.Navigate(new Pages.AddPage());
        }

        private void ApendButton_Click(object sender, RoutedEventArgs e)
        {
            Manager.Manager.MainFrame.Navigate(new Pages.AddPage());
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
