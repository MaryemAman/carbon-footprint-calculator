using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CarbonFootprintCalculator.Startup))]
namespace CarbonFootprintCalculator
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
