﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class ChoiceCountry : Form
    {
        public int selectedCountry { set; get; }
        
        public ChoiceCountry(Country[] countries)
        {
            InitializeComponent();
            foreach (var item in countries)
            {
                comboBox1.Items.Add(item.NameCountry);
            }
            comboBox1.SelectedIndex = 0;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            selectedCountry = comboBox1.SelectedIndex;
            DialogResult = DialogResult.OK;
            Close();
        }
    }
}
