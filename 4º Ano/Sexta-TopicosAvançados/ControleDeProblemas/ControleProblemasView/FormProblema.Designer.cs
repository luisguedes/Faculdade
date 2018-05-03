namespace ControleProblemasView
{
    partial class FormProblema
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
            this.lblDescricao = new System.Windows.Forms.Label();
            this.txtDescricao = new System.Windows.Forms.TextBox();
            this.txtData = new System.Windows.Forms.TextBox();
            this.lblData = new System.Windows.Forms.Label();
            this.cboTipo = new System.Windows.Forms.ComboBox();
            this.lblTipo = new System.Windows.Forms.Label();
            this.lblNivel = new System.Windows.Forms.Label();
            this.cboNivel = new System.Windows.Forms.ComboBox();
            this.btnSalvar = new System.Windows.Forms.Button();
            this.dgProblema = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgProblema)).BeginInit();
            this.SuspendLayout();
            // 
            // lblDescricao
            // 
            this.lblDescricao.AutoSize = true;
            this.lblDescricao.Location = new System.Drawing.Point(12, 9);
            this.lblDescricao.Name = "lblDescricao";
            this.lblDescricao.Size = new System.Drawing.Size(55, 13);
            this.lblDescricao.TabIndex = 1;
            this.lblDescricao.Text = "Descricao";
            // 
            // txtDescricao
            // 
            this.txtDescricao.Location = new System.Drawing.Point(15, 36);
            this.txtDescricao.Name = "txtDescricao";
            this.txtDescricao.Size = new System.Drawing.Size(155, 20);
            this.txtDescricao.TabIndex = 2;
            // 
            // txtData
            // 
            this.txtData.Location = new System.Drawing.Point(15, 124);
            this.txtData.Name = "txtData";
            this.txtData.Size = new System.Drawing.Size(155, 20);
            this.txtData.TabIndex = 4;
            // 
            // lblData
            // 
            this.lblData.AutoSize = true;
            this.lblData.Location = new System.Drawing.Point(12, 94);
            this.lblData.Name = "lblData";
            this.lblData.Size = new System.Drawing.Size(84, 13);
            this.lblData.TabIndex = 3;
            this.lblData.Text = "Data de Criacao";
            // 
            // cboTipo
            // 
            this.cboTipo.FormattingEnabled = true;
            this.cboTipo.Location = new System.Drawing.Point(210, 35);
            this.cboTipo.Name = "cboTipo";
            this.cboTipo.Size = new System.Drawing.Size(141, 21);
            this.cboTipo.TabIndex = 5;
            // 
            // lblTipo
            // 
            this.lblTipo.AutoSize = true;
            this.lblTipo.Location = new System.Drawing.Point(207, 9);
            this.lblTipo.Name = "lblTipo";
            this.lblTipo.Size = new System.Drawing.Size(28, 13);
            this.lblTipo.TabIndex = 6;
            this.lblTipo.Text = "Tipo";
            // 
            // lblNivel
            // 
            this.lblNivel.AutoSize = true;
            this.lblNivel.Location = new System.Drawing.Point(207, 94);
            this.lblNivel.Name = "lblNivel";
            this.lblNivel.Size = new System.Drawing.Size(87, 13);
            this.lblNivel.TabIndex = 8;
            this.lblNivel.Text = "Nivel Dificuldade";
            this.lblNivel.Click += new System.EventHandler(this.label4_Click);
            // 
            // cboNivel
            // 
            this.cboNivel.FormattingEnabled = true;
            this.cboNivel.Location = new System.Drawing.Point(210, 123);
            this.cboNivel.Name = "cboNivel";
            this.cboNivel.Size = new System.Drawing.Size(141, 21);
            this.cboNivel.TabIndex = 7;
            // 
            // btnSalvar
            // 
            this.btnSalvar.Location = new System.Drawing.Point(153, 150);
            this.btnSalvar.Name = "btnSalvar";
            this.btnSalvar.Size = new System.Drawing.Size(65, 23);
            this.btnSalvar.TabIndex = 9;
            this.btnSalvar.Text = "SALVAR";
            this.btnSalvar.UseVisualStyleBackColor = true;
            this.btnSalvar.Click += new System.EventHandler(this.btnSalvar_Click);
            // 
            // dgProblema
            // 
            this.dgProblema.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgProblema.Location = new System.Drawing.Point(14, 179);
            this.dgProblema.Name = "dgProblema";
            this.dgProblema.Size = new System.Drawing.Size(354, 162);
            this.dgProblema.TabIndex = 10;
            this.dgProblema.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgProblema_CellContentClick);
            // 
            // FormProblema
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(409, 344);
            this.Controls.Add(this.dgProblema);
            this.Controls.Add(this.btnSalvar);
            this.Controls.Add(this.lblNivel);
            this.Controls.Add(this.cboNivel);
            this.Controls.Add(this.lblTipo);
            this.Controls.Add(this.cboTipo);
            this.Controls.Add(this.txtData);
            this.Controls.Add(this.lblData);
            this.Controls.Add(this.txtDescricao);
            this.Controls.Add(this.lblDescricao);
            this.Name = "FormProblema";
            this.Text = "FormProblema";
            this.Load += new System.EventHandler(this.FormProblema_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgProblema)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblDescricao;
        private System.Windows.Forms.TextBox txtDescricao;
        private System.Windows.Forms.TextBox txtData;
        private System.Windows.Forms.Label lblData;
        private System.Windows.Forms.ComboBox cboTipo;
        private System.Windows.Forms.Label lblTipo;
        private System.Windows.Forms.Label lblNivel;
        private System.Windows.Forms.ComboBox cboNivel;
        private System.Windows.Forms.Button btnSalvar;
        private System.Windows.Forms.DataGridView dgProblema;
    }
}