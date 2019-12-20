namespace ShopCakeManager
{
    partial class frm_ThemSanPham
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frm_ThemSanPham));
            this.bunifuElipse1 = new Bunifu.Framework.UI.BunifuElipse(this.components);
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.cb_TenTheLoai = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.pic_AnhSP = new System.Windows.Forms.PictureBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btn_ThemLoaiBanh = new Bunifu.Framework.UI.BunifuImageButton();
            this.btn_ThemGiamGia = new Bunifu.Framework.UI.BunifuImageButton();
            this.cb_GiamGia = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtMoTa = new System.Windows.Forms.TextBox();
            this.btn_CapNhat = new Bunifu.Framework.UI.BunifuFlatButton();
            this.btn_Luu = new Bunifu.Framework.UI.BunifuFlatButton();
            this.btn_trolai = new Bunifu.Framework.UI.BunifuFlatButton();
            this.label6 = new System.Windows.Forms.Label();
            this.txtGia = new System.Windows.Forms.TextBox();
            this.bunifuImageButton1 = new Bunifu.Framework.UI.BunifuImageButton();
            this.label7 = new System.Windows.Forms.Label();
            this.cb_Size = new System.Windows.Forms.ComboBox();
            this.txtTenBanh = new System.Windows.Forms.TextBox();
            this.bunifuImageButton2 = new Bunifu.Framework.UI.BunifuImageButton();
            ((System.ComponentModel.ISupportInitialize)(this.pic_AnhSP)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btn_ThemLoaiBanh)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btn_ThemGiamGia)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bunifuImageButton1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bunifuImageButton2)).BeginInit();
            this.SuspendLayout();
            // 
            // bunifuElipse1
            // 
            this.bunifuElipse1.ElipseRadius = 5;
            this.bunifuElipse1.TargetControl = this;
            // 
            // cb_TenTheLoai
            // 
            this.cb_TenTheLoai.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.cb_TenTheLoai.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_TenTheLoai.FormattingEnabled = true;
            this.cb_TenTheLoai.Location = new System.Drawing.Point(140, 205);
            this.cb_TenTheLoai.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.cb_TenTheLoai.Name = "cb_TenTheLoai";
            this.cb_TenTheLoai.Size = new System.Drawing.Size(470, 28);
            this.cb_TenTheLoai.TabIndex = 51;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(28, 258);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(110, 19);
            this.label2.TabIndex = 50;
            this.label2.Text = "Tên Bánh Kem:";
            // 
            // pic_AnhSP
            // 
            this.pic_AnhSP.Image = ((System.Drawing.Image)(resources.GetObject("pic_AnhSP.Image")));
            this.pic_AnhSP.Location = new System.Drawing.Point(264, 10);
            this.pic_AnhSP.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.pic_AnhSP.Name = "pic_AnhSP";
            this.pic_AnhSP.Size = new System.Drawing.Size(173, 165);
            this.pic_AnhSP.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pic_AnhSP.TabIndex = 49;
            this.pic_AnhSP.TabStop = false;
            this.pic_AnhSP.Click += new System.EventHandler(this.pic_AnhSP_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(28, 214);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(81, 19);
            this.label1.TabIndex = 52;
            this.label1.Text = "Loại bánh:";
            // 
            // btn_ThemLoaiBanh
            // 
            this.btn_ThemLoaiBanh.BackColor = System.Drawing.SystemColors.ScrollBar;
            this.btn_ThemLoaiBanh.Image = ((System.Drawing.Image)(resources.GetObject("btn_ThemLoaiBanh.Image")));
            this.btn_ThemLoaiBanh.ImageActive = null;
            this.btn_ThemLoaiBanh.Location = new System.Drawing.Point(620, 205);
            this.btn_ThemLoaiBanh.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btn_ThemLoaiBanh.Name = "btn_ThemLoaiBanh";
            this.btn_ThemLoaiBanh.Size = new System.Drawing.Size(27, 27);
            this.btn_ThemLoaiBanh.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.btn_ThemLoaiBanh.TabIndex = 55;
            this.btn_ThemLoaiBanh.TabStop = false;
            this.btn_ThemLoaiBanh.Zoom = 10;
            // 
            // btn_ThemGiamGia
            // 
            this.btn_ThemGiamGia.BackColor = System.Drawing.SystemColors.ScrollBar;
            this.btn_ThemGiamGia.Image = ((System.Drawing.Image)(resources.GetObject("btn_ThemGiamGia.Image")));
            this.btn_ThemGiamGia.ImageActive = null;
            this.btn_ThemGiamGia.Location = new System.Drawing.Point(620, 375);
            this.btn_ThemGiamGia.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btn_ThemGiamGia.Name = "btn_ThemGiamGia";
            this.btn_ThemGiamGia.Size = new System.Drawing.Size(27, 27);
            this.btn_ThemGiamGia.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.btn_ThemGiamGia.TabIndex = 58;
            this.btn_ThemGiamGia.TabStop = false;
            this.btn_ThemGiamGia.Zoom = 10;
            // 
            // cb_GiamGia
            // 
            this.cb_GiamGia.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.cb_GiamGia.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_GiamGia.FormattingEnabled = true;
            this.cb_GiamGia.Location = new System.Drawing.Point(140, 375);
            this.cb_GiamGia.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.cb_GiamGia.Name = "cb_GiamGia";
            this.cb_GiamGia.Size = new System.Drawing.Size(470, 28);
            this.cb_GiamGia.TabIndex = 57;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(28, 384);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(71, 19);
            this.label3.TabIndex = 56;
            this.label3.Text = "Giảm giá";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(28, 428);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(52, 19);
            this.label4.TabIndex = 56;
            this.label4.Text = "Mô tả:";
            // 
            // txtMoTa
            // 
            this.txtMoTa.Location = new System.Drawing.Point(140, 427);
            this.txtMoTa.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtMoTa.Multiline = true;
            this.txtMoTa.Name = "txtMoTa";
            this.txtMoTa.Size = new System.Drawing.Size(470, 151);
            this.txtMoTa.TabIndex = 59;
            // 
            // btn_CapNhat
            // 
            this.btn_CapNhat.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(46)))), ((int)(((byte)(139)))), ((int)(((byte)(87)))));
            this.btn_CapNhat.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(113)))), ((int)(((byte)(139)))), ((int)(((byte)(222)))));
            this.btn_CapNhat.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btn_CapNhat.BorderRadius = 7;
            this.btn_CapNhat.ButtonText = "Cập nhật";
            this.btn_CapNhat.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btn_CapNhat.DisabledColor = System.Drawing.Color.Gray;
            this.btn_CapNhat.Iconcolor = System.Drawing.Color.Transparent;
            this.btn_CapNhat.Iconimage = ((System.Drawing.Image)(resources.GetObject("btn_CapNhat.Iconimage")));
            this.btn_CapNhat.Iconimage_right = null;
            this.btn_CapNhat.Iconimage_right_Selected = null;
            this.btn_CapNhat.Iconimage_Selected = null;
            this.btn_CapNhat.IconMarginLeft = 0;
            this.btn_CapNhat.IconMarginRight = 0;
            this.btn_CapNhat.IconRightVisible = true;
            this.btn_CapNhat.IconRightZoom = 0D;
            this.btn_CapNhat.IconVisible = true;
            this.btn_CapNhat.IconZoom = 90D;
            this.btn_CapNhat.IsTab = false;
            this.btn_CapNhat.Location = new System.Drawing.Point(264, 596);
            this.btn_CapNhat.Name = "btn_CapNhat";
            this.btn_CapNhat.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(113)))), ((int)(((byte)(139)))), ((int)(((byte)(222)))));
            this.btn_CapNhat.OnHovercolor = System.Drawing.Color.Blue;
            this.btn_CapNhat.OnHoverTextColor = System.Drawing.Color.White;
            this.btn_CapNhat.selected = false;
            this.btn_CapNhat.Size = new System.Drawing.Size(173, 37);
            this.btn_CapNhat.TabIndex = 62;
            this.btn_CapNhat.Text = "Cập nhật";
            this.btn_CapNhat.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.btn_CapNhat.Textcolor = System.Drawing.Color.White;
            this.btn_CapNhat.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_CapNhat.Click += new System.EventHandler(this.btn_CapNhat_Click);
            // 
            // btn_Luu
            // 
            this.btn_Luu.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(46)))), ((int)(((byte)(139)))), ((int)(((byte)(87)))));
            this.btn_Luu.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(113)))), ((int)(((byte)(139)))), ((int)(((byte)(222)))));
            this.btn_Luu.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btn_Luu.BorderRadius = 7;
            this.btn_Luu.ButtonText = "Lưu";
            this.btn_Luu.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btn_Luu.DisabledColor = System.Drawing.Color.Gray;
            this.btn_Luu.Iconcolor = System.Drawing.Color.Transparent;
            this.btn_Luu.Iconimage = ((System.Drawing.Image)(resources.GetObject("btn_Luu.Iconimage")));
            this.btn_Luu.Iconimage_right = null;
            this.btn_Luu.Iconimage_right_Selected = null;
            this.btn_Luu.Iconimage_Selected = null;
            this.btn_Luu.IconMarginLeft = 0;
            this.btn_Luu.IconMarginRight = 0;
            this.btn_Luu.IconRightVisible = true;
            this.btn_Luu.IconRightZoom = 0D;
            this.btn_Luu.IconVisible = true;
            this.btn_Luu.IconZoom = 90D;
            this.btn_Luu.IsTab = false;
            this.btn_Luu.Location = new System.Drawing.Point(430, 596);
            this.btn_Luu.Name = "btn_Luu";
            this.btn_Luu.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(113)))), ((int)(((byte)(139)))), ((int)(((byte)(222)))));
            this.btn_Luu.OnHovercolor = System.Drawing.Color.Blue;
            this.btn_Luu.OnHoverTextColor = System.Drawing.Color.White;
            this.btn_Luu.selected = false;
            this.btn_Luu.Size = new System.Drawing.Size(178, 37);
            this.btn_Luu.TabIndex = 61;
            this.btn_Luu.Text = "Lưu";
            this.btn_Luu.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.btn_Luu.Textcolor = System.Drawing.Color.White;
            this.btn_Luu.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Luu.Click += new System.EventHandler(this.btn_Luu_Click);
            // 
            // btn_trolai
            // 
            this.btn_trolai.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(46)))), ((int)(((byte)(139)))), ((int)(((byte)(87)))));
            this.btn_trolai.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(113)))), ((int)(((byte)(139)))), ((int)(((byte)(222)))));
            this.btn_trolai.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btn_trolai.BorderRadius = 7;
            this.btn_trolai.ButtonText = "Trở lại";
            this.btn_trolai.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btn_trolai.DisabledColor = System.Drawing.Color.Gray;
            this.btn_trolai.Iconcolor = System.Drawing.Color.Transparent;
            this.btn_trolai.Iconimage = ((System.Drawing.Image)(resources.GetObject("btn_trolai.Iconimage")));
            this.btn_trolai.Iconimage_right = null;
            this.btn_trolai.Iconimage_right_Selected = null;
            this.btn_trolai.Iconimage_Selected = null;
            this.btn_trolai.IconMarginLeft = 0;
            this.btn_trolai.IconMarginRight = 0;
            this.btn_trolai.IconRightVisible = true;
            this.btn_trolai.IconRightZoom = 0D;
            this.btn_trolai.IconVisible = true;
            this.btn_trolai.IconZoom = 90D;
            this.btn_trolai.IsTab = false;
            this.btn_trolai.Location = new System.Drawing.Point(140, 596);
            this.btn_trolai.Name = "btn_trolai";
            this.btn_trolai.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(113)))), ((int)(((byte)(139)))), ((int)(((byte)(222)))));
            this.btn_trolai.OnHovercolor = System.Drawing.Color.Blue;
            this.btn_trolai.OnHoverTextColor = System.Drawing.Color.White;
            this.btn_trolai.selected = false;
            this.btn_trolai.Size = new System.Drawing.Size(183, 37);
            this.btn_trolai.TabIndex = 60;
            this.btn_trolai.Text = "Trở lại";
            this.btn_trolai.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.btn_trolai.Textcolor = System.Drawing.Color.White;
            this.btn_trolai.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_trolai.Click += new System.EventHandler(this.btn_trolai_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(28, 301);
            this.label6.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(38, 19);
            this.label6.TabIndex = 64;
            this.label6.Text = "Giá:";
            // 
            // txtGia
            // 
            this.txtGia.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtGia.Location = new System.Drawing.Point(140, 292);
            this.txtGia.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtGia.Name = "txtGia";
            this.txtGia.Size = new System.Drawing.Size(233, 27);
            this.txtGia.TabIndex = 65;
            // 
            // bunifuImageButton1
            // 
            this.bunifuImageButton1.BackColor = System.Drawing.SystemColors.ScrollBar;
            this.bunifuImageButton1.Image = ((System.Drawing.Image)(resources.GetObject("bunifuImageButton1.Image")));
            this.bunifuImageButton1.ImageActive = null;
            this.bunifuImageButton1.Location = new System.Drawing.Point(620, 336);
            this.bunifuImageButton1.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.bunifuImageButton1.Name = "bunifuImageButton1";
            this.bunifuImageButton1.Size = new System.Drawing.Size(27, 27);
            this.bunifuImageButton1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.bunifuImageButton1.TabIndex = 66;
            this.bunifuImageButton1.TabStop = false;
            this.bunifuImageButton1.Zoom = 10;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(28, 342);
            this.label7.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(111, 19);
            this.label7.TabIndex = 64;
            this.label7.Text = "Size  mặc định:";
            // 
            // cb_Size
            // 
            this.cb_Size.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.cb_Size.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_Size.FormattingEnabled = true;
            this.cb_Size.Location = new System.Drawing.Point(140, 332);
            this.cb_Size.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.cb_Size.Name = "cb_Size";
            this.cb_Size.Size = new System.Drawing.Size(470, 28);
            this.cb_Size.TabIndex = 67;
            // 
            // txtTenBanh
            // 
            this.txtTenBanh.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTenBanh.Location = new System.Drawing.Point(140, 249);
            this.txtTenBanh.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtTenBanh.Name = "txtTenBanh";
            this.txtTenBanh.Size = new System.Drawing.Size(470, 27);
            this.txtTenBanh.TabIndex = 68;
            // 
            // bunifuImageButton2
            // 
            this.bunifuImageButton2.BackColor = System.Drawing.SystemColors.ScrollBar;
            this.bunifuImageButton2.Image = ((System.Drawing.Image)(resources.GetObject("bunifuImageButton2.Image")));
            this.bunifuImageButton2.ImageActive = null;
            this.bunifuImageButton2.Location = new System.Drawing.Point(652, 336);
            this.bunifuImageButton2.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.bunifuImageButton2.Name = "bunifuImageButton2";
            this.bunifuImageButton2.Size = new System.Drawing.Size(27, 27);
            this.bunifuImageButton2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.bunifuImageButton2.TabIndex = 69;
            this.bunifuImageButton2.TabStop = false;
            this.bunifuImageButton2.Zoom = 10;
            // 
            // frm_ThemSanPham
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(741, 640);
            this.Controls.Add(this.bunifuImageButton2);
            this.Controls.Add(this.txtTenBanh);
            this.Controls.Add(this.cb_Size);
            this.Controls.Add(this.bunifuImageButton1);
            this.Controls.Add(this.txtGia);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.btn_CapNhat);
            this.Controls.Add(this.btn_Luu);
            this.Controls.Add(this.btn_trolai);
            this.Controls.Add(this.txtMoTa);
            this.Controls.Add(this.btn_ThemGiamGia);
            this.Controls.Add(this.cb_GiamGia);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btn_ThemLoaiBanh);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cb_TenTheLoai);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.pic_AnhSP);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "frm_ThemSanPham";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frm_ThemSanPham";
            this.TopMost = true;
            this.Load += new System.EventHandler(this.frm_ThemSanPham_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pic_AnhSP)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btn_ThemLoaiBanh)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btn_ThemGiamGia)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bunifuImageButton1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bunifuImageButton2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Bunifu.Framework.UI.BunifuElipse bunifuElipse1;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private Bunifu.Framework.UI.BunifuImageButton btn_ThemLoaiBanh;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cb_TenTheLoai;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.PictureBox pic_AnhSP;
        private Bunifu.Framework.UI.BunifuImageButton btn_ThemGiamGia;
        private System.Windows.Forms.ComboBox cb_GiamGia;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtMoTa;
        private System.Windows.Forms.Label label4;
        private Bunifu.Framework.UI.BunifuImageButton bunifuImageButton1;
        private System.Windows.Forms.TextBox txtGia;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private Bunifu.Framework.UI.BunifuFlatButton btn_CapNhat;
        private Bunifu.Framework.UI.BunifuFlatButton btn_Luu;
        private Bunifu.Framework.UI.BunifuFlatButton btn_trolai;
        private System.Windows.Forms.ComboBox cb_Size;
        private System.Windows.Forms.TextBox txtTenBanh;
        private Bunifu.Framework.UI.BunifuImageButton bunifuImageButton2;

    }
}