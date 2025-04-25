
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
    }
}
