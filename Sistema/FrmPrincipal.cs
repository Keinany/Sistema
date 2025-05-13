
namespace Sistema
{
    public partial class FrmPrincipal : Form
    {
        public FrmPrincipal()
        {
            //Criar uma thread para rodar o form splash
            Thread t = new Thread(new ThreadStart(StartForm));
            t.Start();
            Thread.Sleep(5000);
            t.Interrupt();
            CloseForm();
            InitializeComponent();
        }
        public void StartForm()
        {
            Application.Run(new FrmSplashScreen());
        }
        public void CloseForm()
        {
            Application.ExitThread();
            Application.Exit();
        }

        private void clientesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmClientes clientes = new FrmClientes();
            clientes.MdiParent = this;
            clientes.Show();
        }

        private void empresasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmEmpresas empresas = new FrmEmpresas();
            empresas.MdiParent = this;
            empresas.Show();
        }

        private void sairToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmProdutos produtos = new FrmProdutos();
            produtos.MdiParent = this; 
            produtos.Show();
        }
    }
}
