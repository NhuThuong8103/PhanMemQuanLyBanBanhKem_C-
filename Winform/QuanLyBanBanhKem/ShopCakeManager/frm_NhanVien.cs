using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ShopCakeManager
{
    public partial class frm_NhanVien : Form
    {
        ConvertDataTable convert = new ConvertDataTable();

        DataTable dt;

        ServiceReference.WebServiceSoapClient webservice = new ServiceReference.WebServiceSoapClient();

        public frm_NhanVien()
        {
            InitializeComponent();
            loadCBQuyen();

        }

        public void loadCBQuyen()
        {
            comboBox1.DataSource = webservice.loadQuyen();
            comboBox1.DisplayMember = "TenQuyen";
            comboBox1.ValueMember = "MaQuyen";
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void bunifuFlatButton2_Click(object sender, EventArgs e)
        {

        }

        public static byte[] ImageToByte(Image img)
        {

            byte[] byteArray = new byte[0];
            using (MemoryStream stream = new MemoryStream())
            {
                img.Save(stream, (System.Drawing.Imaging.ImageFormat.Png));
                stream.Close();

                byteArray = stream.ToArray();
            }
            return byteArray;

        }


        
       







        private void bunifuFlatButton1_Click(object sender, EventArgs e) // thêm
        {
            

            //string img = 
            try
            {

                //string ten = bunifuMetroTextbox1.Text;
                //string sdt = bunifuMetroTextbox3.Text;
                //string gt = comboBox2.SelectedText.ToString();
                //string diachi = bunifuMetroTextbox4.Text;
                //string userame = bunifuMetroTextbox5.Text;
                //string pass = bunifuMetroTextbox6.Text;
                //   webservice.UploadFile(imgBytes, name);
                //    webservice.InsertSanPham(tenbanhkem, hinhanh, mota, maloai, magiamgia);
                //    int mabk = webservice.getMaxIdBanhKem();
                //    webservice.InsertMaSizeBanh(mabk, masize, gia);
                //    //webservice.InsertMaSizeBanh(
                //    MessageBox.Show("Thêm thành công");
                
                //even_LoadSanPham();
            }
            catch (Exception)
            {
                MessageBox.Show("Vui lòng thử lại!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }


        }

        byte[] imgBytes = new byte[0];
        string name;
        private void pictureBox1_Click(object sender, EventArgs e)
        {
            try
            {
                OpenFileDialog f = new OpenFileDialog();
                ImageConverter converter = new ImageConverter();
                if (f.ShowDialog() == DialogResult.OK)
                {
                    Image img = Image.FromFile(f.FileName);
                    //imgBytes = ImageToByte(img);
                    pictureBox1.Image = img;
                    name = Path.GetFileName(f.FileName);
                    //imgBytes = (byte[])converter.ConvertTo(img, typeof(byte[]));
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Vui lòng thử lại!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }


    }
}
