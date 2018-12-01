using System.Web;
using System.Web.Optimization;

namespace WEBUI
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));

            bundles.Add(new ScriptBundle("~/bundles/JQuery").Include(
                    "~/Scripts/jquery-1.10.2.js"
               ));

            bundles.Add(new StyleBundle("~/Content/cssstyle").Include(
                     "~/CSS/Style.css",
                     "~/Scripts/ThirdParty/toaster.css",
                     "~/CSS/font-awesome.css"));

            bundles.Add(new ScriptBundle("~/bundles/AngularJS").Include(
                      "~/Scripts/angular.js",
                      "~/Scripts/App/app.js",
                      "~/Scripts/angular-messages.js",
                      "~/Scripts/angular-animate.js",
                      "~/Scripts/ui-bootstrap.js",
                      "~/Scripts/ThirdParty/toaster.js",
                      "~/Scripts/services/services.js",
                      "~/Scripts/Directive/Loader.js",
                      "~/Scripts/Directive/OnlyNumberDirective.js"
                    ));
           
        }
    }
}
