namespace ControleProblemasView
{
    partial class FrmNivel
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
            this.dgNivel = new System.Windows.Forms.DataGridView();
            this.btnSalvar = new System.Windows.Forms.Button();
            this.lblsdfs = new System.Windows.Forms.Label();
            this.txtDescricao = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgNivel)).BeginInit();
            this.SuspendLayout();
            // 
            // dgNivel
            // 
            this.dgNivel.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgNivel.Location = new System.Drawing.Point(26, 126);
            this.dgNivel.Name = "dgNivel";
            this.dgNivel.Size = new System.Drawing.Size(331, 184);
            this.dgNivel.TabIndex = 12;
            this.dgNivel.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgTipo_CellContentClick);
            // 
            // btnSalvar
            // 
            this.btnSalvar.Location = new System.Drawing.Point(154, 84);
            this.btnSalvar.Name = "btnSalvar";
            this.btnSalvar.Size = new System.Drawing.Size(75, 23);
            this.btnSalvar.TabIndex = 11;
            this.btnSalvar.Text = "Salvar";
            this.btnSalvar.UseVisualStyleBackColor = true;
            this.btnSalvar.Click += new System.EventHandler(this.btnSalvar_Click);
            // 
            // lblsdfs
            // 
            this.lblsdfs.AutoSize = true;
            this.lblsdfs.Location = new System.Drawing.Point(71, 46);
            this.lblsdfs.Name = "lblsdfs";
            this.lblsdfs.Size = new System.Drawing.Size(55, 13);
            this.lblsdfs.TabIndex = 10;
            this.lblsdfs.Text = "Descrição";
            // 
            // txtDescricao
            // 
            this.txtDescricao.Location = new System.Drawing.Point(132, 43);
            this.txtDescricao.Name = "txtDescricao";
            this.txtDescricao.Size = new System.Drawing.Size(180, 20);
            this.txtDescricao.TabIndex = 8;
            // 
            // FrmNivel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(383, 323);
            this.Controls.Add(this.dgNivel);
            this.Controls.Add(this.btnSalvar);
            this.Controls.Add(this.lblsdfs);
            this.Controls.Add(this.txtDescricao);
            this.Name = "FrmNivel";
            this.Text = "FrmNivel";
            this.Load += new System.EventHandler(this.FrmNivel_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgNivel)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgNivel;
        private System.Windows.Forms.Button btnSalvar;
        private System.Windows.Forms.Label lblsdfs;
        private System.Windows.Forms.TextBox txtDescricao;
    }
}