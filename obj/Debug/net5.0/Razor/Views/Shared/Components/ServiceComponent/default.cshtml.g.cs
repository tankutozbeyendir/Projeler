#pragma checksum "C:\Users\carli\source\repos\Bosphorus\Views\Shared\Components\ServiceComponent\default.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "40118528a3978e81b159fd9f631c178544c68fd2"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared_Components_ServiceComponent_default), @"mvc.1.0.view", @"/Views/Shared/Components/ServiceComponent/default.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\carli\source\repos\Bosphorus\Views\_ViewImports.cshtml"
using Bosphorus;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\carli\source\repos\Bosphorus\Views\_ViewImports.cshtml"
using Bosphorus.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\carli\source\repos\Bosphorus\Views\_ViewImports.cshtml"
using Bosphorus.Entity;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"40118528a3978e81b159fd9f631c178544c68fd2", @"/Views/Shared/Components/ServiceComponent/default.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"37caf59076bbcfbda1ce01ea236137c96047b45c", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Shared_Components_ServiceComponent_default : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<Services>>
    #nullable disable
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("<section id=\"services\" class=\"services\">\r\n    <div class=\"section-title\">\r\n        <p>our Services</p>\r\n    </div>\r\n    <div class=\"container\" data-aos=\"fade-up\">\r\n        <div class=\"services-container\">\r\n");
#nullable restore
#line 8 "C:\Users\carli\source\repos\Bosphorus\Views\Shared\Components\ServiceComponent\default.cshtml"
             foreach (var x in Model)
            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                <div class=\"services-item\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n                    <div class=\"services-box\">\r\n                        <div class=\"services-icon\"><i class=\"fas fa-water\"></i></div>\r\n                        <h4>");
#nullable restore
#line 13 "C:\Users\carli\source\repos\Bosphorus\Views\Shared\Components\ServiceComponent\default.cshtml"
                       Write(x.ServiceTitle);

#line default
#line hidden
#nullable disable
            WriteLiteral(".</h4>\r\n                        <p>");
#nullable restore
#line 14 "C:\Users\carli\source\repos\Bosphorus\Views\Shared\Components\ServiceComponent\default.cshtml"
                      Write(x.ServiceDescription);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                    </div>\r\n                </div>\r\n");
#nullable restore
#line 17 "C:\Users\carli\source\repos\Bosphorus\Views\Shared\Components\ServiceComponent\default.cshtml"
            }

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n\r\n\r\n        </div>\r\n    </div>\r\n</section>");
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<Services>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591