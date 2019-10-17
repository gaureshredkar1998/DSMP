using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DSMP.Startup))]
namespace DSMP
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
